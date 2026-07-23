@echo OFF
chcp 65001 > nul

for %%i in (QT_DIR) do (
    if not defined %%~i (
        echo "error: 环境变量'%%~i'没有设置"
        exit /b -1
    )
)

if not defined WU_ALG_DIR (
    echo "warning: 算法库目录的环境变量'WU_ALG_DIR'没有设置, 编译w1将出错"
)

set "WU_ROOT=%~dp0"
set "WU_ROOT=%WU_ROOT:~0,-1%"

for /f "delims=" %%i in ('where where') do set "WHERE_PATH=%%i"
for %%i in ("%WHERE_PATH%") do set "WHERE_DIR=%%~dpi"

for /f "delims=" %%i in ('where py') do set "PY_PATH=%%i"
for %%i in ("%PY_PATH%") do set "PY_DIR=%%~dpi"

for /f "delims=" %%i in ('where git') do set "GIT_PATH=%%i"
for %%i in ("%GIT_PATH%") do set "GIT_DIR=%%~dpi"

set EXTERNAL_INCLUDE=
set INCLUDE=
set LIB=

set PATH=^
%WU_ROOT%\tools\msys64;^
%WU_ROOT%\tools\cmake-4.3.2-windows-x86_64\bin;^
%WU_ROOT%\tools\strawberry-perl-5.42.2.1-64bit-portable\perl\bin;^
%WU_ROOT%\tools\protoc-35.0-win64\bin;^
%WU_ROOT%\tools\nasm-3.01;^
%WU_ROOT%\tools\odb-2.5.0-x86_64-windows10\bin;^
%WU_ROOT%\tools\build2-toolchain-0.18.1-x86_64-windows10-msvc17\bin;^
%WU_ROOT%\tools\jdk-25.0.3+9\bin;^
%WU_ROOT%\tools\Android\cmdline-tools\tools\bin;^
%WU_ROOT%\install-dir\zlib-install\bin;^
%WU_ROOT%\install-dir\FFmpeg-install\bin;^
%WU_ROOT%\install-dir\abseil-cpp-install\bin;^
%WU_ROOT%\install-dir\gtest-install\bin;^
%WU_ROOT%\install-dir\openssl-install\bin;^
%WU_ROOT%\install-dir\curl-install\bin;^
%WU_ROOT%\install-dir\dcmtk-install\bin;^
%WU_ROOT%\install-dir\fftw-install\bin;^
%WU_ROOT%\install-dir\glew-install\bin;^
%WU_ROOT%\install-dir\glfw-install\bin;^
%WU_ROOT%\install-dir\gsl-install\bin;^
%WU_ROOT%\install-dir\OpenCL-Stub-install\bin;^
%WU_ROOT%\install-dir\protobuf-install\bin;^
%WU_ROOT%\install-dir\sqlite3-install\bin;^
%WU_ROOT%\install-dir\matio-install\bin;^
%WU_ROOT%\install-dir\TinyMAT-install\bin;^
%WU_ROOT%\install-dir\odb-install\bin

if defined WU_ALG_DIR (
    set PATH=%PATH%;%WU_ALG_DIR%\bin
)

set CMAKE_PREFIX_PATH=^
%WU_ROOT%\install-dir\zlib-install;^
%WU_ROOT%\install-dir\FFmpeg-install;^
%WU_ROOT%\install-dir\QXlsx-install;^
%WU_ROOT%\install-dir\quazip-install;^
%WU_ROOT%\install-dir\abseil-cpp-install;^
%WU_ROOT%\install-dir\gtest-install;^
%WU_ROOT%\install-dir\rapidjson-install;^
%WU_ROOT%\install-dir\aws-iot-device-sdk-install;^
%WU_ROOT%\install-dir\libqrencode-install;^
%WU_ROOT%\install-dir\nlohmann-json-install;^
%WU_ROOT%\install-dir\openssl-install;^
%WU_ROOT%\install-dir\curl-install;^
%WU_ROOT%\install-dir\dcmtk-install;^
%WU_ROOT%\install-dir\eigen-install;^
%WU_ROOT%\install-dir\fftw-install;^
%WU_ROOT%\install-dir\glew-install;^
%WU_ROOT%\install-dir\glfw-install;^
%WU_ROOT%\install-dir\glm-install;^
%WU_ROOT%\install-dir\gsl-install;^
%WU_ROOT%\install-dir\OpenCL-Stub-install;^
%WU_ROOT%\install-dir\protobuf-install;^
%WU_ROOT%\install-dir\sqlite3-install;^
%WU_ROOT%\install-dir\matio-install;^
%WU_ROOT%\install-dir\TinyMAT-install;^
%WU_ROOT%\install-dir\odb-install

if defined WU_ALG_DIR (
    set CMAKE_PREFIX_PATH=%CMAKE_PREFIX_PATH%;%WU_ALG_DIR%
)

set PATH=%WHERE_DIR%;%PY_DIR%;%GIT_DIR%;%PATH%

setlocal enabledelayedexpansion
set LOCAL_PATH=
for %%i in (QT_DIR) do (
    if defined %%~i (
        if defined LOCAL_PATH (
            set LOCAL_PATH=!LOCAL_PATH!;!%%~i!\bin
        ) else (
            set LOCAL_PATH=!%%~i!\bin
        )
    )
)
endlocal & set PATH=%LOCAL_PATH%;%PATH%

@echo ON
