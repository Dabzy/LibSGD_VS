# LibSGD - Building for Windows with Visual Studio 2022

This guide explains how to build LibSGD as a Windows DLL using Visual Studio 2022.

## Prerequisites

### Required Software

1. **Visual Studio 2022**
   - Download from: https://visualstudio.microsoft.com/downloads/
   - Required workload: "Desktop development with C++"
   - Ensure C++ CMake tools are installed

2. **CMake 3.16 or later**
   - Download from: https://cmake.org/download/
   - During installation, choose "Add CMake to system PATH"

3. **Git**
   - Download from: https://git-scm.com/downloads
   - Required for CMake to download dependencies automatically

### System Requirements

- Windows 10 or later (64-bit)
- At least 10 GB free disk space (for dependencies)
- Internet connection (first build downloads dependencies from GitHub)

## Quick Start - Generate Visual Studio Solution

### Option 1: Using the Batch Script (Easiest)

1. Open Windows Explorer and navigate to this directory
2. Double-click `generate_vs2022.bat`
3. Wait for CMake to download dependencies and generate the solution
4. Open `cmake-build-windows-release\LibSGD.sln` in Visual Studio 2022

### Option 2: Manual CMake Generation

Open Command Prompt or PowerShell in this directory and run:

```batch
mkdir cmake-build-windows-release
cd cmake-build-windows-release
cmake -G "Visual Studio 17 2022" -A x64 -DCMAKE_BUILD_TYPE=Release ..
```

Then open the generated `LibSGD.sln` file.

## Building the DLL

### In Visual Studio:

1. Open `cmake-build-windows-release\LibSGD.sln`
2. Select configuration (Release or Debug)
3. In Solution Explorer, find the **libsgd_dynamic** project
4. Right-click → **Build**

The DLL will be output to:
```
cmake-build-windows-release\libsgd\Release\sgd_dynamic.dll
cmake-build-windows-release\libsgd\Release\sgd_dynamic.lib  (import library)
```

### From Command Line:

After generating the solution, build with:

```batch
cmake --build cmake-build-windows-release --config Release --target libsgd_dynamic
```

## Project Structure

```
LibSGD/
├── CMakeLists.txt          # Main build configuration
├── generate_vs2022.bat     # Solution generator script
├── external/               # CMake config for dependencies
│   └── CMakeLists.txt     # Downloads all dependencies via FetchContent
├── core/                   # Core utilities (libcurl, json11)
├── geom/                   # Geometry library
├── app/                    # Application framework (glfw)
├── dawn/                   # WebGPU/Dawn graphics backend
├── window/                 # Window management
├── audio/                  # Audio library (soloud)
├── graphics/               # Graphics rendering (stb images)
├── scene/                  # 3D scene management (tinygltf)
├── libsgd/                 # Main API wrapper (builds sgd_dynamic.dll)
│   ├── audio.cpp           # Audio API wrapper
│   ├── graphics.cpp        # Graphics API wrapper
│   ├── scene.cpp           # Scene API wrapper
│   ├── window.cpp          # Window API wrapper
│   ├── include/sgd/        # Public headers
│   │   ├── sgd.h           # Main API header
│   │   └── keycodes.h      # Keyboard constants
│   └── blitz3d/            # BlitzBasic examples
└── skirmish/               # Example application
```

## Dependencies

All dependencies are downloaded automatically by CMake using `FetchContent`:

| Library | Purpose | Source |
|---------|---------|--------|
| **dawn** | WebGPU implementation | https://github.com/blitz-research/dawn |
| **glfw** | Window/input management | https://github.com/blitz-research/glfw |
| **soloud** | Audio engine | https://github.com/blitz-research/soloud |
| **imgui** | UI library | https://github.com/blitz-research/imgui |
| **curl** | HTTP library | https://github.com/blitz-research/curl |
| **tinygltf** | glTF model loader | https://github.com/blitz-research/tinygltf |
| **stb** | Image loaders | https://github.com/blitz-research/stb |
| **json11** | JSON parser | https://github.com/blitz-research/json11 |
| **tcpp** | Threading utilities | https://github.com/blitz-research/tcpp |

