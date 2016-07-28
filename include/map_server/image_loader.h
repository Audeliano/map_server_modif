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
#ifndef MAP_SERVER_MAP_SERVER_H
#define MAP_SERVER_MAP_SERVER_H

/*
 * Author: Brian Gerkey
 */

//CRIAR ALGUMAS VARIÁVEIS

#include "nav_msgs/GetMap.h"

namespace map_server
{



/** Read the image from file and fill out the resp object, for later 
 * use when our services are requested. 
 *
 * @param resp The map wil be written into here
 * @param fname The image file to read from
 * @param res The resolution of the map (gets stored in resp)
 * @param negate If true, then whiter pixels are occupied, and blacker
 *               pixels are free
 * @param occ_th Threshold above which pixels are occupied
 * @param free_th Threshold below which pixels are free
 * @param origin Triple specifying 2-D pose of lower-left corner of image
 * @param trinary If true, only outputs Occupied/Free/Unknown
 * @throws std::runtime_error If the image file can't be loaded
 * */


void loadMapFromFile(nav_msgs::GetMap::Response* resp,
                     const char* fname, double res, bool negate,
                     double occ_th, double free_th, double* origin,
                     bool trinary=true);

int landmarks[10000][2];
int matriz_aux[10000][2];
int num_landmarks;
int num_free;
int max_x = -1;
int max_y = -1;
int min_x = 10000;
int min_y = 10000;
int min_xy = 10000;
int max_xy = -1;
int landmarks_10000x_y[10000];
int free_10000x_y[100000];


}

#endif
