;; Auto-generated. Do not edit!


(when (boundp 'can_communication::VESC_srv)
  (if (not (find-package "CAN_COMMUNICATION"))
    (make-package "CAN_COMMUNICATION"))
  (shadow 'VESC_srv (find-package "CAN_COMMUNICATION")))
(unless (find-package "CAN_COMMUNICATION::VESC_SRV")
  (make-package "CAN_COMMUNICATION::VESC_SRV"))
(unless (find-package "CAN_COMMUNICATION::VESC_SRVREQUEST")
  (make-package "CAN_COMMUNICATION::VESC_SRVREQUEST"))
(unless (find-package "CAN_COMMUNICATION::VESC_SRVRESPONSE")
  (make-package "CAN_COMMUNICATION::VESC_SRVRESPONSE"))

(in-package "ROS")





(defclass can_communication::VESC_srvRequest
  :super ros::object
  :slots (_Motor_duty _Motor_rpm ))

(defmethod can_communication::VESC_srvRequest
  (:init
   (&key
    ((:Motor_duty __Motor_duty) 0.0)
    ((:Motor_rpm __Motor_rpm) 0)
    )
   (send-super :init)
   (setq _Motor_duty (float __Motor_duty))
   (setq _Motor_rpm (round __Motor_rpm))
   self)
  (:Motor_duty
   (&optional __Motor_duty)
   (if __Motor_duty (setq _Motor_duty __Motor_duty)) _Motor_duty)
  (:Motor_rpm
   (&optional __Motor_rpm)
   (if __Motor_rpm (setq _Motor_rpm __Motor_rpm)) _Motor_rpm)
  (:serialization-length
   ()
   (+
    ;; float32 _Motor_duty
    4
    ;; int16 _Motor_rpm
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Motor_duty
       (sys::poke _Motor_duty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _Motor_rpm
       (write-word _Motor_rpm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Motor_duty
     (setq _Motor_duty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _Motor_rpm
     (setq _Motor_rpm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass can_communication::VESC_srvResponse
  :super ros::object
  :slots (_success _message ))

(defmethod can_communication::VESC_srvResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass can_communication::VESC_srv
  :super ros::object
  :slots ())

(setf (get can_communication::VESC_srv :md5sum-) "97cac9bdb9cfc7ba3044e440153b1b6d")
(setf (get can_communication::VESC_srv :datatype-) "can_communication/VESC_srv")
(setf (get can_communication::VESC_srv :request) can_communication::VESC_srvRequest)
(setf (get can_communication::VESC_srv :response) can_communication::VESC_srvResponse)

(defmethod can_communication::VESC_srvRequest
  (:response () (instance can_communication::VESC_srvResponse :init)))

(setf (get can_communication::VESC_srvRequest :md5sum-) "97cac9bdb9cfc7ba3044e440153b1b6d")
(setf (get can_communication::VESC_srvRequest :datatype-) "can_communication/VESC_srvRequest")
(setf (get can_communication::VESC_srvRequest :definition-)
      "float32 Motor_duty
int16 Motor_rpm
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get can_communication::VESC_srvResponse :md5sum-) "97cac9bdb9cfc7ba3044e440153b1b6d")
(setf (get can_communication::VESC_srvResponse :datatype-) "can_communication/VESC_srvResponse")
(setf (get can_communication::VESC_srvResponse :definition-)
      "float32 Motor_duty
int16 Motor_rpm
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :can_communication/VESC_srv "97cac9bdb9cfc7ba3044e440153b1b6d")


