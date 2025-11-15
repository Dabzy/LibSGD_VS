# Using LibSGD with BlitzBasic

This guide explains how to use the LibSGD dynamic library with BlitzBasic using the provided `sgd.decls` file.

## Prerequisites

1. **BlitzBasic Compiler** (version 1.117 or later recommended)
2. **sgd_dynamic.dll** (64-bit) - Built from this project
3. **sgd.decls** - Function declarations file (located in this directory)

## Installation

### Standard Installation (Recommended)

1. Locate your BlitzBasic `userlibs` directory (typically `C:\Program Files\BlitzBasic\userlibs\`)
2. Copy `sgd_dynamic.dll` to the `userlibs` directory
3. Copy `sgd.decls` to the `userlibs` directory

**That's it!** BlitzBasic will automatically load the DLL and declarations when you start the compiler. No `Include` statements needed.

## Type Mapping Reference

The DECLS file uses the following BlitzBasic type conventions:

| C Type | BlitzBasic Type | Description |
|--------|-----------------|-------------|
| `void` | (none) | No return value |
| `int` | `%` | Integer |
| `float` | `#` | Float (32-bit) |
| `double` / `SGD_Real` | `!` | Double (64-bit) |
| `const char*` / `SGD_String` | `$` | String |
| `SGD_Bool` | `%` | Boolean (integer) |
| `SGD_Handle` | `%` | Handle (integer) |
| Enums | `%` | Integer |

**Important:** On 64-bit builds, `SGD_Real` is a double and uses the `!` type tag. This is used for all entity positions, rotations, scales, and transform functions.

## Using Constants

The `sgd_constants.bb` file contains all LibSGD constants and enums. You have two options:

**Option 1: Put in userlibs (Recommended)**
- Copy `sgd_constants.bb` to your BlitzBasic `userlibs` folder
- Include it in your programs: `Include "sgd_constants.bb"`

**Option 2: Define constants manually**
- Just define the constants you need in your code
- See `sgd_constants.bb` for available values

## Quick Start Example

```blitzbasic
; NOTE: Make sure sgd_dynamic.dll and sgd.decls are in your userlibs folder!

; Define constants (or put sgd_constants.bb in userlibs)
Const SGD_EVENT_MASK_CLOSE_CLICKED = 1

; Initialize LibSGD
sgd_Init()

; Create a window
sgd_CreateWindow(1280, 720, "My LibSGD App", 0)

; Create a camera
camera = sgd_CreatePerspectiveCamera()

; Main loop
While Not (sgd_PollEvents() And SGD_EVENT_MASK_CLOSE_CLICKED)

    ; Render the scene
    sgd_RenderScene()

    ; Present the frame
    sgd_Present()

Wend

; Cleanup
sgd_Terminate()
End
```

## Important Notes

### 1. DLL Architecture

- The provided `sgd_dynamic.dll` is **64-bit only**
- You must use a **64-bit version of BlitzBasic** if available, or use BlitzMax instead
- For 32-bit BlitzBasic, you'll need to build a 32-bit version of the DLL

### 2. Calling Conventions

The DLL uses `__cdecl` calling convention for 64-bit builds. BlitzBasic handles this automatically when you use the DECLS file.

### 3. Handle Management

LibSGD uses integer handles to reference objects:
- Always store handles returned by creation functions
- Release handles when done using `sgd_ReleaseHandle(handle)`
- Or use `sgd_ReleaseAllHandles()` to release everything

```blitzbasic
; Example
mesh = sgd_LoadMesh("model.gltf")
; ... use mesh ...
sgd_ReleaseHandle(mesh)
```

### 4. String Handling

Strings are passed as UTF-8:
- BlitzBasic automatically converts strings when calling DLL functions
- Returned strings are valid until the next call to the same function

### 5. Boolean Values

- Use `1` for True, `0` for False
- Functions returning booleans return integers (0 or non-zero)

## Function Categories

The DECLS file includes all 324 LibSGD functions organized into categories:

- **System** (16 functions): Initialization, configuration, error handling
- **Window** (13 functions): Window creation and management
- **Input** (16 functions): Keyboard, mouse, and gamepad input
- **Texture** (13 functions): Loading and creating textures
- **Material** (10 functions): PBR and prelit materials
- **Mesh** (58 functions): Mesh creation, manipulation, vertices, triangles
- **Surface** (8 functions): Mesh surface management
- **Font** (3 functions): Font loading and text measurement
- **Image** (7 functions): Image loading and sprites
- **2D Drawing** (20 functions): 2D overlay rendering
- **Scene** (10 functions): Scene management and rendering
- **Entity** (48 functions): Entity hierarchy and transforms
- **Camera** (10 functions): Perspective and orthographic cameras
- **Light** (13 functions): Directional, point, and spot lights
- **Model** (7 functions): 3D model loading and animation
- **Skybox** (4 functions): Skybox rendering
- **Terrain** (7 functions): Terrain rendering
- **Sprite** (4 functions): 3D sprite entities
- **Collision** (16 functions): Physics and collision detection
- **Picking** (7 functions): Ray picking and collision queries
- **Render Effects** (12 functions): Post-processing effects
- **Audio** (14 functions): 2D and 3D audio
- **ImGui** (4 functions): Dear ImGui integration

## Constants and Enums

You'll need to define constants for enums used by LibSGD. Here are the most common ones:

```blitzbasic
; Window States
Const SGD_WINDOW_STATE_CLOSED = 0
Const SGD_WINDOW_STATE_MINIMIZED = 1
Const SGD_WINDOW_STATE_NORMAL = 2
Const SGD_WINDOW_STATE_MAXIMIZED = 3
Const SGD_WINDOW_STATE_FULLSCREEN = 4

; Window Flags
Const SGD_WINDOW_FLAGS_NONE = 0
Const SGD_WINDOW_FLAGS_FULLSCREEN = 1
Const SGD_WINDOW_FLAGS_RESIZABLE = 2
Const SGD_WINDOW_FLAGS_CENTERED = 4

; Blend Modes
Const SGD_BLEND_MODE_OPAQUE = 1
Const SGD_BLEND_MODE_ALPHA_MASK = 2
Const SGD_BLEND_MODE_ALPHA_BLEND = 3

; Camera Types
Const SGD_CAMERA_TYPE_PERSPECTIVE = 1
Const SGD_CAMERA_TYPE_ORTHOGRAPHIC = 2

; Light Types
Const SGD_LIGHT_TYPE_DIRECTIONAL = 1
Const SGD_LIGHT_TYPE_POINT = 2
Const SGD_LIGHT_TYPE_SPOT = 3

; Collision Responses
Const SGD_COLLISION_RESPONSE_NONE = 0
Const SGD_COLLISION_RESPONSE_STOP = 1
Const SGD_COLLISION_RESPONSE_SLIDE = 2
Const SGD_COLLISION_RESPONSE_SLIDEXZ = 3
```

For a complete list of constants, see `libsgd/include/sgd/sgd.h` in the source code.

## Performance Tips

1. **Batch Operations**: Group similar operations together
2. **Release Handles**: Always release handles you're not using to free memory
3. **Use Clear2D**: Clear the 2D overlay each frame if you're not using layers
4. **Shadow Mapping**: Configure shadow settings via `sgd_SetConfigVar()` for optimal performance

## Troubleshooting

### "DLL not found" error
- Ensure `sgd_dynamic.dll` is in the same directory as your executable or in the system PATH
- Check that you're using the correct architecture (64-bit vs 32-bit)

### "Entry point not found" error
- Verify you're using the correct DECLS file version for your DLL
- Ensure the DLL was built successfully with all exports

### Crashes or strange behavior
- Check that all handle parameters are valid
- Ensure you've called `sgd_Init()` before using any other functions
- Verify string parameters are not Null
- Check array indices are within bounds (vertices, triangles, etc.)

## Additional Resources

- **Header Reference**: `libsgd/include/sgd/sgd.h` - Complete API documentation
- **Key Codes**: `libsgd/include/sgd/keycodes.h` - Keyboard and mouse button constants
- **Build Instructions**: `BUILD_INSTRUCTIONS.md` - How to rebuild the DLL
- **Examples**: `libsgd/blitz3d/examples/` - Example programs (if available)

## Version Information

- **LibSGD Version**: 0.16.0
- **Total Functions**: 324
- **DLL Architecture**: x64 (64-bit)
- **Calling Convention**: `__cdecl`

## License

See LICENSE file in the repository root.

## Credits

LibSGD was created by Mark Sibly (1963-2024), creator of Blitz3D and BlitzMax.
