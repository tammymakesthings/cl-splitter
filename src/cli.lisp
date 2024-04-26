;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : src/core.lisp
;;;; Description: cl-splitter core code
;;;;     Created: <>
;;;; Last Update: Time-stamp: <2024-04-26 08:32:41 tammycravit>
;;;;

(in-package #:cl-user)

(defpackage #:cl-splitter/cli
   (:use #:cl
         #:cl-splitter/core
         #:cl-splitter/engine
         #:cl-splitter/internal
         )
   (:export
     ;------------------------------------------------------------------------
     ; CLI handler functions
     ;------------------------------------------------------------------------

     #:split-handler
     #:split-options
     #:split-command
     #:combine-handler
     #:combine-options
     #:combine-command
     #:main-handler
     #:main-options
     #:main-command

     ;------------------------------------------------------------------------
     ; Application entrypoint function
     ;------------------------------------------------------------------------
     #:-main
    )
  (:local-nicknames
    (:core :cl-splitter/core)
    (:eng  :cl-splitter/engine)
    (:int  :cl-splitter/internal)
    )
  )

(in-package cl-splitter/cli)

;;;;
;;;; CLI Handler functions
;;;;

(defun split-handler (args))
(defun split-options ())
(defun split-command ())
(defun combine-handler (args))
(defun combine-options ())
(defun combine-command ())
(defun main-handler (args))
(defun main-options ())
(defun main-command ())

;;;;
;;;; Application Entrypoint
;;;;

(defun -main (&rest args)
  )

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
