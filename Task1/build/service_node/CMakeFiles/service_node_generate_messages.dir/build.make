# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ayaali/Task1/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ayaali/Task1/build

# Utility rule file for service_node_generate_messages.

# Include the progress variables for this target.
include service_node/CMakeFiles/service_node_generate_messages.dir/progress.make

service_node_generate_messages: service_node/CMakeFiles/service_node_generate_messages.dir/build.make

.PHONY : service_node_generate_messages

# Rule to build all files generated by this target.
service_node/CMakeFiles/service_node_generate_messages.dir/build: service_node_generate_messages

.PHONY : service_node/CMakeFiles/service_node_generate_messages.dir/build

service_node/CMakeFiles/service_node_generate_messages.dir/clean:
	cd /home/ayaali/Task1/build/service_node && $(CMAKE_COMMAND) -P CMakeFiles/service_node_generate_messages.dir/cmake_clean.cmake
.PHONY : service_node/CMakeFiles/service_node_generate_messages.dir/clean

service_node/CMakeFiles/service_node_generate_messages.dir/depend:
	cd /home/ayaali/Task1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ayaali/Task1/src /home/ayaali/Task1/src/service_node /home/ayaali/Task1/build /home/ayaali/Task1/build/service_node /home/ayaali/Task1/build/service_node/CMakeFiles/service_node_generate_messages.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : service_node/CMakeFiles/service_node_generate_messages.dir/depend

