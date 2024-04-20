;; Auto-generated. Do not edit!


(when (boundp 'bicycle::Gamepad_Control)
  (if (not (find-package "BICYCLE"))
    (make-package "BICYCLE"))
  (shadow 'Gamepad_Control (find-package "BICYCLE")))
(unless (find-package "BICYCLE::GAMEPAD_CONTROL")
  (make-package "BICYCLE::GAMEPAD_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude Gamepad_Control.msg.html


(defclass bicycle::Gamepad_Control
  :super ros::object
  :slots (_LeftHatX _LeftHatY ))

(defmethod bicycle::Gamepad_Control
  (:init
   (&key
    ((:LeftHatX __LeftHatX) 0)
    ((:LeftHatY __LeftHatY) 0)
    )
   (send-super :init)
   (setq _LeftHatX (round __LeftHatX))
   (setq _LeftHatY (round __LeftHatY))
   self)
  (:LeftHatX
   (&optional __LeftHatX)
   (if __LeftHatX (setq _LeftHatX __LeftHatX)) _LeftHatX)
  (:LeftHatY
   (&optional __LeftHatY)
   (if __LeftHatY (setq _LeftHatY __LeftHatY)) _LeftHatY)
  (:serialization-length
   ()
   (+
    ;; int32 _LeftHatX
    4
    ;; int32 _LeftHatY
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _LeftHatX
       (write-long _LeftHatX s)
     ;; int32 _LeftHatY
       (write-long _LeftHatY s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _LeftHatX
     (setq _LeftHatX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _LeftHatY
     (setq _LeftHatY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get bicycle::Gamepad_Control :md5sum-) "10cad8b4f3fb64b90750ff920467060e")
(setf (get bicycle::Gamepad_Control :datatype-) "bicycle/Gamepad_Control")
(setf (get bicycle::Gamepad_Control :definition-)
      "int32 LeftHatX
int32 LeftHatY
")



(provide :bicycle/Gamepad_Control "10cad8b4f3fb64b90750ff920467060e")


