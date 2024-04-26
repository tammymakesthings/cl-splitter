;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; Description: cl-splitter core code
;;;;     Created: <>
;;;; Last Update: Time-stamp: <2024-04-26 08:30:51 tammycravit>

;;;;

(in-package #:cl-user)

(defpackage #:cl-splitter/core
   (:use #:cl
         #:cl-splitter/internal
         #:cl-splitter/globals)
   (:export
     #:process-input
     #:log-message
    )
  (:package-nicknames
    (:int  :cl-splitter/internal)
    (:glob :cl-splitter/globals)
    )
  )

(in-package cl-splitter/core)

(defun strip-prefix-and-suffix (line))
(defun process-input ())
(defun switch-file ())
(defun write-next-line (line))

(defun log-message ((source "cl-splitter")
                         (msg-string "~a")
                         &rest args)
  (format t "<~a> ~a~%" source (format t msg-string args)))

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
