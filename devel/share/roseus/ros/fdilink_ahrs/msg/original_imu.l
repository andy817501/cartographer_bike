;; Auto-generated. Do not edit!


(when (boundp 'fdilink_ahrs::original_imu)
  (if (not (find-package "FDILINK_AHRS"))
    (make-package "FDILINK_AHRS"))
  (shadow 'original_imu (find-package "FDILINK_AHRS")))
(unless (find-package "FDILINK_AHRS::ORIGINAL_IMU")
  (make-package "FDILINK_AHRS::ORIGINAL_IMU"))

(in-package "ROS")
;;//! \htmlinclude original_imu.msg.html


(defclass fdilink_ahrs::original_imu
  :super ros::object
  :slots (_gyroscope_x _gyroscope_y _gyroscope_z _accelerometer_x _accelerometer_y _accelerometer_z ))

(defmethod fdilink_ahrs::original_imu
  (:init
   (&key
    ((:gyroscope_x __gyroscope_x) 0.0)
    ((:gyroscope_y __gyroscope_y) 0.0)
    ((:gyroscope_z __gyroscope_z) 0.0)
    ((:accelerometer_x __accelerometer_x) 0.0)
    ((:accelerometer_y __accelerometer_y) 0.0)
    ((:accelerometer_z __accelerometer_z) 0.0)
    )
   (send-super :init)
   (setq _gyroscope_x (float __gyroscope_x))
   (setq _gyroscope_y (float __gyroscope_y))
   (setq _gyroscope_z (float __gyroscope_z))
   (setq _accelerometer_x (float __accelerometer_x))
   (setq _accelerometer_y (float __accelerometer_y))
   (setq _accelerometer_z (float __accelerometer_z))
   self)
  (:gyroscope_x
   (&optional __gyroscope_x)
   (if __gyroscope_x (setq _gyroscope_x __gyroscope_x)) _gyroscope_x)
  (:gyroscope_y
   (&optional __gyroscope_y)
   (if __gyroscope_y (setq _gyroscope_y __gyroscope_y)) _gyroscope_y)
  (:gyroscope_z
   (&optional __gyroscope_z)
   (if __gyroscope_z (setq _gyroscope_z __gyroscope_z)) _gyroscope_z)
  (:accelerometer_x
   (&optional __accelerometer_x)
   (if __accelerometer_x (setq _accelerometer_x __accelerometer_x)) _accelerometer_x)
  (:accelerometer_y
   (&optional __accelerometer_y)
   (if __accelerometer_y (setq _accelerometer_y __accelerometer_y)) _accelerometer_y)
  (:accelerometer_z
   (&optional __accelerometer_z)
   (if __accelerometer_z (setq _accelerometer_z __accelerometer_z)) _accelerometer_z)
  (:serialization-length
   ()
   (+
    ;; float32 _gyroscope_x
    4
    ;; float32 _gyroscope_y
    4
    ;; float32 _gyroscope_z
    4
    ;; float32 _accelerometer_x
    4
    ;; float32 _accelerometer_y
    4
    ;; float32 _accelerometer_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _gyroscope_x
       (sys::poke _gyroscope_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyroscope_y
       (sys::poke _gyroscope_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyroscope_z
       (sys::poke _gyroscope_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accelerometer_x
       (sys::poke _accelerometer_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accelerometer_y
       (sys::poke _accelerometer_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accelerometer_z
       (sys::poke _accelerometer_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _gyroscope_x
     (setq _gyroscope_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyroscope_y
     (setq _gyroscope_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyroscope_z
     (setq _gyroscope_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accelerometer_x
     (setq _accelerometer_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accelerometer_y
     (setq _accelerometer_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accelerometer_z
     (setq _accelerometer_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fdilink_ahrs::original_imu :md5sum-) "31a1f3dfbaee0ca05acbe4ee8ad9dfc7")
(setf (get fdilink_ahrs::original_imu :datatype-) "fdilink_ahrs/original_imu")
(setf (get fdilink_ahrs::original_imu :definition-)
      "float32 gyroscope_x
float32 gyroscope_y
float32 gyroscope_z
float32 accelerometer_x
float32 accelerometer_y
float32 accelerometer_z
")



(provide :fdilink_ahrs/original_imu "31a1f3dfbaee0ca05acbe4ee8ad9dfc7")


