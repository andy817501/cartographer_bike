
(cl:in-package :asdf)

(defsystem "fdilink_ahrs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "original_imu" :depends-on ("_package_original_imu"))
    (:file "_package_original_imu" :depends-on ("_package"))
  ))