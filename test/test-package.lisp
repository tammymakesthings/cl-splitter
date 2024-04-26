;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : test/test-package.lisp
;;;; Description: package for the cl-splitter unit tests
;;;;     Created: <>
;;;; Last Update: Time-stamp: <2024-04-26 08:39:05 tammycravit>
;;;;

(defpackage :cl-splitter-test/package
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/package)

(def-suite* cl-splitter-test
  :description "cl-splitter tests package")

(in-suite cl-splitter-test/package-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
