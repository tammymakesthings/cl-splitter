;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : test/test-cli.lisp
;;;; Description: tests for the cl-splitter CLI
;;;;     Created: <>
;;;; Last Update: Time-stamp: <2024-04-26 08:39:05 tammycravit>
;;;;

(defpackage :cl-splitter-test/cli
  (:use :cl
        :fiveam
        :cl-splitter)
  (local-nicknames
    (:app :cl-splitter)))
(in-package cl-splitter-test/cli)

(def-suite* cl-splitter-test/cli-test
  :description "cl-splitter command-line interface tests"
  :in :cl-splitter-test)

(in-suite cl-splitter-test/cli-test)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
