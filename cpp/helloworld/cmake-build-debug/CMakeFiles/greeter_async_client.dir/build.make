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
CMAKE_COMMAND = /home/sjl/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/202.8194.17/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/sjl/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/202.8194.17/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sjl/CCode/Coding/Mytest/cpp/helloworld

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/greeter_async_client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/greeter_async_client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/greeter_async_client.dir/flags.make

helloworld.pb.cc: /home/sjl/CCode/Coding/Mytest/protos/helloworld.proto
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating helloworld.pb.cc, helloworld.pb.h, helloworld.grpc.pb.cc, helloworld.grpc.pb.h"
	/usr/local/bin/protoc-3.13.0.0 --grpc_out /home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug --cpp_out /home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug -I /home/sjl/CCode/Coding/Mytest/protos --plugin=protoc-gen-grpc="/usr/local/bin/grpc_cpp_plugin" /home/sjl/CCode/Coding/Mytest/protos/helloworld.proto

helloworld.pb.h: helloworld.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate helloworld.pb.h

helloworld.grpc.pb.cc: helloworld.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate helloworld.grpc.pb.cc

helloworld.grpc.pb.h: helloworld.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate helloworld.grpc.pb.h

CMakeFiles/greeter_async_client.dir/greeter_async_client.cc.o: CMakeFiles/greeter_async_client.dir/flags.make
CMakeFiles/greeter_async_client.dir/greeter_async_client.cc.o: ../greeter_async_client.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/greeter_async_client.dir/greeter_async_client.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/greeter_async_client.dir/greeter_async_client.cc.o -c /home/sjl/CCode/Coding/Mytest/cpp/helloworld/greeter_async_client.cc

CMakeFiles/greeter_async_client.dir/greeter_async_client.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/greeter_async_client.dir/greeter_async_client.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjl/CCode/Coding/Mytest/cpp/helloworld/greeter_async_client.cc > CMakeFiles/greeter_async_client.dir/greeter_async_client.cc.i

CMakeFiles/greeter_async_client.dir/greeter_async_client.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/greeter_async_client.dir/greeter_async_client.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjl/CCode/Coding/Mytest/cpp/helloworld/greeter_async_client.cc -o CMakeFiles/greeter_async_client.dir/greeter_async_client.cc.s

CMakeFiles/greeter_async_client.dir/helloworld.pb.cc.o: CMakeFiles/greeter_async_client.dir/flags.make
CMakeFiles/greeter_async_client.dir/helloworld.pb.cc.o: helloworld.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/greeter_async_client.dir/helloworld.pb.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/greeter_async_client.dir/helloworld.pb.cc.o -c /home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug/helloworld.pb.cc

CMakeFiles/greeter_async_client.dir/helloworld.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/greeter_async_client.dir/helloworld.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug/helloworld.pb.cc > CMakeFiles/greeter_async_client.dir/helloworld.pb.cc.i

CMakeFiles/greeter_async_client.dir/helloworld.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/greeter_async_client.dir/helloworld.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug/helloworld.pb.cc -o CMakeFiles/greeter_async_client.dir/helloworld.pb.cc.s

CMakeFiles/greeter_async_client.dir/helloworld.grpc.pb.cc.o: CMakeFiles/greeter_async_client.dir/flags.make
CMakeFiles/greeter_async_client.dir/helloworld.grpc.pb.cc.o: helloworld.grpc.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/greeter_async_client.dir/helloworld.grpc.pb.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/greeter_async_client.dir/helloworld.grpc.pb.cc.o -c /home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug/helloworld.grpc.pb.cc

CMakeFiles/greeter_async_client.dir/helloworld.grpc.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/greeter_async_client.dir/helloworld.grpc.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug/helloworld.grpc.pb.cc > CMakeFiles/greeter_async_client.dir/helloworld.grpc.pb.cc.i

CMakeFiles/greeter_async_client.dir/helloworld.grpc.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/greeter_async_client.dir/helloworld.grpc.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug/helloworld.grpc.pb.cc -o CMakeFiles/greeter_async_client.dir/helloworld.grpc.pb.cc.s

# Object files for target greeter_async_client
greeter_async_client_OBJECTS = \
"CMakeFiles/greeter_async_client.dir/greeter_async_client.cc.o" \
"CMakeFiles/greeter_async_client.dir/helloworld.pb.cc.o" \
"CMakeFiles/greeter_async_client.dir/helloworld.grpc.pb.cc.o"

