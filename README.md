CLIPMUNK
========

CLIPMUNK provides Common Lisp [CFFI][cffi] bindings for the
[Chipmunk Physics][chipmunk] library. It began as a fork of
[Ralith's cl-chipmunk][cl-chipmunk] library, but after a while I got
tired of writing the `defcfun`s by hand and switched to using
[SWIG][swig] to generate the bindings automatically.

Installation
------------

TBA

Limitations
-----------

Some of the functions in the [Chipmunk API][api] depend on getting
struct arguments passed by value, but this is not possible with
[CFFI][cffi]. There is a workaround for this, however: we can pass
each element in the struct as a separate argument to the function, as
long as they are passed in the correct order. Since the most
frequently used struct (`cpVect`) is a fairly simple one, consisting
of just two double floats, it is quite easy to adjust the generated
bindings to accomodate this.

This approach seems to work nicely, at least on x86-based platforms.

Testing
-------

CLIPMUNK is being developed and tested on SBCL running on Linux and
OSX. 

[chipmunk]:http://code.google.com/p/chipmunk-physics
[cl-chipmunk]:https://github.com/Ralith/cl-chipmunk/tree/
[swig]:http://swig.org
[api]:http://files.slembcke.net/chipmunk/release/ChipmunkLatest-Docs/#ChipmunkCAPI
[cffi]:http://common-lisp.net/project/cffi/
