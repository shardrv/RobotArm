# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "wam_msgs: 11 messages, 0 services")

set(MSG_I_FLAGS "-Iwam_msgs:/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(wam_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartVel.msg" NAME_WE)
add_custom_target(_wam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_msgs" "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartVel.msg" ""
)

get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTToolInfo.msg" NAME_WE)
add_custom_target(_wam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_msgs" "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTToolInfo.msg" ""
)

get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartPos.msg" NAME_WE)
add_custom_target(_wam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_msgs" "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartPos.msg" ""
)

get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointPos.msg" NAME_WE)
add_custom_target(_wam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_msgs" "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointPos.msg" ""
)

get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnVel.msg" NAME_WE)
add_custom_target(_wam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_msgs" "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnVel.msg" ""
)

get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointVel.msg" NAME_WE)
add_custom_target(_wam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_msgs" "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointVel.msg" ""
)

get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnPos.msg" NAME_WE)
add_custom_target(_wam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_msgs" "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnPos.msg" ""
)

get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTVelocity.msg" NAME_WE)
add_custom_target(_wam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_msgs" "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTVelocity.msg" ""
)

get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/MatrixMN.msg" NAME_WE)
add_custom_target(_wam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_msgs" "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/MatrixMN.msg" ""
)

get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtn.msg" NAME_WE)
add_custom_target(_wam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_msgs" "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtn.msg" ""
)

get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTPose.msg" NAME_WE)
add_custom_target(_wam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wam_msgs" "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTPose.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_msgs
)
_generate_msg_cpp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTToolInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_msgs
)
_generate_msg_cpp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_msgs
)
_generate_msg_cpp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_msgs
)
_generate_msg_cpp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_msgs
)
_generate_msg_cpp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_msgs
)
_generate_msg_cpp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_msgs
)
_generate_msg_cpp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_msgs
)
_generate_msg_cpp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/MatrixMN.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_msgs
)
_generate_msg_cpp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_msgs
)
_generate_msg_cpp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(wam_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(wam_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(wam_msgs_generate_messages wam_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_cpp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTToolInfo.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_cpp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_cpp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_cpp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_cpp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_cpp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_cpp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTVelocity.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_cpp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/MatrixMN.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_cpp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtn.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_cpp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTPose.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_cpp _wam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wam_msgs_gencpp)
add_dependencies(wam_msgs_gencpp wam_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wam_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_msgs
)
_generate_msg_eus(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTToolInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_msgs
)
_generate_msg_eus(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_msgs
)
_generate_msg_eus(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_msgs
)
_generate_msg_eus(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_msgs
)
_generate_msg_eus(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_msgs
)
_generate_msg_eus(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_msgs
)
_generate_msg_eus(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_msgs
)
_generate_msg_eus(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/MatrixMN.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_msgs
)
_generate_msg_eus(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_msgs
)
_generate_msg_eus(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(wam_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(wam_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(wam_msgs_generate_messages wam_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_eus _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTToolInfo.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_eus _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_eus _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_eus _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_eus _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_eus _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_eus _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTVelocity.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_eus _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/MatrixMN.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_eus _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtn.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_eus _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTPose.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_eus _wam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wam_msgs_geneus)
add_dependencies(wam_msgs_geneus wam_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wam_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_msgs
)
_generate_msg_lisp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTToolInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_msgs
)
_generate_msg_lisp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_msgs
)
_generate_msg_lisp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_msgs
)
_generate_msg_lisp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_msgs
)
_generate_msg_lisp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_msgs
)
_generate_msg_lisp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_msgs
)
_generate_msg_lisp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_msgs
)
_generate_msg_lisp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/MatrixMN.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_msgs
)
_generate_msg_lisp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_msgs
)
_generate_msg_lisp(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(wam_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(wam_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(wam_msgs_generate_messages wam_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_lisp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTToolInfo.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_lisp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_lisp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_lisp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_lisp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_lisp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_lisp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTVelocity.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_lisp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/MatrixMN.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_lisp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtn.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_lisp _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTPose.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_lisp _wam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wam_msgs_genlisp)
add_dependencies(wam_msgs_genlisp wam_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wam_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_msgs
)
_generate_msg_nodejs(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTToolInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_msgs
)
_generate_msg_nodejs(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_msgs
)
_generate_msg_nodejs(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_msgs
)
_generate_msg_nodejs(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_msgs
)
_generate_msg_nodejs(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_msgs
)
_generate_msg_nodejs(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_msgs
)
_generate_msg_nodejs(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_msgs
)
_generate_msg_nodejs(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/MatrixMN.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_msgs
)
_generate_msg_nodejs(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_msgs
)
_generate_msg_nodejs(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(wam_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(wam_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(wam_msgs_generate_messages wam_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_nodejs _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTToolInfo.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_nodejs _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_nodejs _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_nodejs _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_nodejs _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_nodejs _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_nodejs _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTVelocity.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_nodejs _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/MatrixMN.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_nodejs _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtn.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_nodejs _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTPose.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_nodejs _wam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wam_msgs_gennodejs)
add_dependencies(wam_msgs_gennodejs wam_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wam_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs
)
_generate_msg_py(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTToolInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs
)
_generate_msg_py(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs
)
_generate_msg_py(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs
)
_generate_msg_py(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs
)
_generate_msg_py(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs
)
_generate_msg_py(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs
)
_generate_msg_py(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs
)
_generate_msg_py(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/MatrixMN.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs
)
_generate_msg_py(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs
)
_generate_msg_py(wam_msgs
  "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(wam_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(wam_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(wam_msgs_generate_messages wam_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_py _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTToolInfo.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_py _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTCartPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_py _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_py _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_py _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTJointVel.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_py _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtnPos.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_py _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTVelocity.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_py _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/MatrixMN.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_py _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTOrtn.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_py _wam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dhruv/gitwkspc/RobotArm/wam_dir/src/wam_common/wam_msgs/msg/RTPose.msg" NAME_WE)
add_dependencies(wam_msgs_generate_messages_py _wam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wam_msgs_genpy)
add_dependencies(wam_msgs_genpy wam_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wam_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wam_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wam_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wam_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wam_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wam_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
