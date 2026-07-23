#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "GSL::gsl" for configuration "Debug"
set_property(TARGET GSL::gsl APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(GSL::gsl PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gsld.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gsld.dll"
  )

list(APPEND _cmake_import_check_targets GSL::gsl )
list(APPEND _cmake_import_check_files_for_GSL::gsl "${_IMPORT_PREFIX}/lib/gsld.lib" "${_IMPORT_PREFIX}/bin/gsld.dll" )

# Import target "GSL::gslcblas" for configuration "Debug"
set_property(TARGET GSL::gslcblas APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(GSL::gslcblas PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/gslcblasd.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/gslcblasd.dll"
  )

list(APPEND _cmake_import_check_targets GSL::gslcblas )
list(APPEND _cmake_import_check_files_for_GSL::gslcblas "${_IMPORT_PREFIX}/lib/gslcblasd.lib" "${_IMPORT_PREFIX}/bin/gslcblasd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
