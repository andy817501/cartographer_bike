; Auto-generated. Do not edit!


(cl:in-package ros_odrive-msg)


;//! \htmlinclude odrive_msg.msg.html

(cl:defclass <odrive_msg> (roslisp-msg-protocol:ros-message)
  ((target
    :reader target
    :initarg :target
    :type cl:fixnum
    :initform 0)
   (vbus
    :reader vbus
    :initarg :vbus
    :type cl:float
    :initform 0.0)
   (error0
    :reader error0
    :initarg :error0
    :type cl:integer
    :initform 0)
   (state0
    :reader state0
    :initarg :state0
    :type cl:integer
    :initform 0)
   (vel0
    :reader vel0
    :initarg :vel0
    :type cl:float
    :initform 0.0)
   (pos0
    :reader pos0
    :initarg :pos0
    :type cl:float
    :initform 0.0)
   (curr0B
    :reader curr0B
    :initarg :curr0B
    :type cl:float
    :initform 0.0)
   (curr0C
    :reader curr0C
    :initarg :curr0C
    :type cl:float
    :initform 0.0)
   (temp0
    :reader temp0
    :initarg :temp0
    :type cl:float
    :initform 0.0))
)

(cl:defclass odrive_msg (<odrive_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <odrive_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'odrive_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_odrive-msg:<odrive_msg> is deprecated: use ros_odrive-msg:odrive_msg instead.")))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_odrive-msg:target-val is deprecated.  Use ros_odrive-msg:target instead.")
  (target m))

(cl:ensure-generic-function 'vbus-val :lambda-list '(m))
(cl:defmethod vbus-val ((m <odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_odrive-msg:vbus-val is deprecated.  Use ros_odrive-msg:vbus instead.")
  (vbus m))

(cl:ensure-generic-function 'error0-val :lambda-list '(m))
(cl:defmethod error0-val ((m <odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_odrive-msg:error0-val is deprecated.  Use ros_odrive-msg:error0 instead.")
  (error0 m))

(cl:ensure-generic-function 'state0-val :lambda-list '(m))
(cl:defmethod state0-val ((m <odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_odrive-msg:state0-val is deprecated.  Use ros_odrive-msg:state0 instead.")
  (state0 m))

(cl:ensure-generic-function 'vel0-val :lambda-list '(m))
(cl:defmethod vel0-val ((m <odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_odrive-msg:vel0-val is deprecated.  Use ros_odrive-msg:vel0 instead.")
  (vel0 m))

(cl:ensure-generic-function 'pos0-val :lambda-list '(m))
(cl:defmethod pos0-val ((m <odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_odrive-msg:pos0-val is deprecated.  Use ros_odrive-msg:pos0 instead.")
  (pos0 m))

(cl:ensure-generic-function 'curr0B-val :lambda-list '(m))
(cl:defmethod curr0B-val ((m <odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_odrive-msg:curr0B-val is deprecated.  Use ros_odrive-msg:curr0B instead.")
  (curr0B m))

(cl:ensure-generic-function 'curr0C-val :lambda-list '(m))
(cl:defmethod curr0C-val ((m <odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_odrive-msg:curr0C-val is deprecated.  Use ros_odrive-msg:curr0C instead.")
  (curr0C m))

(cl:ensure-generic-function 'temp0-val :lambda-list '(m))
(cl:defmethod temp0-val ((m <odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_odrive-msg:temp0-val is deprecated.  Use ros_odrive-msg:temp0 instead.")
  (temp0 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <odrive_msg>) ostream)
  "Serializes a message object of type '<odrive_msg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vbus))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'error0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'state0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curr0B))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curr0C))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <odrive_msg>) istream)
  "Deserializes a message object of type '<odrive_msg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vbus) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state0) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curr0B) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curr0C) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp0) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<odrive_msg>)))
  "Returns string type for a message object of type '<odrive_msg>"
  "ros_odrive/odrive_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'odrive_msg)))
  "Returns string type for a message object of type 'odrive_msg"
  "ros_odrive/odrive_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<odrive_msg>)))
  "Returns md5sum for a message object of type '<odrive_msg>"
  "86f9cf508f5d40f79760e11abc87c20f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'odrive_msg)))
  "Returns md5sum for a message object of type 'odrive_msg"
  "86f9cf508f5d40f79760e11abc87c20f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<odrive_msg>)))
  "Returns full string definition for message of type '<odrive_msg>"
  (cl:format cl:nil "#Header header    # ROS Message headaer~%~%uint8 target      # Target~%~%float32 vbus      # Bus voltage~%~%int32 error0      # Axis 0 error~%int32 state0      # Axis 0 state~%float32 vel0      # Axis 0 velocity ~%float32 pos0      # Axis 0 encoder position~%float32 curr0B    # Axis 0 motor channel B current~%float32 curr0C    # Axis 0 motor channel C current~%float32 temp0     # Axis 0 invertr temperature~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'odrive_msg)))
  "Returns full string definition for message of type 'odrive_msg"
  (cl:format cl:nil "#Header header    # ROS Message headaer~%~%uint8 target      # Target~%~%float32 vbus      # Bus voltage~%~%int32 error0      # Axis 0 error~%int32 state0      # Axis 0 state~%float32 vel0      # Axis 0 velocity ~%float32 pos0      # Axis 0 encoder position~%float32 curr0B    # Axis 0 motor channel B current~%float32 curr0C    # Axis 0 motor channel C current~%float32 temp0     # Axis 0 invertr temperature~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <odrive_msg>))
  (cl:+ 0
     1
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <odrive_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'odrive_msg
    (cl:cons ':target (target msg))
    (cl:cons ':vbus (vbus msg))
    (cl:cons ':error0 (error0 msg))
    (cl:cons ':state0 (state0 msg))
    (cl:cons ':vel0 (vel0 msg))
    (cl:cons ':pos0 (pos0 msg))
    (cl:cons ':curr0B (curr0B msg))
    (cl:cons ':curr0C (curr0C msg))
    (cl:cons ':temp0 (temp0 msg))
))
