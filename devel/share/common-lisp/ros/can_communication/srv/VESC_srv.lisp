; Auto-generated. Do not edit!


(cl:in-package can_communication-srv)


;//! \htmlinclude VESC_srv-request.msg.html

(cl:defclass <VESC_srv-request> (roslisp-msg-protocol:ros-message)
  ((Motor_duty
    :reader Motor_duty
    :initarg :Motor_duty
    :type cl:float
    :initform 0.0)
   (Motor_rpm
    :reader Motor_rpm
    :initarg :Motor_rpm
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VESC_srv-request (<VESC_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VESC_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VESC_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_communication-srv:<VESC_srv-request> is deprecated: use can_communication-srv:VESC_srv-request instead.")))

(cl:ensure-generic-function 'Motor_duty-val :lambda-list '(m))
(cl:defmethod Motor_duty-val ((m <VESC_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-srv:Motor_duty-val is deprecated.  Use can_communication-srv:Motor_duty instead.")
  (Motor_duty m))

(cl:ensure-generic-function 'Motor_rpm-val :lambda-list '(m))
(cl:defmethod Motor_rpm-val ((m <VESC_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-srv:Motor_rpm-val is deprecated.  Use can_communication-srv:Motor_rpm instead.")
  (Motor_rpm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VESC_srv-request>) ostream)
  "Serializes a message object of type '<VESC_srv-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Motor_duty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Motor_rpm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VESC_srv-request>) istream)
  "Deserializes a message object of type '<VESC_srv-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Motor_duty) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Motor_rpm) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VESC_srv-request>)))
  "Returns string type for a service object of type '<VESC_srv-request>"
  "can_communication/VESC_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VESC_srv-request)))
  "Returns string type for a service object of type 'VESC_srv-request"
  "can_communication/VESC_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VESC_srv-request>)))
  "Returns md5sum for a message object of type '<VESC_srv-request>"
  "97cac9bdb9cfc7ba3044e440153b1b6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VESC_srv-request)))
  "Returns md5sum for a message object of type 'VESC_srv-request"
  "97cac9bdb9cfc7ba3044e440153b1b6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VESC_srv-request>)))
  "Returns full string definition for message of type '<VESC_srv-request>"
  (cl:format cl:nil "float32 Motor_duty~%int16 Motor_rpm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VESC_srv-request)))
  "Returns full string definition for message of type 'VESC_srv-request"
  (cl:format cl:nil "float32 Motor_duty~%int16 Motor_rpm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VESC_srv-request>))
  (cl:+ 0
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VESC_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VESC_srv-request
    (cl:cons ':Motor_duty (Motor_duty msg))
    (cl:cons ':Motor_rpm (Motor_rpm msg))
))
;//! \htmlinclude VESC_srv-response.msg.html

(cl:defclass <VESC_srv-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass VESC_srv-response (<VESC_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VESC_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VESC_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_communication-srv:<VESC_srv-response> is deprecated: use can_communication-srv:VESC_srv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <VESC_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-srv:success-val is deprecated.  Use can_communication-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <VESC_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_communication-srv:message-val is deprecated.  Use can_communication-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VESC_srv-response>) ostream)
  "Serializes a message object of type '<VESC_srv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VESC_srv-response>) istream)
  "Deserializes a message object of type '<VESC_srv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VESC_srv-response>)))
  "Returns string type for a service object of type '<VESC_srv-response>"
  "can_communication/VESC_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VESC_srv-response)))
  "Returns string type for a service object of type 'VESC_srv-response"
  "can_communication/VESC_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VESC_srv-response>)))
  "Returns md5sum for a message object of type '<VESC_srv-response>"
  "97cac9bdb9cfc7ba3044e440153b1b6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VESC_srv-response)))
  "Returns md5sum for a message object of type 'VESC_srv-response"
  "97cac9bdb9cfc7ba3044e440153b1b6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VESC_srv-response>)))
  "Returns full string definition for message of type '<VESC_srv-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VESC_srv-response)))
  "Returns full string definition for message of type 'VESC_srv-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VESC_srv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VESC_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VESC_srv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VESC_srv)))
  'VESC_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VESC_srv)))
  'VESC_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VESC_srv)))
  "Returns string type for a service object of type '<VESC_srv>"
  "can_communication/VESC_srv")