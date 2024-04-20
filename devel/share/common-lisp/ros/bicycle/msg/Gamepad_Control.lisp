; Auto-generated. Do not edit!


(cl:in-package bicycle-msg)


;//! \htmlinclude Gamepad_Control.msg.html

(cl:defclass <Gamepad_Control> (roslisp-msg-protocol:ros-message)
  ((LeftHatX
    :reader LeftHatX
    :initarg :LeftHatX
    :type cl:integer
    :initform 0)
   (LeftHatY
    :reader LeftHatY
    :initarg :LeftHatY
    :type cl:integer
    :initform 0))
)

(cl:defclass Gamepad_Control (<Gamepad_Control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gamepad_Control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gamepad_Control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bicycle-msg:<Gamepad_Control> is deprecated: use bicycle-msg:Gamepad_Control instead.")))

(cl:ensure-generic-function 'LeftHatX-val :lambda-list '(m))
(cl:defmethod LeftHatX-val ((m <Gamepad_Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bicycle-msg:LeftHatX-val is deprecated.  Use bicycle-msg:LeftHatX instead.")
  (LeftHatX m))

(cl:ensure-generic-function 'LeftHatY-val :lambda-list '(m))
(cl:defmethod LeftHatY-val ((m <Gamepad_Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bicycle-msg:LeftHatY-val is deprecated.  Use bicycle-msg:LeftHatY instead.")
  (LeftHatY m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gamepad_Control>) ostream)
  "Serializes a message object of type '<Gamepad_Control>"
  (cl:let* ((signed (cl:slot-value msg 'LeftHatX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'LeftHatY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gamepad_Control>) istream)
  "Deserializes a message object of type '<Gamepad_Control>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LeftHatX) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LeftHatY) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gamepad_Control>)))
  "Returns string type for a message object of type '<Gamepad_Control>"
  "bicycle/Gamepad_Control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gamepad_Control)))
  "Returns string type for a message object of type 'Gamepad_Control"
  "bicycle/Gamepad_Control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gamepad_Control>)))
  "Returns md5sum for a message object of type '<Gamepad_Control>"
  "10cad8b4f3fb64b90750ff920467060e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gamepad_Control)))
  "Returns md5sum for a message object of type 'Gamepad_Control"
  "10cad8b4f3fb64b90750ff920467060e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gamepad_Control>)))
  "Returns full string definition for message of type '<Gamepad_Control>"
  (cl:format cl:nil "int32 LeftHatX~%int32 LeftHatY~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gamepad_Control)))
  "Returns full string definition for message of type 'Gamepad_Control"
  (cl:format cl:nil "int32 LeftHatX~%int32 LeftHatY~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gamepad_Control>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gamepad_Control>))
  "Converts a ROS message object to a list"
  (cl:list 'Gamepad_Control
    (cl:cons ':LeftHatX (LeftHatX msg))
    (cl:cons ':LeftHatY (LeftHatY msg))
))
