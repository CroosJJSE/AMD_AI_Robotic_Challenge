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
include g2o/stuff/CMakeFiles/stuff.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include g2o/stuff/CMakeFiles/stuff.dir/compiler_depend.make

# Include the progress variables for this target.
include g2o/stuff/CMakeFiles/stuff.dir/progress.make

# Include the compile flags for this target's objects.
include g2o/stuff/CMakeFiles/stuff.dir/flags.make

g2o/stuff/CMakeFiles/stuff.dir/timeutil.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/flags.make
g2o/stuff/CMakeFiles/stuff.dir/timeutil.cpp.o: ../g2o/stuff/timeutil.cpp
g2o/stuff/CMakeFiles/stuff.dir/timeutil.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object g2o/stuff/CMakeFiles/stuff.dir/timeutil.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/stuff/CMakeFiles/stuff.dir/timeutil.cpp.o -MF CMakeFiles/stuff.dir/timeutil.cpp.o.d -o CMakeFiles/stuff.dir/timeutil.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/timeutil.cpp

g2o/stuff/CMakeFiles/stuff.dir/timeutil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stuff.dir/timeutil.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/timeutil.cpp > CMakeFiles/stuff.dir/timeutil.cpp.i

g2o/stuff/CMakeFiles/stuff.dir/timeutil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stuff.dir/timeutil.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/timeutil.cpp -o CMakeFiles/stuff.dir/timeutil.cpp.s

g2o/stuff/CMakeFiles/stuff.dir/command_args.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/flags.make
g2o/stuff/CMakeFiles/stuff.dir/command_args.cpp.o: ../g2o/stuff/command_args.cpp
g2o/stuff/CMakeFiles/stuff.dir/command_args.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object g2o/stuff/CMakeFiles/stuff.dir/command_args.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/stuff/CMakeFiles/stuff.dir/command_args.cpp.o -MF CMakeFiles/stuff.dir/command_args.cpp.o.d -o CMakeFiles/stuff.dir/command_args.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/command_args.cpp

g2o/stuff/CMakeFiles/stuff.dir/command_args.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stuff.dir/command_args.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/command_args.cpp > CMakeFiles/stuff.dir/command_args.cpp.i

g2o/stuff/CMakeFiles/stuff.dir/command_args.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stuff.dir/command_args.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/command_args.cpp -o CMakeFiles/stuff.dir/command_args.cpp.s

g2o/stuff/CMakeFiles/stuff.dir/sparse_helper.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/flags.make
g2o/stuff/CMakeFiles/stuff.dir/sparse_helper.cpp.o: ../g2o/stuff/sparse_helper.cpp
g2o/stuff/CMakeFiles/stuff.dir/sparse_helper.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object g2o/stuff/CMakeFiles/stuff.dir/sparse_helper.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/stuff/CMakeFiles/stuff.dir/sparse_helper.cpp.o -MF CMakeFiles/stuff.dir/sparse_helper.cpp.o.d -o CMakeFiles/stuff.dir/sparse_helper.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/sparse_helper.cpp

g2o/stuff/CMakeFiles/stuff.dir/sparse_helper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stuff.dir/sparse_helper.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/sparse_helper.cpp > CMakeFiles/stuff.dir/sparse_helper.cpp.i

g2o/stuff/CMakeFiles/stuff.dir/sparse_helper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stuff.dir/sparse_helper.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/sparse_helper.cpp -o CMakeFiles/stuff.dir/sparse_helper.cpp.s

g2o/stuff/CMakeFiles/stuff.dir/filesys_tools.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/flags.make
g2o/stuff/CMakeFiles/stuff.dir/filesys_tools.cpp.o: ../g2o/stuff/filesys_tools.cpp
g2o/stuff/CMakeFiles/stuff.dir/filesys_tools.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object g2o/stuff/CMakeFiles/stuff.dir/filesys_tools.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/stuff/CMakeFiles/stuff.dir/filesys_tools.cpp.o -MF CMakeFiles/stuff.dir/filesys_tools.cpp.o.d -o CMakeFiles/stuff.dir/filesys_tools.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/filesys_tools.cpp

g2o/stuff/CMakeFiles/stuff.dir/filesys_tools.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stuff.dir/filesys_tools.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/filesys_tools.cpp > CMakeFiles/stuff.dir/filesys_tools.cpp.i

