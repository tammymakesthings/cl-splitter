
(defpackage :cl-splitter-test/core
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/core)

(def-suite* cl-splitter-test/core-test
  :description "cl-splitter core tests")

(in-suite cl-splitter-test/core-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
