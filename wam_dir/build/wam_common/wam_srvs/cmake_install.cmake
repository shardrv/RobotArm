# Install script for directory: /home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_srvs/srv" TYPE FILE FILES
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JP_PID.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JV_PID.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/TP_PID.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartPosMove.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/GravityComp.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HapticSphere.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Hold.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HoldGains.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Connect.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMove.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMoveBlock.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnMove.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnGains.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnSplitMove.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/PoseMove.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartVel.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerPos.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerVel.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspPos.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspVel.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadPos.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadVel.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Teach.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Play.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandPinchPos.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Link.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorque.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueTool.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueBase.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueToolTime.srv"
    "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/FollowPath.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_srvs/cmake" TYPE FILE FILES "/home/dhruv/RobotArm/wam_dir/build/wam_common/wam_srvs/catkin_generated/installspace/wam_srvs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/wam_dir/devel/include/wam_srvs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/wam_dir/devel/share/roseus/ros/wam_srvs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/wam_dir/devel/share/common-lisp/ros/wam_srvs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/wam_dir/devel/share/gennodejs/ros/wam_srvs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/home/dhruv/anaconda2/bin/python" -m compileall "/home/dhruv/RobotArm/wam_dir/devel/lib/python2.7/dist-packages/wam_srvs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/wam_dir/devel/lib/python2.7/dist-packages/wam_srvs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dhruv/RobotArm/wam_dir/build/wam_common/wam_srvs/catkin_generated/installspace/wam_srvs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_srvs/cmake" TYPE FILE FILES "/home/dhruv/RobotArm/wam_dir/build/wam_common/wam_srvs/catkin_generated/installspace/wam_srvs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_srvs/cmake" TYPE FILE FILES
    "/home/dhruv/RobotArm/wam_dir/build/wam_common/wam_srvs/catkin_generated/installspace/wam_srvsConfig.cmake"
    "/home/dhruv/RobotArm/wam_dir/build/wam_common/wam_srvs/catkin_generated/installspace/wam_srvsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wam_srvs" TYPE FILE FILES "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/package.xml")
endif()

