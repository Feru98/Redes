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
include CMakeFiles/ServidorB.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ServidorB.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ServidorB.dir/flags.make

CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o: CMakeFiles/ServidorB.dir/flags.make
CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o: ServidorBuscaminas.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o"
	/usr/local/opt/gcc-5.3.0-32/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o -c /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/ServidorBuscaminas.cpp

CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.i"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/ServidorBuscaminas.cpp > CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.i

CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.s"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/ServidorBuscaminas.cpp -o CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.s

CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o.requires:

.PHONY : CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o.requires

CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o.provides: CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o.requires
	$(MAKE) -f CMakeFiles/ServidorB.dir/build.make CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o.provides.build
.PHONY : CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o.provides

CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o.provides.build: CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o


CMakeFiles/ServidorB.dir/buscaminas.cpp.o: CMakeFiles/ServidorB.dir/flags.make
CMakeFiles/ServidorB.dir/buscaminas.cpp.o: buscaminas.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ServidorB.dir/buscaminas.cpp.o"
	/usr/local/opt/gcc-5.3.0-32/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ServidorB.dir/buscaminas.cpp.o -c /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/buscaminas.cpp

CMakeFiles/ServidorB.dir/buscaminas.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ServidorB.dir/buscaminas.cpp.i"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/buscaminas.cpp > CMakeFiles/ServidorB.dir/buscaminas.cpp.i

CMakeFiles/ServidorB.dir/buscaminas.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ServidorB.dir/buscaminas.cpp.s"
	/usr/local/opt/gcc-5.3.0-32/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/buscaminas.cpp -o CMakeFiles/ServidorB.dir/buscaminas.cpp.s

CMakeFiles/ServidorB.dir/buscaminas.cpp.o.requires:

.PHONY : CMakeFiles/ServidorB.dir/buscaminas.cpp.o.requires

CMakeFiles/ServidorB.dir/buscaminas.cpp.o.provides: CMakeFiles/ServidorB.dir/buscaminas.cpp.o.requires
	$(MAKE) -f CMakeFiles/ServidorB.dir/build.make CMakeFiles/ServidorB.dir/buscaminas.cpp.o.provides.build
.PHONY : CMakeFiles/ServidorB.dir/buscaminas.cpp.o.provides

CMakeFiles/ServidorB.dir/buscaminas.cpp.o.provides.build: CMakeFiles/ServidorB.dir/buscaminas.cpp.o


# Object files for target ServidorB
ServidorB_OBJECTS = \
"CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o" \
"CMakeFiles/ServidorB.dir/buscaminas.cpp.o"

# External object files for target ServidorB
ServidorB_EXTERNAL_OBJECTS =

ServidorB: CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o
ServidorB: CMakeFiles/ServidorB.dir/buscaminas.cpp.o
ServidorB: CMakeFiles/ServidorB.dir/build.make
ServidorB: CMakeFiles/ServidorB.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ServidorB"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ServidorB.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ServidorB.dir/build: ServidorB

.PHONY : CMakeFiles/ServidorB.dir/build

CMakeFiles/ServidorB.dir/requires: CMakeFiles/ServidorB.dir/ServidorBuscaminas.cpp.o.requires
CMakeFiles/ServidorB.dir/requires: CMakeFiles/ServidorB.dir/buscaminas.cpp.o.requires

.PHONY : CMakeFiles/ServidorB.dir/requires

CMakeFiles/ServidorB.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ServidorB.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ServidorB.dir/clean

CMakeFiles/ServidorB.dir/depend:
	cd /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona /home/i62macaf/Desktop/Luque_Cordoba_y_Maestre_Carmona/CMakeFiles/ServidorB.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ServidorB.dir/depend
