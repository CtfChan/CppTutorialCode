# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/chris/CppTutorialCode

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chris/CppTutorialCode/build

# Include any dependencies generated for this target.
include SmartPointers/CMakeFiles/smart_pointer.dir/depend.make

# Include the progress variables for this target.
include SmartPointers/CMakeFiles/smart_pointer.dir/progress.make

# Include the compile flags for this target's objects.
include SmartPointers/CMakeFiles/smart_pointer.dir/flags.make

SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.o: SmartPointers/CMakeFiles/smart_pointer.dir/flags.make
SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.o: ../SmartPointers/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chris/CppTutorialCode/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.o"
	cd /home/chris/CppTutorialCode/build/SmartPointers && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/smart_pointer.dir/main.cpp.o -c /home/chris/CppTutorialCode/SmartPointers/main.cpp

SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/smart_pointer.dir/main.cpp.i"
	cd /home/chris/CppTutorialCode/build/SmartPointers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chris/CppTutorialCode/SmartPointers/main.cpp > CMakeFiles/smart_pointer.dir/main.cpp.i

SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/smart_pointer.dir/main.cpp.s"
	cd /home/chris/CppTutorialCode/build/SmartPointers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chris/CppTutorialCode/SmartPointers/main.cpp -o CMakeFiles/smart_pointer.dir/main.cpp.s

SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.o.requires:

.PHONY : SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.o.requires

SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.o.provides: SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.o.requires
	$(MAKE) -f SmartPointers/CMakeFiles/smart_pointer.dir/build.make SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.o.provides.build
.PHONY : SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.o.provides

SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.o.provides.build: SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.o


# Object files for target smart_pointer
smart_pointer_OBJECTS = \
"CMakeFiles/smart_pointer.dir/main.cpp.o"

# External object files for target smart_pointer
smart_pointer_EXTERNAL_OBJECTS =

../bin/smart_pointer: SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.o
../bin/smart_pointer: SmartPointers/CMakeFiles/smart_pointer.dir/build.make
../bin/smart_pointer: SmartPointers/CMakeFiles/smart_pointer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chris/CppTutorialCode/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/smart_pointer"
	cd /home/chris/CppTutorialCode/build/SmartPointers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/smart_pointer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
SmartPointers/CMakeFiles/smart_pointer.dir/build: ../bin/smart_pointer

.PHONY : SmartPointers/CMakeFiles/smart_pointer.dir/build

SmartPointers/CMakeFiles/smart_pointer.dir/requires: SmartPointers/CMakeFiles/smart_pointer.dir/main.cpp.o.requires

.PHONY : SmartPointers/CMakeFiles/smart_pointer.dir/requires

SmartPointers/CMakeFiles/smart_pointer.dir/clean:
	cd /home/chris/CppTutorialCode/build/SmartPointers && $(CMAKE_COMMAND) -P CMakeFiles/smart_pointer.dir/cmake_clean.cmake
.PHONY : SmartPointers/CMakeFiles/smart_pointer.dir/clean

SmartPointers/CMakeFiles/smart_pointer.dir/depend:
	cd /home/chris/CppTutorialCode/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chris/CppTutorialCode /home/chris/CppTutorialCode/SmartPointers /home/chris/CppTutorialCode/build /home/chris/CppTutorialCode/build/SmartPointers /home/chris/CppTutorialCode/build/SmartPointers/CMakeFiles/smart_pointer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : SmartPointers/CMakeFiles/smart_pointer.dir/depend

