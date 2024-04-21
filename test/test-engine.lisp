
(defpackage :cl-splitter-test/engine
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/engine)

(def-suite* cl-splitter-test/engine-test
  :description "cl-splitter engine tests")

(in-suite cl-splitter-test/engine-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
