# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona

# Include any dependencies generated for this target.
include CMakeFiles/ClienteB.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ClienteB.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ClienteB.dir/flags.make

CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o: CMakeFiles/ClienteB.dir/flags.make
CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o: ClienteBuscaminas.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o"
	/usr/local/opt/gcc-5.3.0-32/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o -c /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/ClienteBuscaminas.cpp

CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.i"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/ClienteBuscaminas.cpp > CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.i

CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.s"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/ClienteBuscaminas.cpp -o CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.s

CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o.requires:

.PHONY : CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o.requires

CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o.provides: CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClienteB.dir/build.make CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o.provides.build
.PHONY : CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o.provides

CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o.provides.build: CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o


CMakeFiles/ClienteB.dir/buscaminas.cpp.o: CMakeFiles/ClienteB.dir/flags.make
CMakeFiles/ClienteB.dir/buscaminas.cpp.o: buscaminas.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ClienteB.dir/buscaminas.cpp.o"
	/usr/local/opt/gcc-5.3.0-32/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ClienteB.dir/buscaminas.cpp.o -c /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/buscaminas.cpp

CMakeFiles/ClienteB.dir/buscaminas.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ClienteB.dir/buscaminas.cpp.i"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/buscaminas.cpp > CMakeFiles/ClienteB.dir/buscaminas.cpp.i

CMakeFiles/ClienteB.dir/buscaminas.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ClienteB.dir/buscaminas.cpp.s"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/buscaminas.cpp -o CMakeFiles/ClienteB.dir/buscaminas.cpp.s

CMakeFiles/ClienteB.dir/buscaminas.cpp.o.requires:

.PHONY : CMakeFiles/ClienteB.dir/buscaminas.cpp.o.requires

CMakeFiles/ClienteB.dir/buscaminas.cpp.o.provides: CMakeFiles/ClienteB.dir/buscaminas.cpp.o.requires
	$(MAKE) -f CMakeFiles/ClienteB.dir/build.make CMakeFiles/ClienteB.dir/buscaminas.cpp.o.provides.build
.PHONY : CMakeFiles/ClienteB.dir/buscaminas.cpp.o.provides

CMakeFiles/ClienteB.dir/buscaminas.cpp.o.provides.build: CMakeFiles/ClienteB.dir/buscaminas.cpp.o


# Object files for target ClienteB
ClienteB_OBJECTS = \
"CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o" \
"CMakeFiles/ClienteB.dir/buscaminas.cpp.o"

# External object files for target ClienteB
ClienteB_EXTERNAL_OBJECTS =

ClienteB: CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o
ClienteB: CMakeFiles/ClienteB.dir/buscaminas.cpp.o
ClienteB: CMakeFiles/ClienteB.dir/build.make
ClienteB: CMakeFiles/ClienteB.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ClienteB"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ClienteB.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ClienteB.dir/build: ClienteB

.PHONY : CMakeFiles/ClienteB.dir/build

CMakeFiles/ClienteB.dir/requires: CMakeFiles/ClienteB.dir/ClienteBuscaminas.cpp.o.requires
CMakeFiles/ClienteB.dir/requires: CMakeFiles/ClienteB.dir/buscaminas.cpp.o.requires

.PHONY : CMakeFiles/ClienteB.dir/requires

CMakeFiles/ClienteB.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ClienteB.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ClienteB.dir/clean

CMakeFiles/ClienteB.dir/depend:
	cd /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/CMakeFiles/ClienteB.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ClienteB.dir/depend

