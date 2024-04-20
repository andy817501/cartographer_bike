;; Auto-generated. Do not edit!


(when (boundp 'ros_odrive::odrive_msg)
  (if (not (find-package "ROS_ODRIVE"))
    (make-package "ROS_ODRIVE"))
  (shadow 'odrive_msg (find-package "ROS_ODRIVE")))
(unless (find-package "ROS_ODRIVE::ODRIVE_MSG")
  (make-package "ROS_ODRIVE::ODRIVE_MSG"))

(in-package "ROS")
;;//! \htmlinclude odrive_msg.msg.html


(defclass ros_odrive::odrive_msg
  :super ros::object
  :slots (_target _vbus _error0 _state0 _vel0 _pos0 _curr0B _curr0C _temp0 ))

(defmethod ros_odrive::odrive_msg
  (:init
   (&key
    ((:target __target) 0)
    ((:vbus __vbus) 0.0)
    ((:error0 __error0) 0)
    ((:state0 __state0) 0)
    ((:vel0 __vel0) 0.0)
    ((:pos0 __pos0) 0.0)
    ((:curr0B __curr0B) 0.0)
    ((:curr0C __curr0C) 0.0)
    ((:temp0 __temp0) 0.0)
    )
   (send-super :init)
   (setq _target (round __target))
   (setq _vbus (float __vbus))
   (setq _error0 (round __error0))
   (setq _state0 (round __state0))
   (setq _vel0 (float __vel0))
   (setq _pos0 (float __pos0))
   (setq _curr0B (float __curr0B))
   (setq _curr0C (float __curr0C))
   (setq _temp0 (float __temp0))
   self)
  (:target
   (&optional __target)
   (if __target (setq _target __target)) _target)
  (:vbus
   (&optional __vbus)
   (if __vbus (setq _vbus __vbus)) _vbus)
  (:error0
   (&optional __error0)
   (if __error0 (setq _error0 __error0)) _error0)
  (:state0
   (&optional __state0)
   (if __state0 (setq _state0 __state0)) _state0)
  (:vel0
   (&optional __vel0)
   (if __vel0 (setq _vel0 __vel0)) _vel0)
  (:pos0
   (&optional __pos0)
   (if __pos0 (setq _pos0 __pos0)) _pos0)
  (:curr0B
   (&optional __curr0B)
   (if __curr0B (setq _curr0B __curr0B)) _curr0B)
  (:curr0C
   (&optional __curr0C)
   (if __curr0C (setq _curr0C __curr0C)) _curr0C)
  (:temp0
   (&optional __temp0)
   (if __temp0 (setq _temp0 __temp0)) _temp0)
  (:serialization-length
   ()
   (+
    ;; uint8 _target
    1
    ;; float32 _vbus
    4
    ;; int32 _error0
    4
    ;; int32 _state0
    4
    ;; float32 _vel0
    4
    ;; float32 _pos0
    4
    ;; float32 _curr0B
    4
    ;; float32 _curr0C
    4
    ;; float32 _temp0
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _target
       (write-byte _target s)
     ;; float32 _vbus
       (sys::poke _vbus (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _error0
       (write-long _error0 s)
     ;; int32 _state0
       (write-long _state0 s)
     ;; float32 _vel0
       (sys::poke _vel0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pos0
       (sys::poke _pos0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _curr0B
       (sys::poke _curr0B (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _curr0C
       (sys::poke _curr0C (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temp0
       (sys::poke _temp0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _target
     (setq _target (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _vbus
     (setq _vbus (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _error0
     (setq _error0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state0
     (setq _state0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _vel0
     (setq _vel0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos0
     (setq _pos0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _curr0B
     (setq _curr0B (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _curr0C
     (setq _curr0C (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temp0
     (setq _temp0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_odrive::odrive_msg :md5sum-) "86f9cf508f5d40f79760e11abc87c20f")
(setf (get ros_odrive::odrive_msg :datatype-) "ros_odrive/odrive_msg")
(setf (get ros_odrive::odrive_msg :definition-)
      "#Header header    # ROS Message headaer

uint8 target      # Target

float32 vbus      # Bus voltage

int32 error0      # Axis 0 error
int32 state0      # Axis 0 state
float32 vel0      # Axis 0 velocity 
float32 pos0      # Axis 0 encoder position
float32 curr0B    # Axis 0 motor channel B current
float32 curr0C    # Axis 0 motor channel C current
float32 temp0     # Axis 0 invertr temperature



")



(provide :ros_odrive/odrive_msg "86f9cf508f5d40f79760e11abc87c20f")


