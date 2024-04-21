
(defpackage :cl-splitter-test/global-opts
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/global-opts)

(def-suite* cl-splitter-test/global-opts-test
  :description "cl-splitter global options tests")

(in-suite cl-splitter-test/global-opts-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
