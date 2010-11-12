(in-package :cl-chipmunk-bindings)

(defcstruct shape
  (klass :pointer)
  (body :pointer)
  (bb bounding-box)
  (sensor cp-bool)
  (e cp-float)
  (u cp-float)
  (surface-v vect)
  (data cp-data-pointer)
  (collision-type cp-collision-type)
  (group cp-group)
  (layers cp-layers)
  (next :pointer)
  (hashid cp-hash-value))

(defcstruct segment-shape
  (shape shape)
  (a vect)
  (b vect)
  (n vect)
  (r cp-float)
  (ta vect)
  (tb vect)
  (tn vect))

;; circle shapes
(defcstruct circle-shape
  (shape shape)
  (c vect)
  (r vect)
  (tc vect))

(defcfun ("cpCircleShapeAlloc" circle-shape-alloc) :pointer)
(defcfun ("cpCircleShapeInit" circle-shape-init) :pointer
  (circle :pointer)
  (body :pointer)
  (radius cp-float)
  (offset vect))
(defcfun ("cpCircleShapeNew" circle-shape-new) :pointer
  (body :pointer)
  (radius cp-float)
  (offset vect))

;; segment shapes
(defcfun ("cpSegmentShapeAlloc" segment-shape-alloc) :pointer)
(defcfun ("cpSegmentShapeInit" segment-shape-init) :pointer
  (seg :pointer)
  (body :pointer)
  (a vect)
  (b vect)
  (radius cp-float))
(defcfun ("cpSegmentShapeNew" segment-shape-new) :pointer
  (body :pointer)
  (a vect)
  (b vect)
  (radius cp-float))
