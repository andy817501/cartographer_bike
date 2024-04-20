
(cl:in-package :asdf)

(defsystem "can_communication-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Bicycle_msg" :depends-on ("_package_Bicycle_msg"))
    (:file "_package_Bicycle_msg" :depends-on ("_package"))
    (:file "Odrive_msg" :depends-on ("_package_Odrive_msg"))
    (:file "_package_Odrive_msg" :depends-on ("_package"))
  ))