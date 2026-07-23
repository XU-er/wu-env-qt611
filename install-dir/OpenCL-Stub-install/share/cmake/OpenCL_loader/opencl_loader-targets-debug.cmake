set_property(TARGET opencl_loader::opencl_loader APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencl_loader::opencl_loader PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/opencl_loader_static.lib"
)

list(APPEND _cmake_import_check_targets opencl_loader::opencl_loader)
list(APPEND _cmake_import_check_files_for_opencl_loader::opencl_loader "${_IMPORT_PREFIX}/lib/opencl_loader_static.lib")