**Note:** All dependencies are forks maintained by Mark Sibly (blitz-research) to ensure compatibility.

## Using the DLL with BlitzBasic

After building:

1. Copy `sgd_dynamic.dll` to your BlitzBasic `userlibs` directory
2. Copy `libsgd/include/sgd/sgd.h` for reference
3. Use the BlitzBasic examples in `libsgd/blitz3d/` as templates
4. Refer to `libsgd/blitz3d/sgd.bb` for function declarations

## Build Configurations

### Release Build (Recommended)
- Optimized for performance
- No debug symbols
- Smaller DLL size

### Debug Build
- Includes debug symbols
- Useful for development
- Larger DLL size
- Better error messages

To build Debug:
```batch
cmake -G "Visual Studio 17 2022" -A x64 -DCMAKE_BUILD_TYPE=Debug ..
```

## Troubleshooting

### "CMake not found"
- Ensure CMake is installed and added to system PATH
- Restart Command Prompt/PowerShell after installing CMake

### "Git not found" or dependency download fails
- Ensure Git is installed and in system PATH
- Check internet connection
- Some dependencies (especially dawn) are large and may take time

### "Visual Studio 17 2022 not found"
- Ensure Visual Studio 2022 is installed with C++ workload
- Try running from "Developer Command Prompt for VS 2022"

### Build fails with missing headers
- Clean and regenerate: Delete `cmake-build-windows-release` folder and run script again
- Ensure all dependencies downloaded successfully (check CMake output)

### Dawn/WebGPU build failures
- Dawn is the largest dependency and most complex
- Ensure you have latest Windows SDK installed with Visual Studio
- May require 8+ GB free disk space

## Output Files

After successful build, you'll have:

```
cmake-build-windows-release/
├── LibSGD.sln                      # Visual Studio solution
├── libsgd/
│   └── Release/
│       ├── sgd_dynamic.dll         # The main DLL (distribute this)
│       ├── sgd_dynamic.lib         # Import library (for C/C++ linking)
│       └── sgd_dynamic.exp         # Export file
└── LIBSGD_INSTALL/                 # Install output (cmake --install)
    ├── lib/
    │   └── sgd_dynamic.dll
    ├── include/sgd/
    │   ├── sgd.h
    │   └── keycodes.h
    └── README.md
```

## Additional Build Options

### Build all projects (not just DLL)
```batch
cmake --build cmake-build-windows-release --config Release
```

### Install to output directory
```batch
cmake --build cmake-build-windows-release --config Release --target install
```

This copies the DLL and headers to `cmake-build-windows-release/LIBSGD_INSTALL/`

### Clean build
```batch
cmake --build cmake-build-windows-release --config Release --target clean
```

## For Developers

### Modifying the Library

1. Edit source files in their respective directories
2. In Visual Studio: Build → Rebuild Solution
3. Or from command line: `cmake --build cmake-build-windows-release --config Release`

### Adding Custom Build Flags

Edit the root `CMakeLists.txt` to add compiler flags:

```cmake
# Example: Add custom definitions
add_compile_definitions(MY_CUSTOM_FLAG=1)
```

Then regenerate the Visual Studio solution.

## Credits

LibSGD was created by Mark Sibly (1963-2024), the legendary creator of Blitz3D and BlitzMax.
Rest in peace, Mark. Your contributions to game development live on.

## License

See LICENSE file in repository root (if available).

## Support

- Original repository: https://github.com/blitz-research/libsgd
- BlitzBasic examples: See `libsgd/blitz3d/examples/`
- API documentation: Generated from `sgd.h` header

---

**Last updated:** November 2025
