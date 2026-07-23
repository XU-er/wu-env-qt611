# Generated CMake target import file.

cmake_policy(PUSH)
cmake_policy(VERSION 2.8.12...4.1) #这段代码可以在 CMake 2.8.12 至 4.1 版本间正常工作，屏蔽不同版本之间的策略差异
set(CMAKE_IMPORT_FILE_VERSION 1)

# 计算安装根目录
set(_current_dir ${CMAKE_CURRENT_LIST_DIR})
get_filename_component(_IMPORT_PREFIX "${_current_dir}/../../../include" ABSOLUTE)
if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX "")
endif()

# Create imported target opencl_loader::opencl_loader
add_library(opencl_loader::opencl_loader STATIC IMPORTED)

set_target_properties(opencl_loader::opencl_loader PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES ${_IMPORT_PREFIX}
)

# Load information for each installed configuration.
file(GLOB _cmake_config_files "${CMAKE_CURRENT_LIST_DIR}/opencl_loader-targets-*.cmake")
foreach(_cmake_config_file IN LISTS _cmake_config_files)
  include("${_cmake_config_file}")
endforeach()
unset(_cmake_config_file)
unset(_cmake_config_files)

set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)