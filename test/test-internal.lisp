
(defpackage :cl-splitter-test/internals
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/internals)

(def-suite* cl-splitter-test/internals-test
  :description "cl-splitter internals tests")

(in-suite cl-splitter-test/internals-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
