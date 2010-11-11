(in-package :cl-chipmunk-bindings)

(defctype collision-begin-func :pointer)
(defctype collision-pre-solve-func :pointer)
(defctype collision-post-solve-func :pointer)
(defctype collision-separate-func :pointer)

(defcstruct collision-handler
  (a cp-collision-type)
  (b cp-collision-type)
  (begin collision-begin-func)
  (pre-solve collision-pre-solve-func)
  (post-solve collision-post-solve-func)
  (separate collision-separate-func)
  (data :pointer))

(defcstruct space
  (iterations :int)
  (elastic-iterations :int)
  (gravity vect)
  (damping cp-float)
  (idle-speed-threshold cp-float)
  (sleep-type-threshold cp-float)
  (locked cp-bool)
  (timestamp cp-timestamp)
  (static-shapes :pointer)
  (active-shapes :pointer)
  (bodies :pointer)
  (sleeping-components :pointer)
  (arbiters :pointer)
  (pooled-arbiters :pointer)
  (contact-buffers-head :pointer)
  (contact-buffers-tail :pointer)
  (allocated-buffers :pointer)
  (contact-set :pointer)
  (constraints :pointer)
  (coll-func-set :pointer)
  (default-handler collision-handler)
  (post-step-callbacks :pointer)
  (static-body body))

(defcfun ("cpSpaceAlloc" space-alloc) :pointer)
(defcfun ("cpSpaceInit" space-init) :void
  (space :pointer))
(defcfun ("cpSpaceNew" space-new) :pointer)

(defcfun ("cpSpaceDestroy" space-destroy) :void
  (space :pointer))
(defcfun ("cpSpaceFree" space-free) :void
  (space :pointer))

(defcfun ("cpSpaceFreeChildren" space-free-children) :void
  (space :pointer))

;; add and remove entities
(defcfun ("cpSpaceAddShape" space-add-shape) :pointer
  (space :pointer)
  (shape :pointer))
(defcfun ("cpSpaceAddStaticShape" space-add-static-shape) :pointer
  (space :pointer)
  (shape :pointer))
(defcfun ("cpSpaceAddBody" space-add-body) :pointer
  (space :pointer)
  (body :pointer))
(defcfun ("cpSpaceAddConstraint" space-add-constraint) :pointer
  (space :pointer)
  (constraint :pointer))

(defcfun ("cpSpaceRemoveShape" space-remove-shape) :pointer
  (space :pointer)
  (shape :pointer))
(defcfun ("cpSpaceRemoveStaticShape" space-remove-static-shape) :pointer
  (space :pointer)
  (shape :pointer))
(defcfun ("cpSpaceRemoveBody" space-remove-body) :pointer
  (space :pointer)
  (body :pointer))
(defcfun ("cpSpaceRemoveConstraint" space-remove-constraint) :pointer
  (space :pointer)
  (constraint :pointer))


;; hash management
(defcfun ("cpSpaceResizeStaticHash" space-resize-static-hash) :void
  (space :pointer)
  (dim cp-float)
  (count :int))
(defcfun ("cpSpaceResizeActiveHash" space-resize-active-hash) :void
  (space :pointer)
  (dim cp-float)
  (count :int))