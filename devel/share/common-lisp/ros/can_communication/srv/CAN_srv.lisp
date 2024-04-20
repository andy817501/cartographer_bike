; Auto-generated. Do not edit!


(cl:in-package can_communication-srv)


;//! \htmlinclude CAN_srv-request.msg.html

(cl:defclass <CAN_srv-request> (roslisp-msg-protocol:ros-message)
  ((Servo_Direction
    :reader Servo_Direction
    :initarg :Servo_Direction
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CAN_srv-request (<CAN_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CAN_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CAN_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_communication-srv:<CAN_srv-request> is deprecated: use can_communication-srv:CAN_srv-request instead.")))

(cl:ensure-generic-function 'Servo_Direction-val :lambda-list '(m))
(cl:defmethod Servo_Direction-val ((m <CAN_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-srv:Servo_Direction-val is deprecated.  Use can_communication-srv:Servo_Direction instead.")
  (Servo_Direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CAN_srv-request>) ostream)
  "Serializes a message object of type '<CAN_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'Servo_Direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CAN_srv-request>) istream)
  "Deserializes a message object of type '<CAN_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Servo_Direction) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CAN_srv-request>)))
  "Returns string type for a service object of type '<CAN_srv-request>"
  "can_communication/CAN_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CAN_srv-request)))
  "Returns string type for a service object of type 'CAN_srv-request"
  "can_communication/CAN_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CAN_srv-request>)))
  "Returns md5sum for a message object of type '<CAN_srv-request>"
  "94cc95eb4903a2ce4eb831852c11ea30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CAN_srv-request)))
  "Returns md5sum for a message object of type 'CAN_srv-request"
  "94cc95eb4903a2ce4eb831852c11ea30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CAN_srv-request>)))
  "Returns full string definition for message of type '<CAN_srv-request>"
  (cl:format cl:nil "int16 Servo_Direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CAN_srv-request)))
  "Returns full string definition for message of type 'CAN_srv-request"
  (cl:format cl:nil "int16 Servo_Direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CAN_srv-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CAN_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CAN_srv-request
    (cl:cons ':Servo_Direction (Servo_Direction msg))
))
;//! \htmlinclude CAN_srv-response.msg.html

(cl:defclass <CAN_srv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass CAN_srv-response (<CAN_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CAN_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CAN_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_communication-srv:<CAN_srv-response> is deprecated: use can_communication-srv:CAN_srv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CAN_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-srv:success-val is deprecated.  Use can_communication-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <CAN_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-srv:message-val is deprecated.  Use can_communication-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CAN_srv-response>) ostream)
  "Serializes a message object of type '<CAN_srv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CAN_srv-response>) istream)
  "Deserializes a message object of type '<CAN_srv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CAN_srv-response>)))
  "Returns string type for a service object of type '<CAN_srv-response>"
  "can_communication/CAN_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CAN_srv-response)))
  "Returns string type for a service object of type 'CAN_srv-response"
  "can_communication/CAN_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CAN_srv-response>)))
  "Returns md5sum for a message object of type '<CAN_srv-response>"
  "94cc95eb4903a2ce4eb831852c11ea30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CAN_srv-response)))
  "Returns md5sum for a message object of type 'CAN_srv-response"
  "94cc95eb4903a2ce4eb831852c11ea30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CAN_srv-response>)))
  "Returns full string definition for message of type '<CAN_srv-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CAN_srv-response)))
  "Returns full string definition for message of type 'CAN_srv-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CAN_srv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CAN_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CAN_srv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CAN_srv)))
  'CAN_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CAN_srv)))
  'CAN_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CAN_srv)))
  "Returns string type for a service object of type '<CAN_srv>"
  "can_communication/CAN_srv")