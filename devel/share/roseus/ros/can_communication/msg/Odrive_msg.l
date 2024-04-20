;; Auto-generated. Do not edit!


(when (boundp 'can_communication::Odrive_msg)
  (if (not (find-package "CAN_COMMUNICATION"))
    (make-package "CAN_COMMUNICATION"))
  (shadow 'Odrive_msg (find-package "CAN_COMMUNICATION")))
(unless (find-package "CAN_COMMUNICATION::ODRIVE_MSG")
  (make-package "CAN_COMMUNICATION::ODRIVE_MSG"))

(in-package "ROS")
;;//! \htmlinclude Odrive_msg.msg.html


(defclass can_communication::Odrive_msg
  :super ros::object
  :slots (_Device_ID _Command _Motor_rpm _Motor_pos _Motor_torque _Motor_voltage _Motor_current ))

(defmethod can_communication::Odrive_msg
  (:init
   (&key
    ((:Device_ID __Device_ID) 0)
    ((:Command __Command) 0)
    ((:Motor_rpm __Motor_rpm) 0.0)
    ((:Motor_pos __Motor_pos) 0.0)
    ((:Motor_torque __Motor_torque) 0.0)
    ((:Motor_voltage __Motor_voltage) 0.0)
    ((:Motor_current __Motor_current) 0.0)
    )
   (send-super :init)
   (setq _Device_ID (round __Device_ID))
   (setq _Command (round __Command))
   (setq _Motor_rpm (float __Motor_rpm))
   (setq _Motor_pos (float __Motor_pos))
   (setq _Motor_torque (float __Motor_torque))
   (setq _Motor_voltage (float __Motor_voltage))
   (setq _Motor_current (float __Motor_current))
   self)
  (:Device_ID
   (&optional __Device_ID)
   (if __Device_ID (setq _Device_ID __Device_ID)) _Device_ID)
  (:Command
   (&optional __Command)
   (if __Command (setq _Command __Command)) _Command)
  (:Motor_rpm
   (&optional __Motor_rpm)
   (if __Motor_rpm (setq _Motor_rpm __Motor_rpm)) _Motor_rpm)
  (:Motor_pos
   (&optional __Motor_pos)
   (if __Motor_pos (setq _Motor_pos __Motor_pos)) _Motor_pos)
  (:Motor_torque
   (&optional __Motor_torque)
   (if __Motor_torque (setq _Motor_torque __Motor_torque)) _Motor_torque)
  (:Motor_voltage
   (&optional __Motor_voltage)
   (if __Motor_voltage (setq _Motor_voltage __Motor_voltage)) _Motor_voltage)
  (:Motor_current
   (&optional __Motor_current)
   (if __Motor_current (setq _Motor_current __Motor_current)) _Motor_current)
  (:serialization-length
   ()
   (+
    ;; int16 _Device_ID
    2
    ;; int16 _Command
    2
    ;; float32 _Motor_rpm
    4
    ;; float32 _Motor_pos
    4
    ;; float32 _Motor_torque
    4
    ;; float32 _Motor_voltage
    4
    ;; float32 _Motor_current
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _Device_ID
       (write-word _Device_ID s)
     ;; int16 _Command
       (write-word _Command s)
     ;; float32 _Motor_rpm
       (sys::poke _Motor_rpm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Motor_pos
       (sys::poke _Motor_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Motor_torque
       (sys::poke _Motor_torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Motor_voltage
       (sys::poke _Motor_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Motor_current
       (sys::poke _Motor_current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _Device_ID
     (setq _Device_ID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Command
     (setq _Command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _Motor_rpm
     (setq _Motor_rpm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Motor_pos
     (setq _Motor_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Motor_torque
     (setq _Motor_torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Motor_voltage
     (setq _Motor_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Motor_current
     (setq _Motor_current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get can_communication::Odrive_msg :md5sum-) "42d24095fdb231486a76000750ac32b2")
(setf (get can_communication::Odrive_msg :datatype-) "can_communication/Odrive_msg")
(setf (get can_communication::Odrive_msg :definition-)
      "int16     Device_ID
int16     Command
float32   Motor_rpm
float32   Motor_pos
float32   Motor_torque
float32   Motor_voltage
float32   Motor_current
")



(provide :can_communication/Odrive_msg "42d24095fdb231486a76000750ac32b2")


