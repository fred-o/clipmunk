(in-package :cl-chipmunk-bindings)

(defcstruct handle
  (obj :pointer)
  (retain :int)
  (stamp cp-timestamp))

(defctype space-hash-bb-func :pointer)

(defcstruct space-hash
  (num-cells :int)
  (celldim cp-float)
  (bb-func space-hash-bb-func)
  (handle-set :pointer)
  (pooled-handles :pointer)
  (table :pointer)
  (pooled-bins :pointer)
  (allocated-buffers :pointer)
  (stamp cp-timestamp))