g2o/stuff/CMakeFiles/stuff.dir/filesys_tools.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stuff.dir/filesys_tools.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/filesys_tools.cpp -o CMakeFiles/stuff.dir/filesys_tools.cpp.s

g2o/stuff/CMakeFiles/stuff.dir/string_tools.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/flags.make
g2o/stuff/CMakeFiles/stuff.dir/string_tools.cpp.o: ../g2o/stuff/string_tools.cpp
g2o/stuff/CMakeFiles/stuff.dir/string_tools.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object g2o/stuff/CMakeFiles/stuff.dir/string_tools.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/stuff/CMakeFiles/stuff.dir/string_tools.cpp.o -MF CMakeFiles/stuff.dir/string_tools.cpp.o.d -o CMakeFiles/stuff.dir/string_tools.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/string_tools.cpp

g2o/stuff/CMakeFiles/stuff.dir/string_tools.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stuff.dir/string_tools.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/string_tools.cpp > CMakeFiles/stuff.dir/string_tools.cpp.i

g2o/stuff/CMakeFiles/stuff.dir/string_tools.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stuff.dir/string_tools.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/string_tools.cpp -o CMakeFiles/stuff.dir/string_tools.cpp.s

g2o/stuff/CMakeFiles/stuff.dir/property.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/flags.make
g2o/stuff/CMakeFiles/stuff.dir/property.cpp.o: ../g2o/stuff/property.cpp
g2o/stuff/CMakeFiles/stuff.dir/property.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object g2o/stuff/CMakeFiles/stuff.dir/property.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/stuff/CMakeFiles/stuff.dir/property.cpp.o -MF CMakeFiles/stuff.dir/property.cpp.o.d -o CMakeFiles/stuff.dir/property.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/property.cpp

g2o/stuff/CMakeFiles/stuff.dir/property.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stuff.dir/property.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/property.cpp > CMakeFiles/stuff.dir/property.cpp.i

g2o/stuff/CMakeFiles/stuff.dir/property.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stuff.dir/property.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/property.cpp -o CMakeFiles/stuff.dir/property.cpp.s

g2o/stuff/CMakeFiles/stuff.dir/sampler.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/flags.make
g2o/stuff/CMakeFiles/stuff.dir/sampler.cpp.o: ../g2o/stuff/sampler.cpp
g2o/stuff/CMakeFiles/stuff.dir/sampler.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object g2o/stuff/CMakeFiles/stuff.dir/sampler.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/stuff/CMakeFiles/stuff.dir/sampler.cpp.o -MF CMakeFiles/stuff.dir/sampler.cpp.o.d -o CMakeFiles/stuff.dir/sampler.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/sampler.cpp

g2o/stuff/CMakeFiles/stuff.dir/sampler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stuff.dir/sampler.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/sampler.cpp > CMakeFiles/stuff.dir/sampler.cpp.i

g2o/stuff/CMakeFiles/stuff.dir/sampler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stuff.dir/sampler.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/sampler.cpp -o CMakeFiles/stuff.dir/sampler.cpp.s

g2o/stuff/CMakeFiles/stuff.dir/tictoc.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/flags.make
g2o/stuff/CMakeFiles/stuff.dir/tictoc.cpp.o: ../g2o/stuff/tictoc.cpp
g2o/stuff/CMakeFiles/stuff.dir/tictoc.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object g2o/stuff/CMakeFiles/stuff.dir/tictoc.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/stuff/CMakeFiles/stuff.dir/tictoc.cpp.o -MF CMakeFiles/stuff.dir/tictoc.cpp.o.d -o CMakeFiles/stuff.dir/tictoc.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/tictoc.cpp

g2o/stuff/CMakeFiles/stuff.dir/tictoc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stuff.dir/tictoc.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/tictoc.cpp > CMakeFiles/stuff.dir/tictoc.cpp.i

g2o/stuff/CMakeFiles/stuff.dir/tictoc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stuff.dir/tictoc.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/tictoc.cpp -o CMakeFiles/stuff.dir/tictoc.cpp.s

