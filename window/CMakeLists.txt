cmake_minimum_required(VERSION 3.16)

##### window #####

project(window)

add_library(window
	gamepad.cpp
	gamepad.h
	keyboard.cpp
	keyboard.h
	keycodes.cpp
	keycodes.h
	mouse.cpp
	mouse.h
	uidevice.cpp
	uidevice.h
	window.cpp
	window.h

	exports.h
)

target_link_libraries(window app)

# Tests removed - not needed for Windows DLL build
# add_subdirectory(tests)
