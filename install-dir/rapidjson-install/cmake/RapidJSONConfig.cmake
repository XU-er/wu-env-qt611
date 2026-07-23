cmake_path(SET __WU_ROOT_DIR "$ENV{WU_ROOT}")
get_filename_component(RAPIDJSON_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(RAPIDJSON_INCLUDE_DIRS "${__WU_ROOT_DIR}/install-dir/rapidjson-install/include")
message(STATUS "RapidJSON found. Headers: ${RAPIDJSON_INCLUDE_DIRS}")