g2o/stuff/CMakeFiles/stuff.dir/logger.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/flags.make
g2o/stuff/CMakeFiles/stuff.dir/logger.cpp.o: ../g2o/stuff/logger.cpp
g2o/stuff/CMakeFiles/stuff.dir/logger.cpp.o: g2o/stuff/CMakeFiles/stuff.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object g2o/stuff/CMakeFiles/stuff.dir/logger.cpp.o"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT g2o/stuff/CMakeFiles/stuff.dir/logger.cpp.o -MF CMakeFiles/stuff.dir/logger.cpp.o.d -o CMakeFiles/stuff.dir/logger.cpp.o -c /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/logger.cpp

g2o/stuff/CMakeFiles/stuff.dir/logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stuff.dir/logger.cpp.i"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/logger.cpp > CMakeFiles/stuff.dir/logger.cpp.i

g2o/stuff/CMakeFiles/stuff.dir/logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stuff.dir/logger.cpp.s"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && /usr/bin/aarch64-linux-gnu-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff/logger.cpp -o CMakeFiles/stuff.dir/logger.cpp.s

# Object files for target stuff
stuff_OBJECTS = \
"CMakeFiles/stuff.dir/timeutil.cpp.o" \
"CMakeFiles/stuff.dir/command_args.cpp.o" \
"CMakeFiles/stuff.dir/sparse_helper.cpp.o" \
"CMakeFiles/stuff.dir/filesys_tools.cpp.o" \
"CMakeFiles/stuff.dir/string_tools.cpp.o" \
"CMakeFiles/stuff.dir/property.cpp.o" \
"CMakeFiles/stuff.dir/sampler.cpp.o" \
"CMakeFiles/stuff.dir/tictoc.cpp.o" \
"CMakeFiles/stuff.dir/logger.cpp.o"

# External object files for target stuff
stuff_EXTERNAL_OBJECTS =

lib/libg2o_stuff.so.0.1.0: g2o/stuff/CMakeFiles/stuff.dir/timeutil.cpp.o
lib/libg2o_stuff.so.0.1.0: g2o/stuff/CMakeFiles/stuff.dir/command_args.cpp.o
lib/libg2o_stuff.so.0.1.0: g2o/stuff/CMakeFiles/stuff.dir/sparse_helper.cpp.o
lib/libg2o_stuff.so.0.1.0: g2o/stuff/CMakeFiles/stuff.dir/filesys_tools.cpp.o
lib/libg2o_stuff.so.0.1.0: g2o/stuff/CMakeFiles/stuff.dir/string_tools.cpp.o
lib/libg2o_stuff.so.0.1.0: g2o/stuff/CMakeFiles/stuff.dir/property.cpp.o
lib/libg2o_stuff.so.0.1.0: g2o/stuff/CMakeFiles/stuff.dir/sampler.cpp.o
lib/libg2o_stuff.so.0.1.0: g2o/stuff/CMakeFiles/stuff.dir/tictoc.cpp.o
lib/libg2o_stuff.so.0.1.0: g2o/stuff/CMakeFiles/stuff.dir/logger.cpp.o
lib/libg2o_stuff.so.0.1.0: g2o/stuff/CMakeFiles/stuff.dir/build.make
lib/libg2o_stuff.so.0.1.0: g2o/stuff/CMakeFiles/stuff.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX shared library ../../lib/libg2o_stuff.so"
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stuff.dir/link.txt --verbose=$(VERBOSE)
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libg2o_stuff.so.0.1.0 ../../lib/libg2o_stuff.so.0.1 ../../lib/libg2o_stuff.so

lib/libg2o_stuff.so.0.1: lib/libg2o_stuff.so.0.1.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libg2o_stuff.so.0.1

lib/libg2o_stuff.so: lib/libg2o_stuff.so.0.1.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libg2o_stuff.so

# Rule to build all files generated by this target.
g2o/stuff/CMakeFiles/stuff.dir/build: lib/libg2o_stuff.so
.PHONY : g2o/stuff/CMakeFiles/stuff.dir/build

g2o/stuff/CMakeFiles/stuff.dir/clean:
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff && $(CMAKE_COMMAND) -P CMakeFiles/stuff.dir/cmake_clean.cmake
.PHONY : g2o/stuff/CMakeFiles/stuff.dir/clean

g2o/stuff/CMakeFiles/stuff.dir/depend:
	cd /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/USER/Desktop/g2o-master/g2o-master /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/stuff /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/g2o/stuff/CMakeFiles/stuff.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : g2o/stuff/CMakeFiles/stuff.dir/depend
