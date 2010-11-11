(in-package :cl-chipmunk-bindings)

(defconstant +infintity+ 1l+300)

(defcvar ("cpVersionString" +version-string+ :read-only t) :string)

(defcfun ("cpInitChipmunk" init-chipmunk) :void)