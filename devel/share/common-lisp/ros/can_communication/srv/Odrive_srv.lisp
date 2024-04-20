; Auto-generated. Do not edit!


(cl:in-package can_communication-srv)


;//! \htmlinclude Odrive_srv-request.msg.html

(cl:defclass <Odrive_srv-request> (roslisp-msg-protocol:ros-message)
  ((Command
    :reader Command
    :initarg :Command
    :type cl:fixnum
    :initform 0)
   (Motor_pos
    :reader Motor_pos
    :initarg :Motor_pos
    :type cl:float
    :initform 0.0)
   (Motor_vel
    :reader Motor_vel
    :initarg :Motor_vel
    :type cl:float
    :initform 0.0)
   (Motor_tor
    :reader Motor_tor
    :initarg :Motor_tor
    :type cl:float
    :initform 0.0))
)

(cl:defclass Odrive_srv-request (<Odrive_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Odrive_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Odrive_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_communication-srv:<Odrive_srv-request> is deprecated: use can_communication-srv:Odrive_srv-request instead.")))

(cl:ensure-generic-function 'Command-val :lambda-list '(m))
(cl:defmethod Command-val ((m <Odrive_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-srv:Command-val is deprecated.  Use can_communication-srv:Command instead.")
  (Command m))

(cl:ensure-generic-function 'Motor_pos-val :lambda-list '(m))
(cl:defmethod Motor_pos-val ((m <Odrive_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-srv:Motor_pos-val is deprecated.  Use can_communication-srv:Motor_pos instead.")
  (Motor_pos m))

(cl:ensure-generic-function 'Motor_vel-val :lambda-list '(m))
(cl:defmethod Motor_vel-val ((m <Odrive_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-srv:Motor_vel-val is deprecated.  Use can_communication-srv:Motor_vel instead.")
  (Motor_vel m))

(cl:ensure-generic-function 'Motor_tor-val :lambda-list '(m))
(cl:defmethod Motor_tor-val ((m <Odrive_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-srv:Motor_tor-val is deprecated.  Use can_communication-srv:Motor_tor instead.")
  (Motor_tor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Odrive_srv-request>) ostream)
  "Serializes a message object of type '<Odrive_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'Command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Motor_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Motor_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Motor_tor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Odrive_srv-request>) istream)
  "Deserializes a message object of type '<Odrive_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Command) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
    (cl:setf (cl:slot-value msg 'Motor_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Motor_tor) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Odrive_srv-request>)))
  "Returns string type for a service object of type '<Odrive_srv-request>"
  "can_communication/Odrive_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Odrive_srv-request)))
  "Returns string type for a service object of type 'Odrive_srv-request"
  "can_communication/Odrive_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Odrive_srv-request>)))
  "Returns md5sum for a message object of type '<Odrive_srv-request>"
  "e522f0b6d497b2dedc7ffe665b11fc10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odrive_srv-request)))
  "Returns md5sum for a message object of type 'Odrive_srv-request"
  "e522f0b6d497b2dedc7ffe665b11fc10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Odrive_srv-request>)))
  "Returns full string definition for message of type '<Odrive_srv-request>"
  (cl:format cl:nil "int16   Command~%float32 Motor_pos~%float32 Motor_vel~%float32 Motor_tor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Odrive_srv-request)))
  "Returns full string definition for message of type 'Odrive_srv-request"
  (cl:format cl:nil "int16   Command~%float32 Motor_pos~%float32 Motor_vel~%float32 Motor_tor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Odrive_srv-request>))
  (cl:+ 0
     2
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Odrive_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Odrive_srv-request
    (cl:cons ':Command (Command msg))
    (cl:cons ':Motor_pos (Motor_pos msg))
    (cl:cons ':Motor_vel (Motor_vel msg))
    (cl:cons ':Motor_tor (Motor_tor msg))
))
;//! \htmlinclude Odrive_srv-response.msg.html

(cl:defclass <Odrive_srv-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Odrive_srv-response (<Odrive_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Odrive_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Odrive_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_communication-srv:<Odrive_srv-response> is deprecated: use can_communication-srv:Odrive_srv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Odrive_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-srv:success-val is deprecated.  Use can_communication-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Odrive_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-srv:message-val is deprecated.  Use can_communication-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Odrive_srv-response>) ostream)
  "Serializes a message object of type '<Odrive_srv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Odrive_srv-response>) istream)
  "Deserializes a message object of type '<Odrive_srv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Odrive_srv-response>)))
  "Returns string type for a service object of type '<Odrive_srv-response>"
  "can_communication/Odrive_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Odrive_srv-response)))
  "Returns string type for a service object of type 'Odrive_srv-response"
  "can_communication/Odrive_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Odrive_srv-response>)))
  "Returns md5sum for a message object of type '<Odrive_srv-response>"
  "e522f0b6d497b2dedc7ffe665b11fc10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Odrive_srv-response)))
  "Returns md5sum for a message object of type 'Odrive_srv-response"
  "e522f0b6d497b2dedc7ffe665b11fc10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Odrive_srv-response>)))
  "Returns full string definition for message of type '<Odrive_srv-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Odrive_srv-response)))
  "Returns full string definition for message of type 'Odrive_srv-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Odrive_srv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Odrive_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Odrive_srv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Odrive_srv)))
  'Odrive_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Odrive_srv)))
  'Odrive_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Odrive_srv)))
  "Returns string type for a service object of type '<Odrive_srv>"
  "can_communication/Odrive_srv")