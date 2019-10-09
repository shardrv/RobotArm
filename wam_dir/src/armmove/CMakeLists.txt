cmake_minimum_required(VERSION 2.8.3)
project(armmove)


find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
)

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)

include_directories(include ${Boost_INCLUDE_DIR} ${catkin_INCLUDE_DIRS})


catkin_package(
    DEPENDS roscpp rospy
)





#add_executable(armmove src/weight_control.py)
#add_dependencies(armmove ${catkin_EXPORTED_TARGETS})
#target_link_libraries(armmove ${catkin_LIBRARIES})

#catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES armmove
#  CATKIN_DEPENDS roscpp rospy std_msgs
#  DEPENDS system_lib
#)

#include_directories(
# include
#  ${catkin_INCLUDE_DIRS}
#)


# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

# add_executable(${PROJECT_NAME}_node src/armmove_node.cpp)

# set_target_properties(${PROJECT_NAME}_node PROPERTIES OUTPUT_NAME node PREFIX "")


# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

## Specify libraries to link a library or executable target against
# target_link_libraries(${PROJECT_NAME}_node
#   ${catkin_LIBRARIES}
# )

