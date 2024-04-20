; Auto-generated. Do not edit!


(cl:in-package fdilink_ahrs-msg)


;//! \htmlinclude original_imu.msg.html

(cl:defclass <original_imu> (roslisp-msg-protocol:ros-message)
  ((gyroscope_x
    :reader gyroscope_x
    :initarg :gyroscope_x
    :type cl:float
    :initform 0.0)
   (gyroscope_y
    :reader gyroscope_y
    :initarg :gyroscope_y
    :type cl:float
    :initform 0.0)
   (gyroscope_z
    :reader gyroscope_z
    :initarg :gyroscope_z
    :type cl:float
    :initform 0.0)
   (accelerometer_x
    :reader accelerometer_x
    :initarg :accelerometer_x
    :type cl:float
    :initform 0.0)
   (accelerometer_y
    :reader accelerometer_y
    :initarg :accelerometer_y
    :type cl:float
    :initform 0.0)
   (accelerometer_z
    :reader accelerometer_z
    :initarg :accelerometer_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass original_imu (<original_imu>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <original_imu>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'original_imu)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fdilink_ahrs-msg:<original_imu> is deprecated: use fdilink_ahrs-msg:original_imu instead.")))

(cl:ensure-generic-function 'gyroscope_x-val :lambda-list '(m))
(cl:defmethod gyroscope_x-val ((m <original_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fdilink_ahrs-msg:gyroscope_x-val is deprecated.  Use fdilink_ahrs-msg:gyroscope_x instead.")
  (gyroscope_x m))

(cl:ensure-generic-function 'gyroscope_y-val :lambda-list '(m))
(cl:defmethod gyroscope_y-val ((m <original_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fdilink_ahrs-msg:gyroscope_y-val is deprecated.  Use fdilink_ahrs-msg:gyroscope_y instead.")
  (gyroscope_y m))

(cl:ensure-generic-function 'gyroscope_z-val :lambda-list '(m))
(cl:defmethod gyroscope_z-val ((m <original_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fdilink_ahrs-msg:gyroscope_z-val is deprecated.  Use fdilink_ahrs-msg:gyroscope_z instead.")
  (gyroscope_z m))

(cl:ensure-generic-function 'accelerometer_x-val :lambda-list '(m))
(cl:defmethod accelerometer_x-val ((m <original_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fdilink_ahrs-msg:accelerometer_x-val is deprecated.  Use fdilink_ahrs-msg:accelerometer_x instead.")
  (accelerometer_x m))

(cl:ensure-generic-function 'accelerometer_y-val :lambda-list '(m))
(cl:defmethod accelerometer_y-val ((m <original_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fdilink_ahrs-msg:accelerometer_y-val is deprecated.  Use fdilink_ahrs-msg:accelerometer_y instead.")
  (accelerometer_y m))

(cl:ensure-generic-function 'accelerometer_z-val :lambda-list '(m))
(cl:defmethod accelerometer_z-val ((m <original_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fdilink_ahrs-msg:accelerometer_z-val is deprecated.  Use fdilink_ahrs-msg:accelerometer_z instead.")
  (accelerometer_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <original_imu>) ostream)
  "Serializes a message object of type '<original_imu>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyroscope_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyroscope_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyroscope_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accelerometer_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accelerometer_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accelerometer_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <original_imu>) istream)
  "Deserializes a message object of type '<original_imu>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyroscope_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyroscope_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyroscope_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accelerometer_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accelerometer_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accelerometer_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<original_imu>)))
  "Returns string type for a message object of type '<original_imu>"
  "fdilink_ahrs/original_imu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'original_imu)))
  "Returns string type for a message object of type 'original_imu"
  "fdilink_ahrs/original_imu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<original_imu>)))
  "Returns md5sum for a message object of type '<original_imu>"
  "31a1f3dfbaee0ca05acbe4ee8ad9dfc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'original_imu)))
  "Returns md5sum for a message object of type 'original_imu"
  "31a1f3dfbaee0ca05acbe4ee8ad9dfc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<original_imu>)))
  "Returns full string definition for message of type '<original_imu>"
  (cl:format cl:nil "float32 gyroscope_x~%float32 gyroscope_y~%float32 gyroscope_z~%float32 accelerometer_x~%float32 accelerometer_y~%float32 accelerometer_z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'original_imu)))
  "Returns full string definition for message of type 'original_imu"
  (cl:format cl:nil "float32 gyroscope_x~%float32 gyroscope_y~%float32 gyroscope_z~%float32 accelerometer_x~%float32 accelerometer_y~%float32 accelerometer_z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <original_imu>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <original_imu>))
  "Converts a ROS message object to a list"
  (cl:list 'original_imu
    (cl:cons ':gyroscope_x (gyroscope_x msg))
    (cl:cons ':gyroscope_y (gyroscope_y msg))
    (cl:cons ':gyroscope_z (gyroscope_z msg))
    (cl:cons ':accelerometer_x (accelerometer_x msg))
    (cl:cons ':accelerometer_y (accelerometer_y msg))
    (cl:cons ':accelerometer_z (accelerometer_z msg))
))
