;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : test/test-current-file.lisp
;;;; Description: tests fpr the cl-splitter current-file configuration
;;;;     Created: <>
;;;; Last Update: Time-stamp: <2024-04-26 08:39:05 tammycravit>
;;;;

(defpackage :cl-splitter-test/current-file
  (:use :cl 
        :fiveam 
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/current-file)

(def-suite* cl-splitter-test/current-file-test
  :description "cl-splitter current file options tests"
  :in :cl-splitter-test)

(in-suite cl-splitter-test/current-file-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
