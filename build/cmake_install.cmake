# Install script for directory: K:/Project_WXP/20241131_FEM_Palace/FEM_GPU/gslib_windows

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
<<<<<<< HEAD
  set(CMAKE_INSTALL_PREFIX "K:/Project_WXP/20241131_FEM_Palace/FEM_GPU/gslib_windows/install")
=======
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/gslib")
>>>>>>> 85bd52113965beadd31900026355e7b6598c9f1c
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
<<<<<<< HEAD
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
=======
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
>>>>>>> 85bd52113965beadd31900026355e7b6598c9f1c
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
<<<<<<< HEAD
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "K:/Project_WXP/20241131_FEM_Palace/FEM_GPU/gslib_windows/install/lib/gs.lib")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "K:/Project_WXP/20241131_FEM_Palace/FEM_GPU/gslib_windows/install/lib" TYPE STATIC_LIBRARY FILES "K:/Project_WXP/20241131_FEM_Palace/FEM_GPU/gslib_windows/build/gs.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "K:/Project_WXP/20241131_FEM_Palace/FEM_GPU/gslib_windows/install/include/")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "K:/Project_WXP/20241131_FEM_Palace/FEM_GPU/gslib_windows/install/include" TYPE DIRECTORY FILES "K:/Project_WXP/20241131_FEM_Palace/FEM_GPU/gslib_windows/include/" FILES_MATCHING REGEX "/[^/]*\\.h$")
=======
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/./build/lib" TYPE STATIC_LIBRARY FILES "K:/Project_WXP/20241131_FEM_Palace/FEM_GPU/gslib_windows/build/gs.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("K:/Project_WXP/20241131_FEM_Palace/FEM_GPU/gslib_windows/build/CMakeFiles/gs.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/./build/include/gslib" TYPE DIRECTORY FILES "K:/Project_WXP/20241131_FEM_Palace/FEM_GPU/gslib_windows/./src/" FILES_MATCHING REGEX "/[^/]*\\.h$")
>>>>>>> 85bd52113965beadd31900026355e7b6598c9f1c
endif()

if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
  file(WRITE "K:/Project_WXP/20241131_FEM_Palace/FEM_GPU/gslib_windows/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
