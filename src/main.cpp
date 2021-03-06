/*
 * Copyright (c) 2008, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of the Willow Garage, Inc. nor the names of its
 *       contributors may be used to endorse or promote products derived from
 *       this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

/* Author: Brian Gerkey */

//FAZ LEITURA DOS VETORES DE LANDMARKS E FREE, CARREGA ESTES DADOS NAS PILHAS E
//PUBLICA NOS TÓPICOS "occ_coordxy_pub_" E "free_coordxy_pub_"

#define USAGE "\nUSAGE: map_server <map.yaml>\n" \
              "  map.yaml: map description file\n" \
              "DEPRECATED USAGE: map_server <map> <resolution>\n" \
              "  map: image file to load\n"\
              "  resolution: map resolution [meters/pixel]"

#include <stdio.h>
#include <stdlib.h>
#include <libgen.h>
#include <fstream>

#include "ros/ros.h"
#include "ros/console.h"
#include "map_server/image_loader.h"
#include "nav_msgs/MapMetaData.h"
#include "yaml-cpp/yaml.h"

#include "std_msgs/MultiArrayLayout.h"
#include "std_msgs/MultiArrayDimension.h"
#include "std_msgs/Int32MultiArray.h"

#ifdef HAVE_NEW_YAMLCPP
// The >> operator disappeared in yaml-cpp 0.5, so this function is
// added to provide support for code written under the yaml-cpp 0.3 API.
template<typename T>
void operator >> (const YAML::Node& node, T& i)
{
  i = node.as<T>();
}
#endif

class MapServer
{
  public:

