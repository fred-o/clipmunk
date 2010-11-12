(in-package :cl-chipmunk-bindings)

;; TODO: Windows => "chipmunk.dll"
(define-foreign-library chipmunk
  (:unix (:or "libchipmunk.so.5.1" "libchipmunk.so" "libchipmunk.dylib"))
  (t (:default "chipmunk")))

(use-foreign-library chipmunk)