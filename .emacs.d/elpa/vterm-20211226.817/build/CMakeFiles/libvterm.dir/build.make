# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
SHELL = /gnu/store/pwcp239kjf7lnj5i4lkdzcfcxwcfyk72-bash-minimal-5.0.16/bin/sh

# The CMake executable.
CMAKE_COMMAND = /gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake

# The command to remove a file.
RM = /gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/malcolm/.emacs.d/elpa/vterm-20211226.817

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build

# Utility rule file for libvterm.

# Include the progress variables for this target.
include CMakeFiles/libvterm.dir/progress.make

CMakeFiles/libvterm: CMakeFiles/libvterm-complete


CMakeFiles/libvterm-complete: libvterm-prefix/src/libvterm-stamp/libvterm-install
CMakeFiles/libvterm-complete: libvterm-prefix/src/libvterm-stamp/libvterm-mkdir
CMakeFiles/libvterm-complete: libvterm-prefix/src/libvterm-stamp/libvterm-download
CMakeFiles/libvterm-complete: libvterm-prefix/src/libvterm-stamp/libvterm-update
CMakeFiles/libvterm-complete: libvterm-prefix/src/libvterm-stamp/libvterm-patch
CMakeFiles/libvterm-complete: libvterm-prefix/src/libvterm-stamp/libvterm-configure
CMakeFiles/libvterm-complete: libvterm-prefix/src/libvterm-stamp/libvterm-build
CMakeFiles/libvterm-complete: libvterm-prefix/src/libvterm-stamp/libvterm-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'libvterm'"
	/gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E make_directory /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/CMakeFiles
	/gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E touch /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/CMakeFiles/libvterm-complete
	/gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E touch /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm-stamp/libvterm-done

libvterm-prefix/src/libvterm-stamp/libvterm-install: libvterm-prefix/src/libvterm-stamp/libvterm-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'libvterm'"
	cd /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm && /gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E echo_append
	cd /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm && /gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E touch /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm-stamp/libvterm-install

libvterm-prefix/src/libvterm-stamp/libvterm-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'libvterm'"
	/gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E make_directory /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm
	/gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E make_directory /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm
	/gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E make_directory /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix
	/gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E make_directory /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/tmp
	/gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E make_directory /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm-stamp
	/gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E make_directory /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src
	/gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E make_directory /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm-stamp
	/gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E touch /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm-stamp/libvterm-mkdir

libvterm-prefix/src/libvterm-stamp/libvterm-download: libvterm-prefix/src/libvterm-stamp/libvterm-gitinfo.txt
libvterm-prefix/src/libvterm-stamp/libvterm-download: libvterm-prefix/src/libvterm-stamp/libvterm-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'libvterm'"
	cd /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src && /gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -P /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/tmp/libvterm-gitclone.cmake
	cd /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src && /gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E touch /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm-stamp/libvterm-download

libvterm-prefix/src/libvterm-stamp/libvterm-update: libvterm-prefix/src/libvterm-stamp/libvterm-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'libvterm'"
	cd /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm && /gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -P /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/tmp/libvterm-gitupdate.cmake

libvterm-prefix/src/libvterm-stamp/libvterm-patch: libvterm-prefix/src/libvterm-stamp/libvterm-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'libvterm'"
	/gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E echo_append
	/gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E touch /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm-stamp/libvterm-patch

libvterm-prefix/src/libvterm-stamp/libvterm-configure: libvterm-prefix/tmp/libvterm-cfgcmd.txt
libvterm-prefix/src/libvterm-stamp/libvterm-configure: libvterm-prefix/src/libvterm-stamp/libvterm-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No configure step for 'libvterm'"
	cd /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm && /gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E echo_append
	cd /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm && /gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E touch /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm-stamp/libvterm-configure

libvterm-prefix/src/libvterm-stamp/libvterm-build: libvterm-prefix/src/libvterm-stamp/libvterm-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'libvterm'"
	cd /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm && make "CFLAGS='-fPIC'"
	cd /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm && /gnu/store/4axd987cf0bpkshybl1w7g5hp9yqm660-cmake-3.19.2/bin/cmake -E touch /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/libvterm-prefix/src/libvterm-stamp/libvterm-build

libvterm: CMakeFiles/libvterm
libvterm: CMakeFiles/libvterm-complete
libvterm: libvterm-prefix/src/libvterm-stamp/libvterm-build
libvterm: libvterm-prefix/src/libvterm-stamp/libvterm-configure
libvterm: libvterm-prefix/src/libvterm-stamp/libvterm-download
libvterm: libvterm-prefix/src/libvterm-stamp/libvterm-install
libvterm: libvterm-prefix/src/libvterm-stamp/libvterm-mkdir
libvterm: libvterm-prefix/src/libvterm-stamp/libvterm-patch
libvterm: libvterm-prefix/src/libvterm-stamp/libvterm-update
libvterm: CMakeFiles/libvterm.dir/build.make

.PHONY : libvterm

# Rule to build all files generated by this target.
CMakeFiles/libvterm.dir/build: libvterm

.PHONY : CMakeFiles/libvterm.dir/build

CMakeFiles/libvterm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libvterm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libvterm.dir/clean

CMakeFiles/libvterm.dir/depend:
	cd /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/malcolm/.emacs.d/elpa/vterm-20211226.817 /home/malcolm/.emacs.d/elpa/vterm-20211226.817 /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build /home/malcolm/.emacs.d/elpa/vterm-20211226.817/build/CMakeFiles/libvterm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/libvterm.dir/depend

