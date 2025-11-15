cmake_minimum_required(VERSION 3.16)

##### app #####

project(app)

add_library(app
	app.cpp
	app.h

	exports.h
)

target_link_libraries(app geom glfw)

# Tests removed - not needed for Windows DLL build
# add_subdirectory(tests)
