; Auto-generated. Do not edit!


(cl:in-package can_communication-msg)


;//! \htmlinclude Odrive_msg.msg.html

(cl:defclass <Odrive_msg> (roslisp-msg-protocol:ros-message)
  ((Device_ID
    :reader Device_ID
    :initarg :Device_ID
    :type cl:fixnum
    :initform 0)
   (Command
    :reader Command
    :initarg :Command
    :type cl:fixnum
    :initform 0)
   (Motor_rpm
    :reader Motor_rpm
    :initarg :Motor_rpm
    :type cl:float
    :initform 0.0)
   (Motor_pos
    :reader Motor_pos
    :initarg :Motor_pos
    :type cl:float
    :initform 0.0)
   (Motor_torque
    :reader Motor_torque
    :initarg :Motor_torque
    :type cl:float
    :initform 0.0)
   (Motor_voltage
    :reader Motor_voltage
    :initarg :Motor_voltage
    :type cl:float
    :initform 0.0)
   (Motor_current
    :reader Motor_current
    :initarg :Motor_current
    :type cl:float
    :initform 0.0))
)

(cl:defclass Odrive_msg (<Odrive_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Odrive_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Odrive_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_communication-msg:<Odrive_msg> is deprecated: use can_communication-msg:Odrive_msg instead.")))

(cl:ensure-generic-function 'Device_ID-val :lambda-list '(m))
(cl:defmethod Device_ID-val ((m <Odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-msg:Device_ID-val is deprecated.  Use can_communication-msg:Device_ID instead.")
  (Device_ID m))

(cl:ensure-generic-function 'Command-val :lambda-list '(m))
(cl:defmethod Command-val ((m <Odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-msg:Command-val is deprecated.  Use can_communication-msg:Command instead.")
  (Command m))

(cl:ensure-generic-function 'Motor_rpm-val :lambda-list '(m))
(cl:defmethod Motor_rpm-val ((m <Odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-msg:Motor_rpm-val is deprecated.  Use can_communication-msg:Motor_rpm instead.")
  (Motor_rpm m))

(cl:ensure-generic-function 'Motor_pos-val :lambda-list '(m))
(cl:defmethod Motor_pos-val ((m <Odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-msg:Motor_pos-val is deprecated.  Use can_communication-msg:Motor_pos instead.")
  (Motor_pos m))

(cl:ensure-generic-function 'Motor_torque-val :lambda-list '(m))
(cl:defmethod Motor_torque-val ((m <Odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-msg:Motor_torque-val is deprecated.  Use can_communication-msg:Motor_torque instead.")
  (Motor_torque m))

(cl:ensure-generic-function 'Motor_voltage-val :lambda-list '(m))
(cl:defmethod Motor_voltage-val ((m <Odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-msg:Motor_voltage-val is deprecated.  Use can_communication-msg:Motor_voltage instead.")
  (Motor_voltage m))

(cl:ensure-generic-function 'Motor_current-val :lambda-list '(m))
(cl:defmethod Motor_current-val ((m <Odrive_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-msg:Motor_current-val is deprecated.  Use can_communication-msg:Motor_current instead.")
  (Motor_current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Odrive_msg>) ostream)
  "Serializes a message object of type '<Odrive_msg>"
  (cl:let* ((signed (cl:slot-value msg 'Device_ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Motor_rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Motor_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Motor_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Motor_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Motor_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Odrive_msg>) istream)
  "Deserializes a message object of type '<Odrive_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Device_ID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Command) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Motor_rpm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Motor_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Motor_torque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Motor_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Motor_current) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Odrive_msg>)))
  "Returns string type for a message object of type '<Odrive_msg>"
  "can_communication/Odrive_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Odrive_msg)))
  "Returns string type for a message object of type 'Odrive_msg"
  "can_communication/Odrive_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Odrive_msg>)))
  "Returns md5sum for a message object of type '<Odrive_msg>"
  "42d24095fdb231486a76000750ac32b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odrive_msg)))
  "Returns md5sum for a message object of type 'Odrive_msg"
  "42d24095fdb231486a76000750ac32b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Odrive_msg>)))
  "Returns full string definition for message of type '<Odrive_msg>"
  (cl:format cl:nil "int16     Device_ID~%int16     Command~%float32   Motor_rpm~%float32   Motor_pos~%float32   Motor_torque~%float32   Motor_voltage~%float32   Motor_current~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Odrive_msg)))
  "Returns full string definition for message of type 'Odrive_msg"
  (cl:format cl:nil "int16     Device_ID~%int16     Command~%float32   Motor_rpm~%float32   Motor_pos~%float32   Motor_torque~%float32   Motor_voltage~%float32   Motor_current~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Odrive_msg>))
  (cl:+ 0
     2
     2
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Odrive_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'Odrive_msg
    (cl:cons ':Device_ID (Device_ID msg))
    (cl:cons ':Command (Command msg))
    (cl:cons ':Motor_rpm (Motor_rpm msg))
    (cl:cons ':Motor_pos (Motor_pos msg))
    (cl:cons ':Motor_torque (Motor_torque msg))
    (cl:cons ':Motor_voltage (Motor_voltage msg))
    (cl:cons ':Motor_current (Motor_current msg))
))
