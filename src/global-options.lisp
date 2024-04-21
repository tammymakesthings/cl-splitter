;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : src/core.lisp
;;;; Description: cl-splitter core code
;;;;

(in-package #:cl-user)

(defpackage #:cl-splitter/file-options
   (:use #:cl
         #:cl-splitter/globals
         #:cl-splitter/internal
         )
   (:export 
     #:copy-p
     #:copy-p!
     #:verbose-p
     #:verbose-p!
     #:skip-next
     #:skip-next!
     #:trim-prefix
     #:trim-prefix!
     #:trim-suffix
     #:trim-suffix!
     #:omit-blank-lines-p
     #:omit-blank-lines-p!
    )
  (:local-nicknames
    (:glob :cl-splitter/globals)
    (:int  :cl-splitter/internal)
    )
  )

(in-package cl-splitter/file-options)

(defun file-path ())
(defun file-exists-p ())
(defun include-split-directives-p())
(defun skip-next())
(defun trim-prefix())
(defun trim-suffix())
(defun omit-blank-lines-p())
(defun overwrite-file-p())
(defun append-file-p())

(defun file-path! (new-value))
(defun file-exists-p! (new-value))
(defun include-split-directives-p! (new-value))
(defun skip-next! (new-value))
(defun trim-prefix! (new-value))
(defun trim-suffix! (new-value))
(defun omit-blank-lines-p! (new-value))
(defun overwrite-file-p! (new-value))
(defun append-file-p! (new-value))

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
