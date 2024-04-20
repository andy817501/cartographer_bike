;; Auto-generated. Do not edit!


(when (boundp 'bicycle::Bicycle_Roll)
  (if (not (find-package "BICYCLE"))
    (make-package "BICYCLE"))
  (shadow 'Bicycle_Roll (find-package "BICYCLE")))
(unless (find-package "BICYCLE::BICYCLE_ROLL")
  (make-package "BICYCLE::BICYCLE_ROLL"))

(in-package "ROS")
;;//! \htmlinclude Bicycle_Roll.msg.html


(defclass bicycle::Bicycle_Roll
  :super ros::object
  :slots (_Roll _Roll_Velocitys _Set_Torque ))

(defmethod bicycle::Bicycle_Roll
  (:init
   (&key
    ((:Roll __Roll) 0.0)
    ((:Roll_Velocitys __Roll_Velocitys) 0.0)
    ((:Set_Torque __Set_Torque) 0.0)
    )
   (send-super :init)
   (setq _Roll (float __Roll))
   (setq _Roll_Velocitys (float __Roll_Velocitys))
   (setq _Set_Torque (float __Set_Torque))
   self)
  (:Roll
   (&optional __Roll)
   (if __Roll (setq _Roll __Roll)) _Roll)
  (:Roll_Velocitys
   (&optional __Roll_Velocitys)
   (if __Roll_Velocitys (setq _Roll_Velocitys __Roll_Velocitys)) _Roll_Velocitys)
  (:Set_Torque
   (&optional __Set_Torque)
   (if __Set_Torque (setq _Set_Torque __Set_Torque)) _Set_Torque)
  (:serialization-length
   ()
   (+
    ;; float32 _Roll
    4
    ;; float32 _Roll_Velocitys
    4
    ;; float32 _Set_Torque
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Roll
       (sys::poke _Roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Roll_Velocitys
       (sys::poke _Roll_Velocitys (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Set_Torque
       (sys::poke _Set_Torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Roll
     (setq _Roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Roll_Velocitys
     (setq _Roll_Velocitys (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Set_Torque
     (setq _Set_Torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bicycle::Bicycle_Roll :md5sum-) "7447a4ccbe634941a8adc55e6847e8a3")
(setf (get bicycle::Bicycle_Roll :datatype-) "bicycle/Bicycle_Roll")
(setf (get bicycle::Bicycle_Roll :definition-)
      "float32 Roll
float32 Roll_Velocitys
float32 Set_Torque
")



(provide :bicycle/Bicycle_Roll "7447a4ccbe634941a8adc55e6847e8a3")


