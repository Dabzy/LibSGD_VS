cmake_minimum_required(VERSION 3.16)

##### audio #####

project(audio)

add_library(audio
	audio.cpp
	audio.h

	exports.h
)

target_link_libraries(audio app soloud)

# Tests removed - not needed for Windows DLL build
# add_subdirectory(tests)
