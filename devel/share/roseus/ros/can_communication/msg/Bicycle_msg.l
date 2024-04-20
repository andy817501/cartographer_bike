;; Auto-generated. Do not edit!


(when (boundp 'can_communication::Bicycle_msg)
  (if (not (find-package "CAN_COMMUNICATION"))
    (make-package "CAN_COMMUNICATION"))
  (shadow 'Bicycle_msg (find-package "CAN_COMMUNICATION")))
(unless (find-package "CAN_COMMUNICATION::BICYCLE_MSG")
  (make-package "CAN_COMMUNICATION::BICYCLE_MSG"))

(in-package "ROS")
;;//! \htmlinclude Bicycle_msg.msg.html


(defclass can_communication::Bicycle_msg
  :super ros::object
  :slots (_Servo_Direction _Bicycle_voltage _Motor_Roll _Motor_Roll_Gyro _Motor_duty _Motor_rpm _Device_ID ))

(defmethod can_communication::Bicycle_msg
  (:init
   (&key
    ((:Servo_Direction __Servo_Direction) 0.0)
    ((:Bicycle_voltage __Bicycle_voltage) 0.0)
    ((:Motor_Roll __Motor_Roll) 0.0)
    ((:Motor_Roll_Gyro __Motor_Roll_Gyro) 0.0)
    ((:Motor_duty __Motor_duty) 0.0)
    ((:Motor_rpm __Motor_rpm) 0)
    ((:Device_ID __Device_ID) 0)
    )
   (send-super :init)
   (setq _Servo_Direction (float __Servo_Direction))
   (setq _Bicycle_voltage (float __Bicycle_voltage))
   (setq _Motor_Roll (float __Motor_Roll))
   (setq _Motor_Roll_Gyro (float __Motor_Roll_Gyro))
   (setq _Motor_duty (float __Motor_duty))
   (setq _Motor_rpm (round __Motor_rpm))
   (setq _Device_ID (round __Device_ID))
   self)
  (:Servo_Direction
   (&optional __Servo_Direction)
   (if __Servo_Direction (setq _Servo_Direction __Servo_Direction)) _Servo_Direction)
  (:Bicycle_voltage
   (&optional __Bicycle_voltage)
   (if __Bicycle_voltage (setq _Bicycle_voltage __Bicycle_voltage)) _Bicycle_voltage)
  (:Motor_Roll
   (&optional __Motor_Roll)
   (if __Motor_Roll (setq _Motor_Roll __Motor_Roll)) _Motor_Roll)
  (:Motor_Roll_Gyro
   (&optional __Motor_Roll_Gyro)
   (if __Motor_Roll_Gyro (setq _Motor_Roll_Gyro __Motor_Roll_Gyro)) _Motor_Roll_Gyro)
  (:Motor_duty
   (&optional __Motor_duty)
   (if __Motor_duty (setq _Motor_duty __Motor_duty)) _Motor_duty)
  (:Motor_rpm
   (&optional __Motor_rpm)
   (if __Motor_rpm (setq _Motor_rpm __Motor_rpm)) _Motor_rpm)
  (:Device_ID
   (&optional __Device_ID)
   (if __Device_ID (setq _Device_ID __Device_ID)) _Device_ID)
  (:serialization-length
   ()
   (+
    ;; float32 _Servo_Direction
    4
    ;; float32 _Bicycle_voltage
    4
    ;; float32 _Motor_Roll
    4
    ;; float32 _Motor_Roll_Gyro
    4
    ;; float32 _Motor_duty
    4
    ;; int32 _Motor_rpm
    4
    ;; int16 _Device_ID
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Servo_Direction
       (sys::poke _Servo_Direction (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Bicycle_voltage
       (sys::poke _Bicycle_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Motor_Roll
       (sys::poke _Motor_Roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Motor_Roll_Gyro
       (sys::poke _Motor_Roll_Gyro (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Motor_duty
       (sys::poke _Motor_duty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _Motor_rpm
       (write-long _Motor_rpm s)
     ;; int16 _Device_ID
       (write-word _Device_ID s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Servo_Direction
     (setq _Servo_Direction (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Bicycle_voltage
     (setq _Bicycle_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Motor_Roll
     (setq _Motor_Roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Motor_Roll_Gyro
     (setq _Motor_Roll_Gyro (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Motor_duty
     (setq _Motor_duty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _Motor_rpm
     (setq _Motor_rpm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _Device_ID
     (setq _Device_ID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get can_communication::Bicycle_msg :md5sum-) "8bec6b5b94fc5c7677fbd09497b317d9")
(setf (get can_communication::Bicycle_msg :datatype-) "can_communication/Bicycle_msg")
(setf (get can_communication::Bicycle_msg :definition-)
      "float32 Servo_Direction
float32 Bicycle_voltage
float32 Motor_Roll
float32 Motor_Roll_Gyro
float32 Motor_duty
int32   Motor_rpm
int16   Device_ID
")



(provide :can_communication/Bicycle_msg "8bec6b5b94fc5c7677fbd09497b317d9")