	int landmarks_[10000][2];
	int index_;
	int index_free_;
	int landmarks_xy_[10000];
	int free_xy_[100000];
    /** Trivial constructor */
    MapServer(const std::string& fname, double res)
    {
      std::string mapfname = "";   
      double origin[3];
      int negate;
      double occ_th, free_th;
      bool trinary = true;
      std::string frame_id;
      ros::NodeHandle private_nh("~");
      private_nh.param("frame_id", frame_id, std::string("map"));
      deprecated = (res != 0);
      if (!deprecated) {
        //mapfname = fname + ".pgm";
        //std::ifstream fin((fname + ".yaml").c_str());
        std::ifstream fin(fname.c_str());
        if (fin.fail()) {
          ROS_ERROR("Map_server could not open %s.", fname.c_str());
          exit(-1);
        }
#ifdef HAVE_NEW_YAMLCPP
        // The document loading process changed in yaml-cpp 0.5.
        YAML::Node doc = YAML::Load(fin);
#else
        YAML::Parser parser(fin);
        YAML::Node doc;
        parser.GetNextDocument(doc);
#endif
        try { 
          doc["resolution"] >> res; 
        } catch (YAML::InvalidScalar) { 
          ROS_ERROR("The map does not contain a resolution tag or it is invalid.");
          exit(-1);
        }
        try { 
          doc["negate"] >> negate; 
        } catch (YAML::InvalidScalar) { 
          ROS_ERROR("The map does not contain a negate tag or it is invalid.");
          exit(-1);
        }
        try { 
          doc["occupied_thresh"] >> occ_th; 
        } catch (YAML::InvalidScalar) { 
          ROS_ERROR("The map does not contain an occupied_thresh tag or it is invalid.");
          exit(-1);
        }
        try { 
          doc["free_thresh"] >> free_th; 
        } catch (YAML::InvalidScalar) { 
          ROS_ERROR("The map does not contain a free_thresh tag or it is invalid.");
          exit(-1);MapServer ms(fname, res);
        }
        try { 
          doc["trinary"] >> trinary; 
        } catch (YAML::Exception) { 
          ROS_DEBUG("The map does not contain a trinary tag or it is invalid... assuming true");
          trinary = true;
        }
        try { 
          doc["origin"][0] >> origin[0]; 
          doc["origin"][1] >> origin[1]; 
          doc["origin"][2] >> origin[2]; 
        } catch (YAML::InvalidScalar) { 
          ROS_ERROR("The map does not contain an origin tag or it is invalid.");
          exit(-1);
        }
        try { 
          doc["image"] >> mapfname; 
          // TODO: make this path-handling more robust
          if(mapfname.size() == 0)
          {
            ROS_ERROR("The image tag cannot be an empty string.");
            exit(-1);
          }
          if(mapfname[0] != '/')
          {
            // dirname can modify what you pass it
            char* fname_copy = strdup(fname.c_str());
            mapfname = std::string(dirname(fname_copy)) + '/' + mapfname;
            free(fname_copy);
          }
        } catch (YAML::InvalidScalar) { 
          ROS_ERROR("The map does not contain an image tag or it is invalid.");
          exit(-1);
        }
      } else {
        private_nh.param("negate", negate, 0);
        private_nh.param("occupied_thresh", occ_th, 0.65);
        private_nh.param("free_thresh", free_th, 0.196);
        mapfname = fname;
        origin[0] = origin[1] = origin[2] = 0.0;
      }

      ROS_INFO("Loading map from image \"%s\"", mapfname.c_str());
      map_server::loadMapFromFile(&map_resp_,mapfname.c_str(),res,negate,occ_th,free_th, origin, trinary);
      map_resp_.map.info.map_load_time = ros::Time::now();
      map_resp_.map.header.frame_id = frame_id;
      map_resp_.map.header.stamp = ros::Time::now();
      ROS_INFO("Read a %d X %d map @ %.3lf m/cell",
               map_resp_.map.info.width,
               map_resp_.map.info.height,
               map_resp_.map.info.resolution);
      meta_data_message_ = map_resp_.map.info;

      //carregando a matriz de landmarks[x,y].
      index_ = 0;
      while(map_server::landmarks_10000x_y[index_] != -100)
      {
/*    		  landmarks_[index_][0] = map_server::matriz_aux[index_][0];
    		  landmarks_[index_][1] = map_server::matriz_aux[index_][1];
    		  std::cout << "[[" << landmarks_[index_][0] << ", " << landmarks_[index_][1] << "]] ";
*/
    		  landmarks_xy_[index_] = map_server::landmarks_10000x_y[index_];
    		  //std::cout << " (" << landmarks_xy_[index_] << ")" << std::endl;

    		  index_++;
      }

      index_free_ = 0;
      while(map_server::free_10000x_y[index_free_] != -200)
      {
    		  free_xy_[index_free_] = map_server::free_10000x_y[index_free_];
    		  //std::cout << " (" << free_xy_[index_free_] << ")  " ;//<< std::endl;

    		  index_free_++;
      }

      std::cout << std::endl;
      std::cout << "num_landmarks: " << map_server::num_landmarks<< std::endl;
      std::cout << "num_free: " << map_server::num_free << std::endl;
      //std::cout << "num_landmarks (index): " << index_ << std::endl;
      //std::cout << "max: " << map_server::max_x << "; " << map_server::max_y << std::endl;
      //std::cout << "min: " << map_server::min_x << "; " << map_server::min_y << std::endl;

      //std::cout << "[[" << landmarks_[0][0] << ", " << landmarks_[map_server::num_landmarks - 1][0] << "]]" << std::endl;



      //min_xy_pub_ = n.advertise<std_msgs::Int32MultiArray>("min_xy", 4000, true);
      //max_xy_pub_ = n.advertise<std_msgs::Int32MultiArray>("max_xy", 4000, true);
      occ_coordxy_pub_ = n.advertise<std_msgs::Int32MultiArray>("occ_coordxy", 10000, true);
      free_coordxy_pub_ = n.advertise<std_msgs::Int32MultiArray>("free_coordxy", 10000, true);

      //std_msgs::Int32MultiArray array_min;
      //std_msgs::Int32MultiArray array_max;
      std_msgs::Int32MultiArray array_xy;
      std_msgs::Int32MultiArray free_array;

      //array_min.data.clear();
      //array_max.data.clear();
      array_xy.data.clear();
      free_array.data.clear();

      //os dois primeiros valores dos arrays são os valores mínimos e máximos,respectivamente, de x e y.
      //array_min.data.push_back(map_server::min_x);
      //array_min.data.push_back(map_server::min_y);
      //array_max.data.push_back(map_server::max_x);
      //array_max.data.push_back(map_server::max_y);

      //carregando o array de landmarks
      for(int p = 0; p < index_; p++){
    	  //array_x.data.push_back(landmarks_[p][0]);
    	  //array_y.data.push_back(landmarks_[p][1]);
    	  array_xy.data.push_back(landmarks_xy_[p]);
    	  //std::cout<<" " << array_x.data[p];
    	  //std::cout<<"for";

      }

      for(int f = 0; f < index_free_; f++){
    	  //array_x.data.push_back(landmarks_[p][0]);
    	  //array_y.data.push_back(landmarks_[p][1]);
    	  free_array.data.push_back(free_xy_[f]);
    	  //std::cout<<" " << array_x.data[p];
    	  //std::cout<<"for";
      }

      //min_xy_pub_.publish(array_min);
      //max_xy_pub_.publish(array_max);
      occ_coordxy_pub_.publish(array_xy);
      free_coordxy_pub_.publish(free_array);

      std::cout << std::endl;
      ROS_INFO("I published coordx and coordy!");



      service = n.advertiseService("static_map", &MapServer::mapCallback, this);
      //pub = n.advertise<nav_msgs::MapMetaData>("map_metadata", 1,

      // Latched publisher for metadata
      metadata_pub= n.advertise<nav_msgs::MapMetaData>("map_metadata", 1, true);
      metadata_pub.publish( meta_data_message_ );
      
      // Latched publisher for data
      map_pub = n.advertise<nav_msgs::OccupancyGrid>("map", 1, true);
      map_pub.publish( map_resp_.map );
    }

