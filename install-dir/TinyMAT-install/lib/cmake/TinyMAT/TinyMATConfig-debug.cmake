#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "TinyMAT::TinyMAT" for configuration "Debug"
set_property(TARGET TinyMAT::TinyMAT APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(TinyMAT::TinyMAT PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/TinyMAT_Debug.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/TinyMAT_Debug.dll"
  )

list(APPEND _cmake_import_check_targets TinyMAT::TinyMAT )
list(APPEND _cmake_import_check_files_for_TinyMAT::TinyMAT "${_IMPORT_PREFIX}/lib/TinyMAT_Debug.lib" "${_IMPORT_PREFIX}/bin/TinyMAT_Debug.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
