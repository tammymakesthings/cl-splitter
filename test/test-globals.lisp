;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : test/test-globals.lisp
;;;; Description: tests for the cl-splitter global context
;;;;     Created: <>
;;;; Last Update: Time-stamp: <2024-04-26 08:39:05 tammycravit>
;;;;

(defpackage :cl-splitter-test/globals
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/globals)

(def-suite* cl-splitter-test/globals-test
  :description "cl-splitter global variables tests"
  :in :cl-splitter-test-suite)

(in-suite cl-splitter-test/globals-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
