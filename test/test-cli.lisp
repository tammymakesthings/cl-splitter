(defpackage :cl-splitter-test/cli
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/cli)

(def-suite* cl-splitter-test/cli-test
  :description "cl-splitter command-line interface tests")

(in-suite cl-splitter-test/cli-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
