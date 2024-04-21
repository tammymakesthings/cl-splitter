
(defpackage :cl-splitter-test/package
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/package)

(def-suite* cl-splitter-test/package-test
  :description "cl-splitter package tests")

(in-suite cl-splitter-test/package-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
