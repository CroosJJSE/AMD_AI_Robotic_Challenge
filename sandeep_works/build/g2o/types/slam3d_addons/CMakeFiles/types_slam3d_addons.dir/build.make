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
include g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/compiler_depend.make

# Include the progress variables for this target.
include g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/progress.make

# Include the compile flags for this target's objects.
include g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/flags.make

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/flags.make
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.o: ../g2o/types/slam3d_addons/vertex_se3_euler.cpp
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.o -MF CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.o.d -o CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/vertex_se3_euler.cpp

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/vertex_se3_euler.cpp > CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.i

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/vertex_se3_euler.cpp -o CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.s

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/flags.make
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.o: ../g2o/types/slam3d_addons/edge_se3_euler.cpp
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.o -MF CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.o.d -o CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_se3_euler.cpp

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_se3_euler.cpp > CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.i

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_se3_euler.cpp -o CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.s

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/flags.make
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.o: ../g2o/types/slam3d_addons/vertex_plane.cpp
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.o -MF CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.o.d -o CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/vertex_plane.cpp

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/vertex_plane.cpp > CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.i

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/vertex_plane.cpp -o CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.s

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/flags.make
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.o: ../g2o/types/slam3d_addons/edge_se3_plane_calib.cpp
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.o -MF CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.o.d -o CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_se3_plane_calib.cpp

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_se3_plane_calib.cpp > CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.i

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_se3_plane_calib.cpp -o CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.s

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/line3d.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/flags.make
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/line3d.cpp.o: ../g2o/types/slam3d_addons/line3d.cpp
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/line3d.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/line3d.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/line3d.cpp.o -MF CMakeFiles/types_slam3d_addons.dir/line3d.cpp.o.d -o CMakeFiles/types_slam3d_addons.dir/line3d.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/line3d.cpp

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/line3d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/types_slam3d_addons.dir/line3d.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/line3d.cpp > CMakeFiles/types_slam3d_addons.dir/line3d.cpp.i

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/line3d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/types_slam3d_addons.dir/line3d.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/line3d.cpp -o CMakeFiles/types_slam3d_addons.dir/line3d.cpp.s

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/flags.make
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.o: ../g2o/types/slam3d_addons/vertex_line3d.cpp
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.o -MF CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.o.d -o CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/vertex_line3d.cpp

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/vertex_line3d.cpp > CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.i

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/vertex_line3d.cpp -o CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.s

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/flags.make
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.o: ../g2o/types/slam3d_addons/edge_se3_line.cpp
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.o -MF CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.o.d -o CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_se3_line.cpp

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_se3_line.cpp > CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.i

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_se3_line.cpp -o CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.s

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/flags.make
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.o: ../g2o/types/slam3d_addons/edge_plane.cpp
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.o -MF CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.o.d -o CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_plane.cpp

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_plane.cpp > CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.i

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_plane.cpp -o CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.s

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/flags.make
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.o: ../g2o/types/slam3d_addons/edge_se3_calib.cpp
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.o -MF CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.o.d -o CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_se3_calib.cpp

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_se3_calib.cpp > CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.i

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/edge_se3_calib.cpp -o CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.s

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/flags.make
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.o: ../g2o/types/slam3d_addons/types_slam3d_addons.cpp
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.o: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.o -MF CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.o.d -o CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/types_slam3d_addons.cpp

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/types_slam3d_addons.cpp > CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.i

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons/types_slam3d_addons.cpp -o CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.s

# Object files for target types_slam3d_addons
types_slam3d_addons_OBJECTS = \
"CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.o" \
"CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.o" \
"CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.o" \
"CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.o" \
"CMakeFiles/types_slam3d_addons.dir/line3d.cpp.o" \
"CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.o" \
"CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.o" \
"CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.o" \
"CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.o" \
"CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.o"

# External object files for target types_slam3d_addons
types_slam3d_addons_EXTERNAL_OBJECTS =

lib/libg2o_types_slam3d_addons.so.0.1.0: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_se3_euler.cpp.o
lib/libg2o_types_slam3d_addons.so.0.1.0: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_euler.cpp.o
lib/libg2o_types_slam3d_addons.so.0.1.0: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_plane.cpp.o
lib/libg2o_types_slam3d_addons.so.0.1.0: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_plane_calib.cpp.o
lib/libg2o_types_slam3d_addons.so.0.1.0: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/line3d.cpp.o
lib/libg2o_types_slam3d_addons.so.0.1.0: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/vertex_line3d.cpp.o
lib/libg2o_types_slam3d_addons.so.0.1.0: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_line.cpp.o
lib/libg2o_types_slam3d_addons.so.0.1.0: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_plane.cpp.o
lib/libg2o_types_slam3d_addons.so.0.1.0: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/edge_se3_calib.cpp.o
lib/libg2o_types_slam3d_addons.so.0.1.0: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/types_slam3d_addons.cpp.o
lib/libg2o_types_slam3d_addons.so.0.1.0: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/build.make
lib/libg2o_types_slam3d_addons.so.0.1.0: lib/libg2o_types_slam3d.so.0.1.0
lib/libg2o_types_slam3d_addons.so.0.1.0: lib/libg2o_core.so.0.1.0
lib/libg2o_types_slam3d_addons.so.0.1.0: lib/libg2o_stuff.so.0.1.0
lib/libg2o_types_slam3d_addons.so.0.1.0: g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX shared library ../../../lib/libg2o_types_slam3d_addons.so"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/types_slam3d_addons.dir/link.txt --verbose=$(VERBOSE)
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && $(CMAKE_COMMAND) -E cmake_symlink_library ../../../lib/libg2o_types_slam3d_addons.so.0.1.0 ../../../lib/libg2o_types_slam3d_addons.so.0.1 ../../../lib/libg2o_types_slam3d_addons.so

lib/libg2o_types_slam3d_addons.so.0.1: lib/libg2o_types_slam3d_addons.so.0.1.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libg2o_types_slam3d_addons.so.0.1

lib/libg2o_types_slam3d_addons.so: lib/libg2o_types_slam3d_addons.so.0.1.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libg2o_types_slam3d_addons.so

# Rule to build all files generated by this target.
g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/build: lib/libg2o_types_slam3d_addons.so
.PHONY : g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/build

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/clean:
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons && $(CMAKE_COMMAND) -P CMakeFiles/types_slam3d_addons.dir/cmake_clean.cmake
.PHONY : g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/clean

g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/depend:
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/USER/Desktop/g2o-master/g2o-master /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/slam3d_addons /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : g2o/types/slam3d_addons/CMakeFiles/types_slam3d_addons.dir/depend
