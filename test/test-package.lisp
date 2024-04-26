;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : test/test-package.lisp
;;;; Description: package for the cl-splitter unit tests
;;;;     Created: <>
;;;; Last Update: Time-stamp: <2024-04-26 08:39:05 tammycravit>
;;;;

(defpackage :cl-splitter-test
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (:export #:cl-splitter-test-suite)
  (local-nicknames
    (:app :cl-splitter)))

(in-package cl-splitter-test

(def-suite* cl-splitter-test-suite
  :description "cl-splitter tests package")

(in-suite cl-splitter-test-suite)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
