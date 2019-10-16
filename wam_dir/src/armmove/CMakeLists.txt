cmake_minimum_required(VERSION 2.8.3)
project(armmove)

find_package(catkin REQUIRED COMPONENTS 
  roscpp
  rospy
  std_msgs
  wam_msgs
  wam_srvs
)

include_directories(include ${Boost_INCLUDE_DIR} ${catkin_INCLUDE_DIRS})

catkin_package(
    DEPENDS roscpp rospy
)




