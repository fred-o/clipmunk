#!/bin/sh

#
# This script can be used to regenerate the bindings.lisp file using
# SWIG. Should not be necessary to do that, though, unless there's a
# new version out.
#

swig -cffi -module bindings -noswig-lisp -o bindings.lisp scripts/bindings.i 

sed -i -e "s/(\(\w*\) #.(chipmunk-lispify \"cpVect\" 'classname)/(\1-x :double) (\1-y :double/" bindings.lisp 
sed -i -e "s/(#.(chipmunk-lispify \"\(\w*\)\" 'slotname) #.(chipmunk-lispify \"cpVect\" 'classname)/(\1-x :double) (\1-y :double/" bindings.lisp 



