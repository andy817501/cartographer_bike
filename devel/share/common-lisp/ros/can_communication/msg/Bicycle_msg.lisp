; Auto-generated. Do not edit!


(cl:in-package can_communication-msg)


;//! \htmlinclude Bicycle_msg.msg.html

(cl:defclass <Bicycle_msg> (roslisp-msg-protocol:ros-message)
  ((Servo_Direction
    :reader Servo_Direction
    :initarg :Servo_Direction
    :type cl:float
    :initform 0.0)
   (Bicycle_voltage
    :reader Bicycle_voltage
    :initarg :Bicycle_voltage
    :type cl:float
    :initform 0.0)
   (Motor_Roll
    :reader Motor_Roll
    :initarg :Motor_Roll
    :type cl:float
    :initform 0.0)
   (Motor_Roll_Gyro
    :reader Motor_Roll_Gyro
    :initarg :Motor_Roll_Gyro
    :type cl:float
    :initform 0.0)
   (Motor_duty
    :reader Motor_duty
    :initarg :Motor_duty
    :type cl:float
    :initform 0.0)
   (Motor_rpm
    :reader Motor_rpm
    :initarg :Motor_rpm
    :type cl:integer
    :initform 0)
   (Device_ID
    :reader Device_ID
    :initarg :Device_ID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Bicycle_msg (<Bicycle_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bicycle_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bicycle_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_communication-msg:<Bicycle_msg> is deprecated: use can_communication-msg:Bicycle_msg instead.")))

(cl:ensure-generic-function 'Servo_Direction-val :lambda-list '(m))
(cl:defmethod Servo_Direction-val ((m <Bicycle_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-msg:Servo_Direction-val is deprecated.  Use can_communication-msg:Servo_Direction instead.")
  (Servo_Direction m))

(cl:ensure-generic-function 'Bicycle_voltage-val :lambda-list '(m))
(cl:defmethod Bicycle_voltage-val ((m <Bicycle_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-msg:Bicycle_voltage-val is deprecated.  Use can_communication-msg:Bicycle_voltage instead.")
  (Bicycle_voltage m))

(cl:ensure-generic-function 'Motor_Roll-val :lambda-list '(m))
(cl:defmethod Motor_Roll-val ((m <Bicycle_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-msg:Motor_Roll-val is deprecated.  Use can_communication-msg:Motor_Roll instead.")
  (Motor_Roll m))

(cl:ensure-generic-function 'Motor_Roll_Gyro-val :lambda-list '(m))
(cl:defmethod Motor_Roll_Gyro-val ((m <Bicycle_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-msg:Motor_Roll_Gyro-val is deprecated.  Use can_communication-msg:Motor_Roll_Gyro instead.")
  (Motor_Roll_Gyro m))

(cl:ensure-generic-function 'Motor_duty-val :lambda-list '(m))
(cl:defmethod Motor_duty-val ((m <Bicycle_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-msg:Motor_duty-val is deprecated.  Use can_communication-msg:Motor_duty instead.")
  (Motor_duty m))

(cl:ensure-generic-function 'Motor_rpm-val :lambda-list '(m))
(cl:defmethod Motor_rpm-val ((m <Bicycle_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-msg:Motor_rpm-val is deprecated.  Use can_communication-msg:Motor_rpm instead.")
  (Motor_rpm m))

(cl:ensure-generic-function 'Device_ID-val :lambda-list '(m))
(cl:defmethod Device_ID-val ((m <Bicycle_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-msg:Device_ID-val is deprecated.  Use can_communication-msg:Device_ID instead.")
  (Device_ID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bicycle_msg>) ostream)
  "Serializes a message object of type '<Bicycle_msg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Servo_Direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Bicycle_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Motor_Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Motor_Roll_Gyro))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Motor_duty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Motor_rpm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Device_ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bicycle_msg>) istream)
  "Deserializes a message object of type '<Bicycle_msg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Servo_Direction) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Bicycle_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Motor_Roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Motor_Roll_Gyro) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Motor_duty) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Motor_rpm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Device_ID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bicycle_msg>)))
  "Returns string type for a message object of type '<Bicycle_msg>"
  "can_communication/Bicycle_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bicycle_msg)))
  "Returns string type for a message object of type 'Bicycle_msg"
  "can_communication/Bicycle_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bicycle_msg>)))
  "Returns md5sum for a message object of type '<Bicycle_msg>"
  "8bec6b5b94fc5c7677fbd09497b317d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bicycle_msg)))
  "Returns md5sum for a message object of type 'Bicycle_msg"
  "8bec6b5b94fc5c7677fbd09497b317d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bicycle_msg>)))
  "Returns full string definition for message of type '<Bicycle_msg>"
  (cl:format cl:nil "float32 Servo_Direction~%float32 Bicycle_voltage~%float32 Motor_Roll~%float32 Motor_Roll_Gyro~%float32 Motor_duty~%int32   Motor_rpm~%int16   Device_ID~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bicycle_msg)))
  "Returns full string definition for message of type 'Bicycle_msg"
  (cl:format cl:nil "float32 Servo_Direction~%float32 Bicycle_voltage~%float32 Motor_Roll~%float32 Motor_Roll_Gyro~%float32 Motor_duty~%int32   Motor_rpm~%int16   Device_ID~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bicycle_msg>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bicycle_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'Bicycle_msg
    (cl:cons ':Servo_Direction (Servo_Direction msg))
    (cl:cons ':Bicycle_voltage (Bicycle_voltage msg))
    (cl:cons ':Motor_Roll (Motor_Roll msg))
    (cl:cons ':Motor_Roll_Gyro (Motor_Roll_Gyro msg))
    (cl:cons ':Motor_duty (Motor_duty msg))
    (cl:cons ':Motor_rpm (Motor_rpm msg))
    (cl:cons ':Device_ID (Device_ID msg))
))
