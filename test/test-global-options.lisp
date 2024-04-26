;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : test/test-global-options.lisp
;;;; Description: tests for the cl-splitter global options
;;;;     Created: <>
;;;; Last Update: Time-stamp: <2024-04-26 08:39:05 tammycravit>
;;;;

(defpackage :cl-splitter-test/global-opts
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/global-opts)

(def-suite* cl-splitter-test/global-opts-test
  :description "cl-splitter global options tests"
  :in :cl-splitter-test)

(in-suite cl-splitter-test/global-opts-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
