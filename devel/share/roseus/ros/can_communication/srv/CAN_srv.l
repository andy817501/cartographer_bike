;; Auto-generated. Do not edit!


(when (boundp 'can_communication::CAN_srv)
  (if (not (find-package "CAN_COMMUNICATION"))
    (make-package "CAN_COMMUNICATION"))
  (shadow 'CAN_srv (find-package "CAN_COMMUNICATION")))
(unless (find-package "CAN_COMMUNICATION::CAN_SRV")
  (make-package "CAN_COMMUNICATION::CAN_SRV"))
(unless (find-package "CAN_COMMUNICATION::CAN_SRVREQUEST")
  (make-package "CAN_COMMUNICATION::CAN_SRVREQUEST"))
(unless (find-package "CAN_COMMUNICATION::CAN_SRVRESPONSE")
  (make-package "CAN_COMMUNICATION::CAN_SRVRESPONSE"))

(in-package "ROS")





(defclass can_communication::CAN_srvRequest
  :super ros::object
  :slots (_Servo_Direction ))

(defmethod can_communication::CAN_srvRequest
  (:init
   (&key
    ((:Servo_Direction __Servo_Direction) 0)
    )
   (send-super :init)
   (setq _Servo_Direction (round __Servo_Direction))
   self)
  (:Servo_Direction
   (&optional __Servo_Direction)
   (if __Servo_Direction (setq _Servo_Direction __Servo_Direction)) _Servo_Direction)
  (:serialization-length
   ()
   (+
    ;; int16 _Servo_Direction
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _Servo_Direction
       (write-word _Servo_Direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _Servo_Direction
     (setq _Servo_Direction (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass can_communication::CAN_srvResponse
  :super ros::object
  :slots (_success _message ))

(defmethod can_communication::CAN_srvResponse
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

(defclass can_communication::CAN_srv
  :super ros::object
  :slots ())

(setf (get can_communication::CAN_srv :md5sum-) "94cc95eb4903a2ce4eb831852c11ea30")
(setf (get can_communication::CAN_srv :datatype-) "can_communication/CAN_srv")
(setf (get can_communication::CAN_srv :request) can_communication::CAN_srvRequest)
(setf (get can_communication::CAN_srv :response) can_communication::CAN_srvResponse)

(defmethod can_communication::CAN_srvRequest
  (:response () (instance can_communication::CAN_srvResponse :init)))

(setf (get can_communication::CAN_srvRequest :md5sum-) "94cc95eb4903a2ce4eb831852c11ea30")
(setf (get can_communication::CAN_srvRequest :datatype-) "can_communication/CAN_srvRequest")
(setf (get can_communication::CAN_srvRequest :definition-)
      "int16 Servo_Direction
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get can_communication::CAN_srvResponse :md5sum-) "94cc95eb4903a2ce4eb831852c11ea30")
(setf (get can_communication::CAN_srvResponse :datatype-) "can_communication/CAN_srvResponse")
(setf (get can_communication::CAN_srvResponse :definition-)
      "int16 Servo_Direction
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :can_communication/CAN_srv "94cc95eb4903a2ce4eb831852c11ea30")