  private:
    ros::NodeHandle n;
    ros::Publisher map_pub;
    ros::Publisher metadata_pub;
    //ros::Publisher min_xy_pub_;
    //ros::Publisher max_xy_pub_;
    ros::Publisher occ_coordxy_pub_;
    ros::Publisher free_coordxy_pub_;
    ros::ServiceServer service;
    bool deprecated;

    /** Callback invoked when someone requests our service */
    bool mapCallback(nav_msgs::GetMap::Request  &req,
                     nav_msgs::GetMap::Response &res )
    {
      // request is empty; we ignore it

      // = operator is overloaded to make deep copy (tricky!)
      res = map_resp_;
      ROS_INFO("Sending map");

      return true;
    }

    /** The map data is cached here, to be sent out to service callers
     */
    nav_msgs::MapMetaData meta_data_message_;
    nav_msgs::GetMap::Response map_resp_;

    /*
    void metadataSubscriptionCallback(const ros::SingleSubscriberPublisher& pub)
    {
      pub.publish( meta_data_message_ );
    }
    */

};

int main(int argc, char **argv)
{
  ros::init(argc, argv, "map_server", ros::init_options::AnonymousName);
  if(argc != 3 && argc != 2)
  {
    ROS_ERROR("%s", USAGE);
    exit(-1);
  }
  if (argc != 2) {
    ROS_WARN("Using deprecated map server interface. Please switch to new interface.");
  }
  std::string fname(argv[1]);
  double res = (argc == 2) ? 0.0 : atof(argv[2]);

  try
  {
		MapServer ms(fname, res);
		std::cout<<"\nDepois de criar o objeto do map server"<<std::endl;
		ros::spin();
		std::cout<<"Saiu do ros::spin"<<std::endl;

  }
  catch(std::runtime_error& e)
  {
    ROS_ERROR("map_server exception: %s", e.what());
    return -1;
  }
  return 0;
}

