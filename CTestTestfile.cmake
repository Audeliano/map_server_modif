# CMake generated Testfile for 
# Source directory: /home/au/catkin_ws/src/map_server
# Build directory: /home/au/catkin_ws/src/map_server
# 
# This file includes the relevent testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(_ctest_map_server_gtest_map_server_utest "/home/au/catkin_ws/src/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/hydro/share/catkin/cmake/test/run_tests.py" "/home/au/catkin_ws/src/test_results/map_server/gtest-map_server_utest.xml" "--return-code" "/home/au/catkin_ws/devel/lib/map_server/map_server_utest --gtest_output=xml:/home/au/catkin_ws/src/test_results/map_server/gtest-map_server_utest.xml")
ADD_TEST(_ctest_map_server_rostest_test_rtest.xml "/home/au/catkin_ws/src/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/hydro/share/catkin/cmake/test/run_tests.py" "/home/au/catkin_ws/src/test_results/map_server/rostest-test_rtest.xml" "--return-code" "/opt/ros/hydro/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/au/catkin_ws/src/map_server --package=map_server --results-filename test_rtest.xml /home/au/catkin_ws/src/map_server/test/rtest.xml ")
