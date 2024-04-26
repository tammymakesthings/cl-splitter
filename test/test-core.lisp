;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : test/test-core.lisp
;;;; Description: tests for the cl-splitter core functionality
;;;;     Created: <>
;;;; Last Update: Time-stamp: <2024-04-26 08:39:30 tammycravit>
;;;;

(defpackage :cl-splitter-test/core
  (:use :cl
        :fiveam
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/core)

(def-suite* cl-splitter-test/core-test
  :description "cl-splitter core tests"
  :in :cl-splitter-test-suite)

(in-suite cl-splitter-test/core-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
