# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/USER/Desktop/g2o-master/g2o-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build

# Include any dependencies generated for this target.
include g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/compiler_depend.make

# Include the progress variables for this target.
include g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/progress.make

# Include the compile flags for this target's objects.
include g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/flags.make

g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.o: g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/flags.make
g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.o: ../g2o/examples/convert_segment_line/convertSegmentLine.cpp
g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.o: g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/examples/convert_segment_line && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.o -MF CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.o.d -o CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/examples/convert_segment_line/convertSegmentLine.cpp

g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/examples/convert_segment_line && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/examples/convert_segment_line/convertSegmentLine.cpp > CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.i

g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/examples/convert_segment_line && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/examples/convert_segment_line/convertSegmentLine.cpp -o CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.s

# Object files for target convertSegmentLine_application
convertSegmentLine_application_OBJECTS = \
"CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.o"

# External object files for target convertSegmentLine_application
convertSegmentLine_application_EXTERNAL_OBJECTS =

bin/convertSegmentLine: g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/convertSegmentLine.cpp.o
bin/convertSegmentLine: g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/build.make
bin/convertSegmentLine: lib/libg2o_types_slam2d_addons.so.0.1.0
bin/convertSegmentLine: lib/libg2o_types_slam3d.so.0.1.0
bin/convertSegmentLine: lib/libg2o_types_slam2d.so.0.1.0
bin/convertSegmentLine: lib/libg2o_core.so.0.1.0
bin/convertSegmentLine: lib/libg2o_stuff.so.0.1.0
bin/convertSegmentLine: g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/convertSegmentLine"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/examples/convert_segment_line && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/convertSegmentLine_application.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/build: bin/convertSegmentLine
.PHONY : g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/build

g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/clean:
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/examples/convert_segment_line && $(CMAKE_COMMAND) -P CMakeFiles/convertSegmentLine_application.dir/cmake_clean.cmake
.PHONY : g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/clean

g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/depend:
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/USER/Desktop/g2o-master/g2o-master /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/examples/convert_segment_line /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/examples/convert_segment_line /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : g2o/examples/convert_segment_line/CMakeFiles/convertSegmentLine_application.dir/depend

