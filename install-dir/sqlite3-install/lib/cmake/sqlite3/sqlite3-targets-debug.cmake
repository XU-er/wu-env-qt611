#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SQLite::SQLite3" for configuration "Debug"
set_property(TARGET SQLite::SQLite3 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(SQLite::SQLite3 PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/sqlite3d.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/sqlite3d.dll"
  )

list(APPEND _cmake_import_check_targets SQLite::SQLite3 )
list(APPEND _cmake_import_check_files_for_SQLite::SQLite3 "${_IMPORT_PREFIX}/lib/sqlite3d.lib" "${_IMPORT_PREFIX}/bin/sqlite3d.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
