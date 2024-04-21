
(defpackage :cl-splitter-test/globals
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/globals)

(def-suite* cl-splitter-test/globals-test
  :description "cl-splitter global variables tests")

(in-suite cl-splitter-test/globals-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
