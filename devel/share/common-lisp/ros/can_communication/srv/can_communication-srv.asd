
(cl:in-package :asdf)

(defsystem "can_communication-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CAN_srv" :depends-on ("_package_CAN_srv"))
    (:file "_package_CAN_srv" :depends-on ("_package"))
    (:file "Odrive_srv" :depends-on ("_package_Odrive_srv"))
    (:file "_package_Odrive_srv" :depends-on ("_package"))
    (:file "VESC_srv" :depends-on ("_package_VESC_srv"))
    (:file "_package_VESC_srv" :depends-on ("_package"))
  ))