# Install script for directory: /home/dhruv/RobotArm/wam_dir/src/wam_common/wam_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dhruv/RobotArm/wam_dir/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_msgs/msg" TYPE FILE FILES
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartPos.msg"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTVelocity.msg"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartVel.msg"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointPos.msg"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointVel.msg"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtn.msg"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnPos.msg"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnVel.msg"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTToolInfo.msg"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTPose.msg"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/MatrixMN.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_msgs/cmake" TYPE FILE FILES "/home/dhruv/RobotArm/wam_dir/build/wam_common/wam_msgs/catkin_generated/installspace/wam_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/wam_dir/devel/include/wam_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/wam_dir/devel/share/roseus/ros/wam_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/wam_dir/devel/share/common-lisp/ros/wam_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/wam_dir/devel/share/gennodejs/ros/wam_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/dhruv/RobotArm/wam_dir/devel/lib/python2.7/dist-packages/wam_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/wam_dir/devel/lib/python2.7/dist-packages/wam_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dhruv/RobotArm/wam_dir/build/wam_common/wam_msgs/catkin_generated/installspace/wam_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_msgs/cmake" TYPE FILE FILES "/home/dhruv/RobotArm/wam_dir/build/wam_common/wam_msgs/catkin_generated/installspace/wam_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_msgs/cmake" TYPE FILE FILES
    "/home/dhruv/RobotArm/wam_dir/build/wam_common/wam_msgs/catkin_generated/installspace/wam_msgsConfig.cmake"
    "/home/dhruv/RobotArm/wam_dir/build/wam_common/wam_msgs/catkin_generated/installspace/wam_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_msgs" TYPE FILE FILES "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_msgs/package.xml")
endif()

