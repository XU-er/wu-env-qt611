cmake_path(SET __WU_ROOT_DIR "$ENV{WU_ROOT}")
# SPDX-FileCopyrightText: (C) 2021 Daniel Nicoletti <dantti12@gmail.com>
# SPDX-License-Identifier: MIT

# - Config information for QXlsx
# This file defines:
#
#  QXlsx_INCLUDE_DIR - the QXlsx include directory
#  QXlsx_LIBRARY - Link these to use QXlsx

SET(prefix "${__WU_ROOT_DIR}/install-dir/QXlsx-install")
SET(exec_prefix "${__WU_ROOT_DIR}/install-dir/QXlsx-install")
SET(QXlsx_FOUND "TRUE")

include("${CMAKE_CURRENT_LIST_DIR}/QXlsxQt6Targets.cmake")
