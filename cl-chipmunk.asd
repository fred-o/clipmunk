(asdf:defsystem cl-chipmunk
  :depends-on (#:cffi)
  :components
  ((:file "chipmunk")
   (:file "wrapper" :depends-on ("chipmunk"))
   (:file "bindings" :depends-on ("chipmunk" "wrapper"))
   (:file "exports" :depends-on ("bindings"))
   (:file "accessors" :depends-on ("bindings" "exports"))))
