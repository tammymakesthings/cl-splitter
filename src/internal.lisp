;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : src/core.lisp
;;;; Description: cl-splitter core code
;;;;

(in-package #:cl-user)

(defpackage #:cl-splitter/internal
   (:use #:cl
         #:cl-splitter/globals)
   (:export 
     #:make-global-options
     #:make-current-file-options
    )
  (:local-nicknames
    (:int :cl-splitter/internal)
    (:glob :cl-splitter/globals)
    )
  )

(in-package cl-splitter/internal)

(defun make-global-options ())
(defun make-current-file-options ())

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
