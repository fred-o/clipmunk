(in-package :cl-chipmunk-bindings)

(defcstruct array
  (num :int)
  (max :int)
  (arr :pointer))