# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/au/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/au/catkin_ws/src

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: install/local
.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: install/strip
.PHONY : install/strip/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test
.PHONY : test/fast

# The main all target
all: cmake_check_build_system
	cd /home/au/catkin_ws/src && $(CMAKE_COMMAND) -E cmake_progress_start /home/au/catkin_ws/src/CMakeFiles /home/au/catkin_ws/src/navigation/map_server/CMakeFiles/progress.marks
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/au/catkin_ws/src/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	cd /home/au/catkin_ws/src && $(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

# Convenience name for target.
navigation/map_server/CMakeFiles/_run_tests_map_server.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/_run_tests_map_server.dir/rule
.PHONY : navigation/map_server/CMakeFiles/_run_tests_map_server.dir/rule

# Convenience name for target.
_run_tests_map_server: navigation/map_server/CMakeFiles/_run_tests_map_server.dir/rule
.PHONY : _run_tests_map_server

# fast build rule for target.
_run_tests_map_server/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/_run_tests_map_server.dir/build.make navigation/map_server/CMakeFiles/_run_tests_map_server.dir/build
.PHONY : _run_tests_map_server/fast

# Convenience name for target.
navigation/map_server/CMakeFiles/_run_tests_map_server_gtest.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/_run_tests_map_server_gtest.dir/rule
.PHONY : navigation/map_server/CMakeFiles/_run_tests_map_server_gtest.dir/rule

# Convenience name for target.
_run_tests_map_server_gtest: navigation/map_server/CMakeFiles/_run_tests_map_server_gtest.dir/rule
.PHONY : _run_tests_map_server_gtest

# fast build rule for target.
_run_tests_map_server_gtest/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/_run_tests_map_server_gtest.dir/build.make navigation/map_server/CMakeFiles/_run_tests_map_server_gtest.dir/build
.PHONY : _run_tests_map_server_gtest/fast

# Convenience name for target.
navigation/map_server/CMakeFiles/_run_tests_map_server_gtest_map_server_utest.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/_run_tests_map_server_gtest_map_server_utest.dir/rule
.PHONY : navigation/map_server/CMakeFiles/_run_tests_map_server_gtest_map_server_utest.dir/rule

# Convenience name for target.
_run_tests_map_server_gtest_map_server_utest: navigation/map_server/CMakeFiles/_run_tests_map_server_gtest_map_server_utest.dir/rule
.PHONY : _run_tests_map_server_gtest_map_server_utest

# fast build rule for target.
_run_tests_map_server_gtest_map_server_utest/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/_run_tests_map_server_gtest_map_server_utest.dir/build.make navigation/map_server/CMakeFiles/_run_tests_map_server_gtest_map_server_utest.dir/build
.PHONY : _run_tests_map_server_gtest_map_server_utest/fast

# Convenience name for target.
navigation/map_server/CMakeFiles/_run_tests_map_server_rostest.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/_run_tests_map_server_rostest.dir/rule
.PHONY : navigation/map_server/CMakeFiles/_run_tests_map_server_rostest.dir/rule

# Convenience name for target.
_run_tests_map_server_rostest: navigation/map_server/CMakeFiles/_run_tests_map_server_rostest.dir/rule
.PHONY : _run_tests_map_server_rostest

# fast build rule for target.
_run_tests_map_server_rostest/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/_run_tests_map_server_rostest.dir/build.make navigation/map_server/CMakeFiles/_run_tests_map_server_rostest.dir/build
.PHONY : _run_tests_map_server_rostest/fast

# Convenience name for target.
navigation/map_server/CMakeFiles/_run_tests_map_server_rostest_test_rtest.xml.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/_run_tests_map_server_rostest_test_rtest.xml.dir/rule
.PHONY : navigation/map_server/CMakeFiles/_run_tests_map_server_rostest_test_rtest.xml.dir/rule

# Convenience name for target.
_run_tests_map_server_rostest_test_rtest.xml: navigation/map_server/CMakeFiles/_run_tests_map_server_rostest_test_rtest.xml.dir/rule
.PHONY : _run_tests_map_server_rostest_test_rtest.xml

# fast build rule for target.
_run_tests_map_server_rostest_test_rtest.xml/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/_run_tests_map_server_rostest_test_rtest.xml.dir/build.make navigation/map_server/CMakeFiles/_run_tests_map_server_rostest_test_rtest.xml.dir/build
.PHONY : _run_tests_map_server_rostest_test_rtest.xml/fast

# Convenience name for target.
navigation/map_server/CMakeFiles/image_loader.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/image_loader.dir/rule
.PHONY : navigation/map_server/CMakeFiles/image_loader.dir/rule

# Convenience name for target.
image_loader: navigation/map_server/CMakeFiles/image_loader.dir/rule
.PHONY : image_loader

# fast build rule for target.
image_loader/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/image_loader.dir/build.make navigation/map_server/CMakeFiles/image_loader.dir/build
.PHONY : image_loader/fast

# Convenience name for target.
navigation/map_server/CMakeFiles/map_server.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/map_server.dir/rule
.PHONY : navigation/map_server/CMakeFiles/map_server.dir/rule

# Convenience name for target.
map_server: navigation/map_server/CMakeFiles/map_server.dir/rule
.PHONY : map_server

# fast build rule for target.
map_server/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server.dir/build.make navigation/map_server/CMakeFiles/map_server.dir/build
.PHONY : map_server/fast

# Convenience name for target.
navigation/map_server/CMakeFiles/map_server-map_saver.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/map_server-map_saver.dir/rule
.PHONY : navigation/map_server/CMakeFiles/map_server-map_saver.dir/rule

# Convenience name for target.
map_server-map_saver: navigation/map_server/CMakeFiles/map_server-map_saver.dir/rule
.PHONY : map_server-map_saver

# fast build rule for target.
map_server-map_saver/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server-map_saver.dir/build.make navigation/map_server/CMakeFiles/map_server-map_saver.dir/build
.PHONY : map_server-map_saver/fast

# Convenience name for target.
navigation/map_server/CMakeFiles/map_server_utest.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/map_server_utest.dir/rule
.PHONY : navigation/map_server/CMakeFiles/map_server_utest.dir/rule

# Convenience name for target.
map_server_utest: navigation/map_server/CMakeFiles/map_server_utest.dir/rule
.PHONY : map_server_utest

# fast build rule for target.
map_server_utest/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server_utest.dir/build.make navigation/map_server/CMakeFiles/map_server_utest.dir/build
.PHONY : map_server_utest/fast

# Convenience name for target.
navigation/map_server/CMakeFiles/rtest.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/rtest.dir/rule
.PHONY : navigation/map_server/CMakeFiles/rtest.dir/rule

# Convenience name for target.
rtest: navigation/map_server/CMakeFiles/rtest.dir/rule
.PHONY : rtest

# fast build rule for target.
rtest/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/rtest.dir/build.make navigation/map_server/CMakeFiles/rtest.dir/build
.PHONY : rtest/fast

# Convenience name for target.
navigation/map_server/CMakeFiles/run_tests_map_server.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/run_tests_map_server.dir/rule
.PHONY : navigation/map_server/CMakeFiles/run_tests_map_server.dir/rule

# Convenience name for target.
run_tests_map_server: navigation/map_server/CMakeFiles/run_tests_map_server.dir/rule
.PHONY : run_tests_map_server

# fast build rule for target.
run_tests_map_server/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/run_tests_map_server.dir/build.make navigation/map_server/CMakeFiles/run_tests_map_server.dir/build
.PHONY : run_tests_map_server/fast

# Convenience name for target.
navigation/map_server/CMakeFiles/run_tests_map_server_gtest.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/run_tests_map_server_gtest.dir/rule
.PHONY : navigation/map_server/CMakeFiles/run_tests_map_server_gtest.dir/rule

# Convenience name for target.
run_tests_map_server_gtest: navigation/map_server/CMakeFiles/run_tests_map_server_gtest.dir/rule
.PHONY : run_tests_map_server_gtest

# fast build rule for target.
run_tests_map_server_gtest/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/run_tests_map_server_gtest.dir/build.make navigation/map_server/CMakeFiles/run_tests_map_server_gtest.dir/build
.PHONY : run_tests_map_server_gtest/fast

# Convenience name for target.
navigation/map_server/CMakeFiles/run_tests_map_server_gtest_map_server_utest.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/run_tests_map_server_gtest_map_server_utest.dir/rule
.PHONY : navigation/map_server/CMakeFiles/run_tests_map_server_gtest_map_server_utest.dir/rule

# Convenience name for target.
run_tests_map_server_gtest_map_server_utest: navigation/map_server/CMakeFiles/run_tests_map_server_gtest_map_server_utest.dir/rule
.PHONY : run_tests_map_server_gtest_map_server_utest

# fast build rule for target.
run_tests_map_server_gtest_map_server_utest/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/run_tests_map_server_gtest_map_server_utest.dir/build.make navigation/map_server/CMakeFiles/run_tests_map_server_gtest_map_server_utest.dir/build
.PHONY : run_tests_map_server_gtest_map_server_utest/fast

# Convenience name for target.
navigation/map_server/CMakeFiles/run_tests_map_server_rostest.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/run_tests_map_server_rostest.dir/rule
.PHONY : navigation/map_server/CMakeFiles/run_tests_map_server_rostest.dir/rule

# Convenience name for target.
run_tests_map_server_rostest: navigation/map_server/CMakeFiles/run_tests_map_server_rostest.dir/rule
.PHONY : run_tests_map_server_rostest

# fast build rule for target.
run_tests_map_server_rostest/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/run_tests_map_server_rostest.dir/build.make navigation/map_server/CMakeFiles/run_tests_map_server_rostest.dir/build
.PHONY : run_tests_map_server_rostest/fast

# Convenience name for target.
navigation/map_server/CMakeFiles/run_tests_map_server_rostest_test_rtest.xml.dir/rule:
	cd /home/au/catkin_ws/src && $(MAKE) -f CMakeFiles/Makefile2 navigation/map_server/CMakeFiles/run_tests_map_server_rostest_test_rtest.xml.dir/rule
.PHONY : navigation/map_server/CMakeFiles/run_tests_map_server_rostest_test_rtest.xml.dir/rule

# Convenience name for target.
run_tests_map_server_rostest_test_rtest.xml: navigation/map_server/CMakeFiles/run_tests_map_server_rostest_test_rtest.xml.dir/rule
.PHONY : run_tests_map_server_rostest_test_rtest.xml

# fast build rule for target.
run_tests_map_server_rostest_test_rtest.xml/fast:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/run_tests_map_server_rostest_test_rtest.xml.dir/build.make navigation/map_server/CMakeFiles/run_tests_map_server_rostest_test_rtest.xml.dir/build
.PHONY : run_tests_map_server_rostest_test_rtest.xml/fast

src/image_loader.o: src/image_loader.cpp.o
.PHONY : src/image_loader.o

# target to build an object file
src/image_loader.cpp.o:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/image_loader.dir/build.make navigation/map_server/CMakeFiles/image_loader.dir/src/image_loader.cpp.o
.PHONY : src/image_loader.cpp.o

src/image_loader.i: src/image_loader.cpp.i
.PHONY : src/image_loader.i

# target to preprocess a source file
src/image_loader.cpp.i:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/image_loader.dir/build.make navigation/map_server/CMakeFiles/image_loader.dir/src/image_loader.cpp.i
.PHONY : src/image_loader.cpp.i

src/image_loader.s: src/image_loader.cpp.s
.PHONY : src/image_loader.s

# target to generate assembly for a file
src/image_loader.cpp.s:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/image_loader.dir/build.make navigation/map_server/CMakeFiles/image_loader.dir/src/image_loader.cpp.s
.PHONY : src/image_loader.cpp.s

src/main.o: src/main.cpp.o
.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server.dir/build.make navigation/map_server/CMakeFiles/map_server.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server.dir/build.make navigation/map_server/CMakeFiles/map_server.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server.dir/build.make navigation/map_server/CMakeFiles/map_server.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

src/map_saver.o: src/map_saver.cpp.o
.PHONY : src/map_saver.o

# target to build an object file
src/map_saver.cpp.o:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server-map_saver.dir/build.make navigation/map_server/CMakeFiles/map_server-map_saver.dir/src/map_saver.cpp.o
.PHONY : src/map_saver.cpp.o

src/map_saver.i: src/map_saver.cpp.i
.PHONY : src/map_saver.i

# target to preprocess a source file
src/map_saver.cpp.i:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server-map_saver.dir/build.make navigation/map_server/CMakeFiles/map_server-map_saver.dir/src/map_saver.cpp.i
.PHONY : src/map_saver.cpp.i

src/map_saver.s: src/map_saver.cpp.s
.PHONY : src/map_saver.s

# target to generate assembly for a file
src/map_saver.cpp.s:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server-map_saver.dir/build.make navigation/map_server/CMakeFiles/map_server-map_saver.dir/src/map_saver.cpp.s
.PHONY : src/map_saver.cpp.s

test/rtest.o: test/rtest.cpp.o
.PHONY : test/rtest.o

# target to build an object file
test/rtest.cpp.o:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/rtest.dir/build.make navigation/map_server/CMakeFiles/rtest.dir/test/rtest.cpp.o
.PHONY : test/rtest.cpp.o

test/rtest.i: test/rtest.cpp.i
.PHONY : test/rtest.i

# target to preprocess a source file
test/rtest.cpp.i:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/rtest.dir/build.make navigation/map_server/CMakeFiles/rtest.dir/test/rtest.cpp.i
.PHONY : test/rtest.cpp.i

test/rtest.s: test/rtest.cpp.s
.PHONY : test/rtest.s

# target to generate assembly for a file
test/rtest.cpp.s:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/rtest.dir/build.make navigation/map_server/CMakeFiles/rtest.dir/test/rtest.cpp.s
.PHONY : test/rtest.cpp.s

test/test_constants.o: test/test_constants.cpp.o
.PHONY : test/test_constants.o

# target to build an object file
test/test_constants.cpp.o:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server_utest.dir/build.make navigation/map_server/CMakeFiles/map_server_utest.dir/test/test_constants.cpp.o
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/rtest.dir/build.make navigation/map_server/CMakeFiles/rtest.dir/test/test_constants.cpp.o
.PHONY : test/test_constants.cpp.o

test/test_constants.i: test/test_constants.cpp.i
.PHONY : test/test_constants.i

# target to preprocess a source file
test/test_constants.cpp.i:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server_utest.dir/build.make navigation/map_server/CMakeFiles/map_server_utest.dir/test/test_constants.cpp.i
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/rtest.dir/build.make navigation/map_server/CMakeFiles/rtest.dir/test/test_constants.cpp.i
.PHONY : test/test_constants.cpp.i

test/test_constants.s: test/test_constants.cpp.s
.PHONY : test/test_constants.s

# target to generate assembly for a file
test/test_constants.cpp.s:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server_utest.dir/build.make navigation/map_server/CMakeFiles/map_server_utest.dir/test/test_constants.cpp.s
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/rtest.dir/build.make navigation/map_server/CMakeFiles/rtest.dir/test/test_constants.cpp.s
.PHONY : test/test_constants.cpp.s

test/utest.o: test/utest.cpp.o
.PHONY : test/utest.o

# target to build an object file
test/utest.cpp.o:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server_utest.dir/build.make navigation/map_server/CMakeFiles/map_server_utest.dir/test/utest.cpp.o
.PHONY : test/utest.cpp.o

test/utest.i: test/utest.cpp.i
.PHONY : test/utest.i

# target to preprocess a source file
test/utest.cpp.i:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server_utest.dir/build.make navigation/map_server/CMakeFiles/map_server_utest.dir/test/utest.cpp.i
.PHONY : test/utest.cpp.i

test/utest.s: test/utest.cpp.s
.PHONY : test/utest.s

# target to generate assembly for a file
test/utest.cpp.s:
	cd /home/au/catkin_ws/src && $(MAKE) -f navigation/map_server/CMakeFiles/map_server_utest.dir/build.make navigation/map_server/CMakeFiles/map_server_utest.dir/test/utest.cpp.s
.PHONY : test/utest.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... _run_tests_map_server"
	@echo "... _run_tests_map_server_gtest"
	@echo "... _run_tests_map_server_gtest_map_server_utest"
	@echo "... _run_tests_map_server_rostest"
	@echo "... _run_tests_map_server_rostest_test_rtest.xml"
	@echo "... edit_cache"
	@echo "... image_loader"
	@echo "... install"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... list_install_components"
	@echo "... map_server"
	@echo "... map_server-map_saver"
	@echo "... map_server_utest"
	@echo "... rebuild_cache"
	@echo "... rtest"
	@echo "... run_tests_map_server"
	@echo "... run_tests_map_server_gtest"
	@echo "... run_tests_map_server_gtest_map_server_utest"
	@echo "... run_tests_map_server_rostest"
	@echo "... run_tests_map_server_rostest_test_rtest.xml"
	@echo "... test"
	@echo "... src/image_loader.o"
	@echo "... src/image_loader.i"
	@echo "... src/image_loader.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/map_saver.o"
	@echo "... src/map_saver.i"
	@echo "... src/map_saver.s"
	@echo "... test/rtest.o"
	@echo "... test/rtest.i"
	@echo "... test/rtest.s"
	@echo "... test/test_constants.o"
	@echo "... test/test_constants.i"
	@echo "... test/test_constants.s"
	@echo "... test/utest.o"
	@echo "... test/utest.i"
	@echo "... test/utest.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	cd /home/au/catkin_ws/src && $(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
