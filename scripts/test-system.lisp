#|
exec sbcl --noinform --load "$0" --end-toplevel-options "$@"
|#

(progn
 (require "asdf")
 (require "uiop")
 (asdf:load-asd (merge-pathnames "../cl-splitter-test.asd" (uiop:getcwd)))
 (asdf:load-system :cl-splitter-test)
 )

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
