;; Auto-generated. Do not edit!


(when (boundp 'can_communication::Odrive_srv)
  (if (not (find-package "CAN_COMMUNICATION"))
    (make-package "CAN_COMMUNICATION"))
  (shadow 'Odrive_srv (find-package "CAN_COMMUNICATION")))
(unless (find-package "CAN_COMMUNICATION::ODRIVE_SRV")
  (make-package "CAN_COMMUNICATION::ODRIVE_SRV"))
(unless (find-package "CAN_COMMUNICATION::ODRIVE_SRVREQUEST")
  (make-package "CAN_COMMUNICATION::ODRIVE_SRVREQUEST"))
(unless (find-package "CAN_COMMUNICATION::ODRIVE_SRVRESPONSE")
  (make-package "CAN_COMMUNICATION::ODRIVE_SRVRESPONSE"))

(in-package "ROS")





(defclass can_communication::Odrive_srvRequest
  :super ros::object
  :slots (_Command _Motor_pos _Motor_vel _Motor_tor ))

(defmethod can_communication::Odrive_srvRequest
  (:init
   (&key
    ((:Command __Command) 0)
    ((:Motor_pos __Motor_pos) 0.0)
    ((:Motor_vel __Motor_vel) 0.0)
    ((:Motor_tor __Motor_tor) 0.0)
    )
   (send-super :init)
   (setq _Command (round __Command))
   (setq _Motor_pos (float __Motor_pos))
   (setq _Motor_vel (float __Motor_vel))
   (setq _Motor_tor (float __Motor_tor))
   self)
  (:Command
   (&optional __Command)
   (if __Command (setq _Command __Command)) _Command)
  (:Motor_pos
   (&optional __Motor_pos)
   (if __Motor_pos (setq _Motor_pos __Motor_pos)) _Motor_pos)
  (:Motor_vel
   (&optional __Motor_vel)
   (if __Motor_vel (setq _Motor_vel __Motor_vel)) _Motor_vel)
  (:Motor_tor
   (&optional __Motor_tor)
   (if __Motor_tor (setq _Motor_tor __Motor_tor)) _Motor_tor)
  (:serialization-length
   ()
   (+
    ;; int16 _Command
    2
    ;; float32 _Motor_pos
    4
    ;; float32 _Motor_vel
    4
    ;; float32 _Motor_tor
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _Command
       (write-word _Command s)
     ;; float32 _Motor_pos
       (sys::poke _Motor_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Motor_vel
       (sys::poke _Motor_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Motor_tor
       (sys::poke _Motor_tor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _Command
     (setq _Command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _Motor_pos
     (setq _Motor_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Motor_vel
     (setq _Motor_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Motor_tor
     (setq _Motor_tor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass can_communication::Odrive_srvResponse
  :super ros::object
  :slots (_success _message ))

(defmethod can_communication::Odrive_srvResponse
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

(defclass can_communication::Odrive_srv
  :super ros::object
  :slots ())

(setf (get can_communication::Odrive_srv :md5sum-) "e522f0b6d497b2dedc7ffe665b11fc10")
(setf (get can_communication::Odrive_srv :datatype-) "can_communication/Odrive_srv")
(setf (get can_communication::Odrive_srv :request) can_communication::Odrive_srvRequest)
(setf (get can_communication::Odrive_srv :response) can_communication::Odrive_srvResponse)

(defmethod can_communication::Odrive_srvRequest
  (:response () (instance can_communication::Odrive_srvResponse :init)))

(setf (get can_communication::Odrive_srvRequest :md5sum-) "e522f0b6d497b2dedc7ffe665b11fc10")
(setf (get can_communication::Odrive_srvRequest :datatype-) "can_communication/Odrive_srvRequest")
(setf (get can_communication::Odrive_srvRequest :definition-)
      "int16   Command
float32 Motor_pos
float32 Motor_vel
float32 Motor_tor
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get can_communication::Odrive_srvResponse :md5sum-) "e522f0b6d497b2dedc7ffe665b11fc10")
(setf (get can_communication::Odrive_srvResponse :datatype-) "can_communication/Odrive_srvResponse")
(setf (get can_communication::Odrive_srvResponse :definition-)
      "int16   Command
float32 Motor_pos
float32 Motor_vel
float32 Motor_tor
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :can_communication/Odrive_srv "e522f0b6d497b2dedc7ffe665b11fc10")


