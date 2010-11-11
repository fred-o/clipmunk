(in-package :cl-chipmunk-bindings)

(defcstruct hash-set-bin
  (elt :pointer)
  (hash cp-hash-value)
  (next :pointer))

(defctype hash-set-eql-func :pointer)
(defctype hash-set-trans-func :pointer)

(defcstruct hash-set
  (entries :int)
  (size :int)
  (eql hash-set-eql-func)
  (trans hash-set-trans-func)
  (default-value :pointer)
  (table :pointer)
  (pooled-bins :pointer)
  (allocated-buffers :pointer))

(defcfun ("cpHashSetAlloc" hash-set-alloc) :pointer)
(defcfun ("cpHashSetInit" hash-set-init) :pointer
  (set :pointer)
  (size :int)
  (eql-func hash-set-eql-func)
  (trans hash-set-trans-func))
(defcfun ("cpHashSetNew" hash-set-new) :pointer
  (size :int)
  (eql-func hash-set-eql-func)
  (trans hash-set-trans-func))
