# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "E:\personal file\c&c++\MySTL"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "E:\personal file\c&c++\MySTL\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/MySTL.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/MySTL.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MySTL.dir/flags.make

CMakeFiles/MySTL.dir/main.cpp.obj: CMakeFiles/MySTL.dir/flags.make
CMakeFiles/MySTL.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="E:\personal file\c&c++\MySTL\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MySTL.dir/main.cpp.obj"
	D:\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MySTL.dir\main.cpp.obj -c "E:\personal file\c&c++\MySTL\main.cpp"

CMakeFiles/MySTL.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MySTL.dir/main.cpp.i"
	D:\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "E:\personal file\c&c++\MySTL\main.cpp" > CMakeFiles\MySTL.dir\main.cpp.i

CMakeFiles/MySTL.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MySTL.dir/main.cpp.s"
	D:\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "E:\personal file\c&c++\MySTL\main.cpp" -o CMakeFiles\MySTL.dir\main.cpp.s

# Object files for target MySTL
MySTL_OBJECTS = \
"CMakeFiles/MySTL.dir/main.cpp.obj"

# External object files for target MySTL
MySTL_EXTERNAL_OBJECTS =

MySTL.exe: CMakeFiles/MySTL.dir/main.cpp.obj
MySTL.exe: CMakeFiles/MySTL.dir/build.make
MySTL.exe: CMakeFiles/MySTL.dir/linklibs.rsp
MySTL.exe: CMakeFiles/MySTL.dir/objects1.rsp
MySTL.exe: CMakeFiles/MySTL.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="E:\personal file\c&c++\MySTL\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MySTL.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MySTL.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MySTL.dir/build: MySTL.exe
.PHONY : CMakeFiles/MySTL.dir/build

CMakeFiles/MySTL.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\MySTL.dir\cmake_clean.cmake
.PHONY : CMakeFiles/MySTL.dir/clean

CMakeFiles/MySTL.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "E:\personal file\c&c++\MySTL" "E:\personal file\c&c++\MySTL" "E:\personal file\c&c++\MySTL\cmake-build-debug" "E:\personal file\c&c++\MySTL\cmake-build-debug" "E:\personal file\c&c++\MySTL\cmake-build-debug\CMakeFiles\MySTL.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/MySTL.dir/depend

