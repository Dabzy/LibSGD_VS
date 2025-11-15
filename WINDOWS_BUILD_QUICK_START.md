# LibSGD - Windows DLL Quick Start Guide

## TL;DR - Get Building in 3 Steps

1. **Install Requirements:**
   - Visual Studio 2022 (with C++ Desktop Development)
   - CMake 3.16+ (add to PATH during install)
   - Git

2. **Generate VS2022 Solution:**
   - Double-click `generate_vs2022.bat`
   - Wait 5-15 minutes (downloads dependencies first time)

3. **Build DLL:**
   - Open `cmake-build-windows-release\LibSGD.sln`
   - Build → Build Solution (or just build `libsgd_dynamic` project)
   - Get your DLL from: `cmake-build-windows-release\libsgd\Release\sgd_dynamic.dll`

## What You'll Get

After building, you get:
- **sgd_dynamic.dll** - The main library DLL
- **sgd_dynamic.lib** - Import library for linking
- **include/sgd/sgd.h** - C API header file
- **include/sgd/keycodes.h** - Keyboard constants

## For BlitzBasic Users

Your DLL is ready to use with BlitzBasic userlibs!

1. Copy `sgd_dynamic.dll` to your BlitzBasic `userlibs` folder
2. Check out examples in `libsgd/blitz3d/examples/`
3. Use `libsgd/blitz3d/sgd.bb` for function declarations

Example BlitzBasic programs included:
- `helloworld.bb` - Simple window example
- `primitives.bb` - 3D shapes demo
- `blocks.bb` - Interactive 3D scene
- `terrain.bb` - Terrain rendering
- `helmet.bb` - glTF model loading
- And many more in `libsgd/blitz3d/examples/`

## Troubleshooting

**"CMake not found"**
- Install CMake and restart your terminal

**Download takes forever**
- First build downloads ~2GB of dependencies
- Dawn (WebGPU) is the largest component
- Be patient, subsequent builds are fast!

**Build errors**
- Delete `cmake-build-windows-release` folder
- Run `generate_vs2022.bat` again

**Still stuck?**
- See detailed `BUILD_INSTRUCTIONS.md`

## In Memory of Mark Sibly

This library was created by Mark Sibly (1963-2024), creator of Blitz3D and BlitzMax.
A pioneer in making game development accessible to everyone.

---

**Need more details?** See `BUILD_INSTRUCTIONS.md`
