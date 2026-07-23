#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "TinyMAT::TinyMAT" for configuration "Release"
set_property(TARGET TinyMAT::TinyMAT APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(TinyMAT::TinyMAT PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/TinyMAT_Release.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/TinyMAT_Release.dll"
  )

list(APPEND _cmake_import_check_targets TinyMAT::TinyMAT )
list(APPEND _cmake_import_check_files_for_TinyMAT::TinyMAT "${_IMPORT_PREFIX}/lib/TinyMAT_Release.lib" "${_IMPORT_PREFIX}/bin/TinyMAT_Release.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
