;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : src/core.lisp
;;;; Description: cl-splitter core code
;;;;

(in-package #:cl-user)

(defpackage #:cl-splitter/globals
   (:use #:cl 
         #:cl-splitter/internal
         )
   (:export 
     #:*global-flags*
     #:*current-file-params*
     #:*current-output-handle*
    )
  (:local-nicknames 
    (:int  :cl-splitter/internal)
    )
  )

(in-package cl-splitter/globals)

(defparameter *global-flags* (int:make-global-options)
  "The current global flag settings.")

(defparameter *current-file-params* (int:make-current-file-options)
  "The options for the current file.")

(defparameter *current-output-handle* nil
  "The file output stream for the current output file.")

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
