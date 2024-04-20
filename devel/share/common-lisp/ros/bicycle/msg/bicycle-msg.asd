
(cl:in-package :asdf)

(defsystem "bicycle-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Bicycle_Roll" :depends-on ("_package_Bicycle_Roll"))
    (:file "_package_Bicycle_Roll" :depends-on ("_package"))
    (:file "Gamepad_Control" :depends-on ("_package_Gamepad_Control"))
    (:file "_package_Gamepad_Control" :depends-on ("_package"))
  ))