;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : test/test-engine.lisp
;;;; Description: tests for the cl-splitter engine
;;;;     Created: <>
;;;; Last Update: Time-stamp: <2024-04-26 08:39:05 tammycravit>
;;;;

(defpackage :cl-splitter-test/engine
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/engine)

(def-suite* cl-splitter-test/engine-test
  :description "cl-splitter engine tests"
  :in :cl-splitter-test-suite)

(in-suite cl-splitter-test/engine-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
