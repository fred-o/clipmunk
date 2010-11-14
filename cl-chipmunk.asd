(asdf:defsystem cl-chipmunk
  :depends-on (#:cffi)
  :components
  ((:file "chipmunk")
   (:file "wrapper")
   (:file "bindings" :depends-on ("chipmunk" "wrapper"))))