# External object files for target greeter_async_client
greeter_async_client_EXTERNAL_OBJECTS =

greeter_async_client: CMakeFiles/greeter_async_client.dir/greeter_async_client.cc.o
greeter_async_client: CMakeFiles/greeter_async_client.dir/helloworld.pb.cc.o
greeter_async_client: CMakeFiles/greeter_async_client.dir/helloworld.grpc.pb.cc.o
greeter_async_client: CMakeFiles/greeter_async_client.dir/build.make
greeter_async_client: /usr/local/lib/libgrpc++_reflection.a
greeter_async_client: /usr/local/lib/libgrpc++.a
greeter_async_client: /usr/local/lib/libprotobuf.a
greeter_async_client: /usr/local/lib/libgrpc.a
greeter_async_client: /usr/local/lib/libssl.a
greeter_async_client: /usr/local/lib/libcrypto.a
greeter_async_client: /usr/local/lib/libz.a
greeter_async_client: /usr/local/lib/libcares.a
greeter_async_client: /usr/local/lib/libre2.a
greeter_async_client: /usr/local/lib/libabsl_status.a
greeter_async_client: /usr/local/lib/libabsl_cord.a
greeter_async_client: /usr/local/lib/libabsl_hash.a
greeter_async_client: /usr/local/lib/libabsl_bad_variant_access.a
greeter_async_client: /usr/local/lib/libabsl_city.a
greeter_async_client: /usr/local/lib/libabsl_raw_hash_set.a
greeter_async_client: /usr/local/lib/libabsl_bad_optional_access.a
greeter_async_client: /usr/local/lib/libabsl_hashtablez_sampler.a
greeter_async_client: /usr/local/lib/libabsl_exponential_biased.a
greeter_async_client: /usr/local/lib/libgpr.a
greeter_async_client: /usr/local/lib/libabsl_synchronization.a
greeter_async_client: /usr/local/lib/libabsl_stacktrace.a
greeter_async_client: /usr/local/lib/libabsl_symbolize.a
greeter_async_client: /usr/local/lib/libabsl_debugging_internal.a
greeter_async_client: /usr/local/lib/libabsl_demangle_internal.a
greeter_async_client: /usr/local/lib/libabsl_graphcycles_internal.a
greeter_async_client: /usr/local/lib/libabsl_time.a
greeter_async_client: /usr/local/lib/libabsl_civil_time.a
greeter_async_client: /usr/local/lib/libabsl_time_zone.a
greeter_async_client: /usr/local/lib/libabsl_malloc_internal.a
greeter_async_client: /usr/local/lib/libabsl_str_format_internal.a
greeter_async_client: /usr/local/lib/libabsl_strings.a
greeter_async_client: /usr/local/lib/libabsl_strings_internal.a
greeter_async_client: /usr/local/lib/libabsl_int128.a
greeter_async_client: /usr/local/lib/libabsl_throw_delegate.a
greeter_async_client: /usr/local/lib/libabsl_base.a
greeter_async_client: /usr/local/lib/libabsl_raw_logging_internal.a
greeter_async_client: /usr/local/lib/libabsl_dynamic_annotations.a
greeter_async_client: /usr/local/lib/libabsl_log_severity.a
greeter_async_client: /usr/local/lib/libabsl_spinlock_wait.a
greeter_async_client: /usr/lib/x86_64-linux-gnu/librt.so
greeter_async_client: /usr/local/lib/libaddress_sorting.a
greeter_async_client: /usr/local/lib/libupb.a
greeter_async_client: CMakeFiles/greeter_async_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable greeter_async_client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/greeter_async_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/greeter_async_client.dir/build: greeter_async_client

.PHONY : CMakeFiles/greeter_async_client.dir/build

CMakeFiles/greeter_async_client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/greeter_async_client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/greeter_async_client.dir/clean

CMakeFiles/greeter_async_client.dir/depend: helloworld.pb.cc
CMakeFiles/greeter_async_client.dir/depend: helloworld.pb.h
CMakeFiles/greeter_async_client.dir/depend: helloworld.grpc.pb.cc
CMakeFiles/greeter_async_client.dir/depend: helloworld.grpc.pb.h
	cd /home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sjl/CCode/Coding/Mytest/cpp/helloworld /home/sjl/CCode/Coding/Mytest/cpp/helloworld /home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug /home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug /home/sjl/CCode/Coding/Mytest/cpp/helloworld/cmake-build-debug/CMakeFiles/greeter_async_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/greeter_async_client.dir/depend

