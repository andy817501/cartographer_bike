; Auto-generated. Do not edit!


(cl:in-package bicycle-msg)


;//! \htmlinclude Bicycle_Roll.msg.html

(cl:defclass <Bicycle_Roll> (roslisp-msg-protocol:ros-message)
  ((Roll
    :reader Roll
    :initarg :Roll
    :type cl:float
    :initform 0.0)
   (Roll_Velocitys
    :reader Roll_Velocitys
    :initarg :Roll_Velocitys
    :type cl:float
    :initform 0.0)
   (Set_Torque
    :reader Set_Torque
    :initarg :Set_Torque
    :type cl:float
    :initform 0.0))
)

(cl:defclass Bicycle_Roll (<Bicycle_Roll>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bicycle_Roll>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bicycle_Roll)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bicycle-msg:<Bicycle_Roll> is deprecated: use bicycle-msg:Bicycle_Roll instead.")))

(cl:ensure-generic-function 'Roll-val :lambda-list '(m))
(cl:defmethod Roll-val ((m <Bicycle_Roll>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bicycle-msg:Roll-val is deprecated.  Use bicycle-msg:Roll instead.")
  (Roll m))

(cl:ensure-generic-function 'Roll_Velocitys-val :lambda-list '(m))
(cl:defmethod Roll_Velocitys-val ((m <Bicycle_Roll>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bicycle-msg:Roll_Velocitys-val is deprecated.  Use bicycle-msg:Roll_Velocitys instead.")
  (Roll_Velocitys m))

(cl:ensure-generic-function 'Set_Torque-val :lambda-list '(m))
(cl:defmethod Set_Torque-val ((m <Bicycle_Roll>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bicycle-msg:Set_Torque-val is deprecated.  Use bicycle-msg:Set_Torque instead.")
  (Set_Torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bicycle_Roll>) ostream)
  "Serializes a message object of type '<Bicycle_Roll>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Roll_Velocitys))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Set_Torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bicycle_Roll>) istream)
  "Deserializes a message object of type '<Bicycle_Roll>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Roll_Velocitys) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Set_Torque) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bicycle_Roll>)))
  "Returns string type for a message object of type '<Bicycle_Roll>"
  "bicycle/Bicycle_Roll")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bicycle_Roll)))
  "Returns string type for a message object of type 'Bicycle_Roll"
  "bicycle/Bicycle_Roll")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bicycle_Roll>)))
  "Returns md5sum for a message object of type '<Bicycle_Roll>"
  "7447a4ccbe634941a8adc55e6847e8a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bicycle_Roll)))
  "Returns md5sum for a message object of type 'Bicycle_Roll"
  "7447a4ccbe634941a8adc55e6847e8a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bicycle_Roll>)))
  "Returns full string definition for message of type '<Bicycle_Roll>"
  (cl:format cl:nil "float32 Roll~%float32 Roll_Velocitys~%float32 Set_Torque~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bicycle_Roll)))
  "Returns full string definition for message of type 'Bicycle_Roll"
  (cl:format cl:nil "float32 Roll~%float32 Roll_Velocitys~%float32 Set_Torque~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bicycle_Roll>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bicycle_Roll>))
  "Converts a ROS message object to a list"
  (cl:list 'Bicycle_Roll
    (cl:cons ':Roll (Roll msg))
    (cl:cons ':Roll_Velocitys (Roll_Velocitys msg))
    (cl:cons ':Set_Torque (Set_Torque msg))
))
