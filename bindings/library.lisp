(in-package :cl-chipmunk-bindings)

;; TODO: Windows => "chipmunk.dll"
(define-foreign-library chipmunk
  (:unix (:or "libchipmunk.so.4" "libchipmunk.so"))
  (t (:default "chipmunk")))

(use-foreign-library chipmunk)