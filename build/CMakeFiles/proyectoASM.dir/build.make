# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM/build

# Include any dependencies generated for this target.
include CMakeFiles/proyectoASM.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/proyectoASM.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/proyectoASM.dir/flags.make

CMakeFiles/proyectoASM.dir/main.cpp.o: CMakeFiles/proyectoASM.dir/flags.make
CMakeFiles/proyectoASM.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/proyectoASM.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/proyectoASM.dir/main.cpp.o -c /home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM/main.cpp

CMakeFiles/proyectoASM.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/proyectoASM.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM/main.cpp > CMakeFiles/proyectoASM.dir/main.cpp.i

CMakeFiles/proyectoASM.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/proyectoASM.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM/main.cpp -o CMakeFiles/proyectoASM.dir/main.cpp.s

CMakeFiles/proyectoASM.dir/proyectoASM.s.o: CMakeFiles/proyectoASM.dir/flags.make
CMakeFiles/proyectoASM.dir/proyectoASM.s.o: ../proyectoASM.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building ASM object CMakeFiles/proyectoASM.dir/proyectoASM.s.o"
	/usr/bin/c++ $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/proyectoASM.dir/proyectoASM.s.o -c /home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM/proyectoASM.s

CMakeFiles/proyectoASM.dir/arbol.s.o: CMakeFiles/proyectoASM.dir/flags.make
CMakeFiles/proyectoASM.dir/arbol.s.o: ../arbol.s
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building ASM object CMakeFiles/proyectoASM.dir/arbol.s.o"
	/usr/bin/c++ $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/proyectoASM.dir/arbol.s.o -c /home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM/arbol.s

# Object files for target proyectoASM
proyectoASM_OBJECTS = \
"CMakeFiles/proyectoASM.dir/main.cpp.o" \
"CMakeFiles/proyectoASM.dir/proyectoASM.s.o" \
"CMakeFiles/proyectoASM.dir/arbol.s.o"

# External object files for target proyectoASM
proyectoASM_EXTERNAL_OBJECTS =

proyectoASM: CMakeFiles/proyectoASM.dir/main.cpp.o
proyectoASM: CMakeFiles/proyectoASM.dir/proyectoASM.s.o
proyectoASM: CMakeFiles/proyectoASM.dir/arbol.s.o
proyectoASM: CMakeFiles/proyectoASM.dir/build.make
proyectoASM: /usr/lib64/libSDL2.so
proyectoASM: CMakeFiles/proyectoASM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable proyectoASM"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/proyectoASM.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/proyectoASM.dir/build: proyectoASM

.PHONY : CMakeFiles/proyectoASM.dir/build

CMakeFiles/proyectoASM.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/proyectoASM.dir/cmake_clean.cmake
.PHONY : CMakeFiles/proyectoASM.dir/clean

CMakeFiles/proyectoASM.dir/depend:
	cd /home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM /home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM /home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM/build /home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM/build /home/ucc4/media/disk/_cygdrive_D_NIEVAS_Documents_2020_Ucc_Org_y_Arq_Raspberry_proyectoASM/build/CMakeFiles/proyectoASM.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/proyectoASM.dir/depend

