@echo off
REM ========================================
REM LibSGD Visual Studio 2022 Solution Generator
REM ========================================
REM
REM This script generates a Visual Studio 2022 solution for LibSGD
REM
REM Requirements:
REM - Visual Studio 2022 with C++ Desktop Development workload
REM - CMake 3.16 or later
REM - Git (for downloading dependencies)
REM
REM ========================================

echo.
echo ========================================
echo LibSGD VS2022 Solution Generator
echo ========================================
echo.

REM Check if CMake is available
where cmake >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: CMake not found!
    echo Please install CMake 3.16 or later and add it to your PATH
    echo Download from: https://cmake.org/download/
    pause
    exit /b 1
)

echo CMake found:
cmake --version
echo.

REM Create build directory
if not exist "cmake-build-windows-release" mkdir cmake-build-windows-release
cd cmake-build-windows-release

echo Generating Visual Studio 2022 solution...
echo.

REM Generate VS2022 solution with Release configuration
cmake -G "Visual Studio 17 2022" -A x64 -DCMAKE_BUILD_TYPE=Release ..

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo SUCCESS!
    echo ========================================
    echo.
    echo Visual Studio 2022 solution generated successfully!
    echo.
    echo Solution file: cmake-build-windows-release\LibSGD.sln
    echo.
    echo You can now:
    echo   1. Open the .sln file in Visual Studio 2022
    echo   2. Select "Release" or "Debug" configuration
    echo   3. Build the "libsgd_dynamic" project to create sgd_dynamic.dll
    echo.
    echo The DLL will be output to:
    echo   cmake-build-windows-release\libsgd\Release\sgd_dynamic.dll
    echo.
) else (
    echo.
    echo ========================================
    echo ERROR!
    echo ========================================
    echo.
    echo Failed to generate Visual Studio solution.
    echo Please check the error messages above.
    echo.
)

cd ..
pause
