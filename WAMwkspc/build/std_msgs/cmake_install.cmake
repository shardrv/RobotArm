# Install script for directory: /home/dhruv/RobotArm/WAMwkspc/src/std_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dhruv/RobotArm/WAMwkspc/install")
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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dhruv/RobotArm/WAMwkspc/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dhruv/RobotArm/WAMwkspc/install" TYPE PROGRAM FILES "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dhruv/RobotArm/WAMwkspc/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dhruv/RobotArm/WAMwkspc/install" TYPE PROGRAM FILES "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dhruv/RobotArm/WAMwkspc/install/setup.bash;/home/dhruv/RobotArm/WAMwkspc/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dhruv/RobotArm/WAMwkspc/install" TYPE FILE FILES
    "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/catkin_generated/installspace/setup.bash"
    "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dhruv/RobotArm/WAMwkspc/install/setup.sh;/home/dhruv/RobotArm/WAMwkspc/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dhruv/RobotArm/WAMwkspc/install" TYPE FILE FILES
    "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/catkin_generated/installspace/setup.sh"
    "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dhruv/RobotArm/WAMwkspc/install/setup.zsh;/home/dhruv/RobotArm/WAMwkspc/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dhruv/RobotArm/WAMwkspc/install" TYPE FILE FILES
    "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/catkin_generated/installspace/setup.zsh"
    "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/dhruv/RobotArm/WAMwkspc/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/dhruv/RobotArm/WAMwkspc/install" TYPE FILE FILES "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs/msg" TYPE FILE FILES
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Bool.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Byte.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/ByteMultiArray.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Char.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/ColorRGBA.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Duration.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Empty.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Float32.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Float32MultiArray.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Float64.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Float64MultiArray.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Header.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Int16.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Int16MultiArray.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Int32.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Int32MultiArray.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Int64.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Int64MultiArray.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Int8.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Int8MultiArray.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/MultiArrayDimension.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/MultiArrayLayout.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/String.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/Time.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/UInt16.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/UInt16MultiArray.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/UInt32.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/UInt32MultiArray.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/UInt64.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/UInt64MultiArray.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/UInt8.msg"
    "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/msg/UInt8MultiArray.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs/cmake" TYPE FILE FILES "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/catkin_generated/installspace/std_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/WAMwkspc/devel/.private/std_msgs/include/std_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/WAMwkspc/devel/.private/std_msgs/share/roseus/ros/std_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/WAMwkspc/devel/.private/std_msgs/share/common-lisp/ros/std_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/WAMwkspc/devel/.private/std_msgs/share/gennodejs/ros/std_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/home/dhruv/anaconda2/bin/python" -m compileall "/home/dhruv/RobotArm/WAMwkspc/devel/.private/std_msgs/lib/python2.7/dist-packages/std_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/WAMwkspc/devel/.private/std_msgs/lib/python2.7/dist-packages/std_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/catkin_generated/installspace/std_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs/cmake" TYPE FILE FILES "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/catkin_generated/installspace/std_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs/cmake" TYPE FILE FILES
    "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/catkin_generated/installspace/std_msgsConfig.cmake"
    "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/catkin_generated/installspace/std_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/std_msgs" TYPE FILE FILES "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/std_msgs" TYPE DIRECTORY FILES "/home/dhruv/RobotArm/WAMwkspc/src/std_msgs/include/std_msgs/" REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/dhruv/RobotArm/WAMwkspc/build/std_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
