
(defpackage :cl-splitter-test/current-file
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/current-file)

(def-suite* cl-splitter-test/current-file-test
  :description "cl-splitter current file options tests")

(in-suite cl-splitter-test/current-file-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
