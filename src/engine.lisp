;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : src/core.lisp
;;;; Description: cl-splitter core code
;;;;

(in-package #:cl-user)

(defpackage #:cl-splitter/engine
   (:use #:cl 
         #:cl-splitter/internal
         #:cl-splitter/core
         #:cl-splitter/current-file
         #:cl-splitter/global-options
         #:cl-splitter/globals
         )
   (:export 
     #:process-input
     #:switch-file
     #:write-next-line
     #:log-message
    )
  (:local-nicknames
    (:int  :cl-splitter/internal)
    (:core :cl-splitter/core)
    (:file :cl-splitter/current-file)
    (:gpts :cl-splitter/global-options)
    (:glob :cl-splitter/globals)
    )
  )

(in-package cl-splitter/engine)

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
