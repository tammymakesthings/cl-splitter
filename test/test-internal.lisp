;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : test/test-internal.lisp
;;;; Description: tests for the cl-splitter internal functions
;;;;     Created: <>
;;;; Last Update: Time-stamp: <2024-04-26 08:39:05 tammycravit>
;;;;

(defpackage :cl-splitter-test/internals
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/internals)

(def-suite* cl-splitter-test/internals-test
  :description "cl-splitter internals tests"
  :in :cl-splitter-test-suite)

(in-suite cl-splitter-test/internals-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
