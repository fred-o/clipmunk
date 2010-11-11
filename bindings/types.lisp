(in-package :cl-chipmunk-bindings)

(defctype cp-float :double)



(defcstruct vect
  "Simple two-dimensional vector"
  (x cp-float)
  (y cp-float))

(defctype cp-hash-value :unsigned-int)

(defctype cp-bool :int)

(defctype cp-data-pointer :pointer)
(defctype cp-collision-type :unsigned-int)
(defctype cp-group :unsigned-int)
(defctype cp-layers :unsigned-int)
(defctype cp-timestamp :unsigned-int)