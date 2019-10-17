# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "wam_srvs: 0 messages, 31 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(wam_srvs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueToolTime.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueToolTime.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Link.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Link.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/PoseMove.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/PoseMove.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorque.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorque.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JV_PID.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JV_PID.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspVel.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspVel.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Teach.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Teach.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/TP_PID.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/TP_PID.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartPosMove.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartPosMove.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspPos.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspPos.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerVel.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerVel.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnMove.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnMove.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnSplitMove.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnSplitMove.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerPos.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerPos.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandPinchPos.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandPinchPos.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Play.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Play.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JP_PID.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JP_PID.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueBase.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueBase.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueTool.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueTool.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartVel.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartVel.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Connect.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Connect.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMoveBlock.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMoveBlock.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HapticSphere.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HapticSphere.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMove.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMove.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Hold.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Hold.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HoldGains.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HoldGains.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnGains.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnGains.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadVel.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadVel.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadPos.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadPos.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/GravityComp.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/GravityComp.srv" ""
)

get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/FollowPath.srv" NAME_WE)
add_custom_target(_wam_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_srvs" "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/FollowPath.srv" "geometry_msgs/Point32"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueToolTime.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Link.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/PoseMove.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorque.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JV_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Teach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/TP_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartPosMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnSplitMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HoldGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandPinchPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JP_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueBase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Connect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMoveBlock.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HapticSphere.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Hold.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/GravityComp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)
_generate_srv_cpp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/FollowPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
)

### Generating Module File
_generate_module_cpp(wam_srvs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(wam_srvs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(wam_srvs_generate_messages wam_srvs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueToolTime.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Link.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/PoseMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorque.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JV_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Teach.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/TP_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartPosMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnSplitMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandPinchPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Play.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JP_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueBase.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueTool.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Connect.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMoveBlock.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HapticSphere.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Hold.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HoldGains.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnGains.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/GravityComp.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/FollowPath.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_cpp _wam_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wam_srvs_gencpp)
add_dependencies(wam_srvs_gencpp wam_srvs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wam_srvs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueToolTime.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Link.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/PoseMove.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorque.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JV_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Teach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/TP_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartPosMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnSplitMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HoldGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandPinchPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JP_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueBase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Connect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMoveBlock.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HapticSphere.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Hold.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/GravityComp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)
_generate_srv_eus(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/FollowPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
)

### Generating Module File
_generate_module_eus(wam_srvs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(wam_srvs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(wam_srvs_generate_messages wam_srvs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueToolTime.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Link.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/PoseMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorque.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JV_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Teach.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/TP_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartPosMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnSplitMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandPinchPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Play.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JP_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueBase.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueTool.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Connect.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMoveBlock.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HapticSphere.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Hold.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HoldGains.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnGains.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/GravityComp.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/FollowPath.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_eus _wam_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wam_srvs_geneus)
add_dependencies(wam_srvs_geneus wam_srvs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wam_srvs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueToolTime.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Link.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/PoseMove.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorque.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JV_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Teach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/TP_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartPosMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnSplitMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HoldGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandPinchPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JP_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueBase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Connect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMoveBlock.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HapticSphere.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Hold.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/GravityComp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)
_generate_srv_lisp(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/FollowPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
)

### Generating Module File
_generate_module_lisp(wam_srvs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(wam_srvs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(wam_srvs_generate_messages wam_srvs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueToolTime.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Link.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/PoseMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorque.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JV_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Teach.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/TP_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartPosMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnSplitMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandPinchPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Play.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JP_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueBase.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueTool.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Connect.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMoveBlock.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HapticSphere.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Hold.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HoldGains.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnGains.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/GravityComp.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/FollowPath.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_lisp _wam_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wam_srvs_genlisp)
add_dependencies(wam_srvs_genlisp wam_srvs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wam_srvs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueToolTime.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Link.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/PoseMove.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorque.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JV_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Teach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/TP_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartPosMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnSplitMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HoldGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandPinchPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JP_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueBase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Connect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMoveBlock.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HapticSphere.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Hold.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/GravityComp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)
_generate_srv_nodejs(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/FollowPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
)

### Generating Module File
_generate_module_nodejs(wam_srvs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(wam_srvs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(wam_srvs_generate_messages wam_srvs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueToolTime.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Link.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/PoseMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorque.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JV_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Teach.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/TP_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartPosMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnSplitMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandPinchPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Play.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JP_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueBase.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueTool.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Connect.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMoveBlock.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HapticSphere.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Hold.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HoldGains.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnGains.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/GravityComp.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/FollowPath.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_nodejs _wam_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wam_srvs_gennodejs)
add_dependencies(wam_srvs_gennodejs wam_srvs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wam_srvs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueToolTime.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Link.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/PoseMove.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorque.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JV_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Teach.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/TP_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartPosMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnSplitMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HoldGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandPinchPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JP_PID.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueBase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Connect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMoveBlock.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HapticSphere.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Hold.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnGains.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadPos.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/GravityComp.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)
_generate_srv_py(wam_srvs
  "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/FollowPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
)

### Generating Module File
_generate_module_py(wam_srvs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(wam_srvs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(wam_srvs_generate_messages wam_srvs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueToolTime.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Link.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/PoseMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorque.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JV_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Teach.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/TP_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartPosMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandGraspPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnSplitMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandFingerPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandPinchPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Play.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JP_PID.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueBase.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/ForceTorqueTool.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/CartVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Connect.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMoveBlock.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HapticSphere.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/JointMove.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/Hold.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/HoldGains.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/OrtnGains.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadVel.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/BHandSpreadPos.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/GravityComp.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/RobotArm/wam_dir/src/wam_common/wam_srvs/srv/FollowPath.srv" NAME_WE)
add_dependencies(wam_srvs_generate_messages_py _wam_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wam_srvs_genpy)
add_dependencies(wam_srvs_genpy wam_srvs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wam_srvs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_srvs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(wam_srvs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_srvs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(wam_srvs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_srvs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(wam_srvs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_srvs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(wam_srvs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_srvs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(wam_srvs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
