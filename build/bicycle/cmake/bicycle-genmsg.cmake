# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "bicycle: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ibicycle:/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(bicycle_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Bicycle_Roll.msg" NAME_WE)
add_custom_target(_bicycle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bicycle" "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Bicycle_Roll.msg" ""
)

get_filename_component(_filename "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Gamepad_Control.msg" NAME_WE)
add_custom_target(_bicycle_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bicycle" "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Gamepad_Control.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(bicycle
  "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Bicycle_Roll.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bicycle
)
_generate_msg_cpp(bicycle
  "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Gamepad_Control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bicycle
)

### Generating Services

### Generating Module File
_generate_module_cpp(bicycle
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bicycle
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(bicycle_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(bicycle_generate_messages bicycle_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Bicycle_Roll.msg" NAME_WE)
add_dependencies(bicycle_generate_messages_cpp _bicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Gamepad_Control.msg" NAME_WE)
add_dependencies(bicycle_generate_messages_cpp _bicycle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bicycle_gencpp)
add_dependencies(bicycle_gencpp bicycle_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bicycle_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(bicycle
  "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Bicycle_Roll.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bicycle
)
_generate_msg_eus(bicycle
  "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Gamepad_Control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bicycle
)

### Generating Services

### Generating Module File
_generate_module_eus(bicycle
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bicycle
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(bicycle_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(bicycle_generate_messages bicycle_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Bicycle_Roll.msg" NAME_WE)
add_dependencies(bicycle_generate_messages_eus _bicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Gamepad_Control.msg" NAME_WE)
add_dependencies(bicycle_generate_messages_eus _bicycle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bicycle_geneus)
add_dependencies(bicycle_geneus bicycle_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bicycle_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(bicycle
  "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Bicycle_Roll.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bicycle
)
_generate_msg_lisp(bicycle
  "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Gamepad_Control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bicycle
)

### Generating Services

### Generating Module File
_generate_module_lisp(bicycle
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bicycle
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(bicycle_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(bicycle_generate_messages bicycle_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Bicycle_Roll.msg" NAME_WE)
add_dependencies(bicycle_generate_messages_lisp _bicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Gamepad_Control.msg" NAME_WE)
add_dependencies(bicycle_generate_messages_lisp _bicycle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bicycle_genlisp)
add_dependencies(bicycle_genlisp bicycle_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bicycle_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(bicycle
  "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Bicycle_Roll.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bicycle
)
_generate_msg_nodejs(bicycle
  "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Gamepad_Control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bicycle
)

### Generating Services

### Generating Module File
_generate_module_nodejs(bicycle
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bicycle
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(bicycle_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(bicycle_generate_messages bicycle_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Bicycle_Roll.msg" NAME_WE)
add_dependencies(bicycle_generate_messages_nodejs _bicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Gamepad_Control.msg" NAME_WE)
add_dependencies(bicycle_generate_messages_nodejs _bicycle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bicycle_gennodejs)
add_dependencies(bicycle_gennodejs bicycle_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bicycle_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(bicycle
  "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Bicycle_Roll.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bicycle
)
_generate_msg_py(bicycle
  "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Gamepad_Control.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bicycle
)

### Generating Services

### Generating Module File
_generate_module_py(bicycle
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bicycle
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(bicycle_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(bicycle_generate_messages bicycle_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Bicycle_Roll.msg" NAME_WE)
add_dependencies(bicycle_generate_messages_py _bicycle_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/prowinter/Desktop/Bicycle_ws/src/bicycle/msg/Gamepad_Control.msg" NAME_WE)
add_dependencies(bicycle_generate_messages_py _bicycle_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bicycle_genpy)
add_dependencies(bicycle_genpy bicycle_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bicycle_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bicycle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bicycle
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(bicycle_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bicycle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bicycle
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(bicycle_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bicycle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bicycle
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(bicycle_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bicycle)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bicycle
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(bicycle_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bicycle)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bicycle\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bicycle
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(bicycle_generate_messages_py std_msgs_generate_messages_py)
endif()
