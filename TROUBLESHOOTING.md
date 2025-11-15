# LibSGD Windows Build Troubleshooting Guide

## Dawn Build Errors

If you're experiencing compilation or linker errors related to Dawn (WebGPU), try these solutions:

### Solution 1: Clean Rebuild
```batch
rmdir /s /q cmake-build-windows-release
.\generate_vs2022.bat
```

### Solution 2: Verify Prerequisites

**Required:**
- Visual Studio 2022 with C++ Desktop Development workload
- Windows SDK 10.0.19041.0 or later
- CMake 3.16 or later
- Git (for fetching dependencies)

**Check Windows SDK:**
1. Open Visual Studio Installer
2. Modify VS 2022
3. Individual Components → Windows 10 SDK (10.0.19041.0 or later)

### Solution 3: Build Dawn Separately First

Dawn is the largest dependency and most likely to have issues. To diagnose:

1. Generate the solution:
   ```batch
   .\generate_vs2022.bat
   ```

2. Open `cmake-build-windows-release\LibSGD.sln` in Visual Studio 2022

3. In Solution Explorer, find these Dawn projects:
   - `dawn_native`
   - `dawn_proc`
   - `webgpu_cpp`

4. Right-click `dawn_native` → Build

5. Check the Output window for errors

**Common Dawn Build Issues:**

- **Missing dawn.lib**: Dawn failed to compile. Check for compilation errors in dawn_native.
- **CreateForSwapChain errors**: API version mismatch. This is fixed by using the `openxr-dev` branch instead of `vulkan-vsync-fix` in external/CMakeLists.txt (line 25).
- **SetLoggingCallback errors**: API signature changed (check dawn/device.cpp:225).

### Solution 4: Use Older MSVC Toolset

If Dawn has compatibility issues with the latest MSVC:

1. Install older toolset:
   - Visual Studio Installer → Modify
   - Individual Components → MSVC v143 - VS 2022 C++ x64/x86 build tools (v14.35 or earlier)

2. Regenerate with specific toolset:
   ```batch
   rmdir /s /q cmake-build-windows-release
   mkdir cmake-build-windows-release
   cd cmake-build-windows-release
   cmake -G "Visual Studio 17 2022" -A x64 -T v143 -DCMAKE_BUILD_TYPE=Release ..
   ```

### Solution 5: Check for Path Length Issues

Windows has a 260-character path limit by default:

1. **Move to shorter path**: Move repository to `C:\LibSGD\`

2. **Or enable long paths**:
   - Run as Administrator: `gpedit.msc`
   - Computer Configuration → Administrative Templates → System → Filesystem
   - Enable "Enable Win32 long paths"
   - Run: `git config --global core.longpaths true`

### Solution 6: Build Only sgd_dynamic.dll

If other projects build but you just need the DLL:

1. Open the solution in Visual Studio
2. Right-click `libsgd_dynamic` project → Build
3. DLL will be at: `cmake-build-windows-release\libsgd\Release\sgd_dynamic.dll`

## Specific Error Messages

### "cannot convert from 'const wgpu::StringView' to 'bool'"

This is a Dawn API compatibility issue. Make sure you've pulled the latest code with test fixes.

### "cannot open input file '..\dawn\Release\dawn.lib'"

Dawn didn't build successfully. See Solution 3 above to diagnose.

### "'SetLoggingCallback': cannot convert argument 1"

Dawn API signature changed. This is in dawn/device.cpp and may require code updates if the blitz-research/dawn fork isn't compatible.

## Getting More Help

1. **Check CMake output**: The generate_vs2022.bat script shows what's being downloaded
2. **Build verbose**: In Visual Studio: Tools → Options → Projects and Solutions → Build and Run → MSBuild verbosity → Detailed
3. **Look for first error**: Often subsequent errors are cascading from the first real issue

## Last Resort: Report Configuration

If nothing works, report these details:
```batch
cmake --version
git --version
```

In Visual Studio: Help → About Microsoft Visual Studio
- Version number
- Installed Windows SDK versions

Copy the full build output showing the first error that occurs.
