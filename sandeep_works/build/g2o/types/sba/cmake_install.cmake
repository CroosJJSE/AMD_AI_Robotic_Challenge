# Install script for directory: /mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/aarch64-linux-gnu-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libg2o_types_sba.so.0.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libg2o_types_sba.so.0.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/lib/libg2o_types_sba.so.0.1.0"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/lib/libg2o_types_sba.so.0.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libg2o_types_sba.so.0.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libg2o_types_sba.so.0.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "aarch64-linux-gnu-strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libg2o_types_sba.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libg2o_types_sba.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libg2o_types_sba.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/lib/libg2o_types_sba.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libg2o_types_sba.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libg2o_types_sba.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libg2o_types_sba.so"
         OLD_RPATH "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/build/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "aarch64-linux-gnu-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libg2o_types_sba.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/g2o/types/sba" TYPE FILE FILES
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/edge_project_p2mc.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/edge_project_p2sc.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/edge_project_psi2uv.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/edge_project_stereo_xyz.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/edge_project_stereo_xyz_onlypose.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/edge_project_xyz.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/edge_project_xyz2uv.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/edge_project_xyz2uvu.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/edge_project_xyz_onlypose.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/edge_sba_cam.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/edge_sba_scale.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/edge_se3_expmap.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/g2o_types_sba_api.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/parameter_cameraparameters.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/sba_utils.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/sbacam.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/types_sba.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/types_six_dof_expmap.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/vertex_cam.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/vertex_intrinsics.h"
    "/mnt/c/Users/USER/Desktop/g2o-master/g2o-master/g2o/types/sba/vertex_se3_expmap.h"
    )
endif()

