;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : src/package.lisp
;;;; Description: Package configuration and initialization code.
;;;;

#+quicklisp
(progn
  (ql:quickload '(:clingon :log4cl :envy :uiop :alexandria)))

(in-package #:cl-user)

(defpackage #:cl-splitter
  (:use #:cl 
        #:uiop 
        #:alexandria 
        #:clingon 
        #:log4cl 
        #:envy
        #:cl-splitter/cli
        #:cl-splitter/core
        #:cl-splitter/current-file
        #:cl-splitter/engine
        #:cl-splitter/global-options
        #:cl-splitter/globals
        #:cl-splitter/internal
        )
  (:export 
    #:envy-get 
    #:envy-set
    #:initialize-app
    #:main)
  (:local-nicknames 
    (:cg   :clingon)
    (:core :cl-splitter/core)
    (:cli  :cl-splitter/cli)
    (:copt :cl-splitter/current-file)
    (:eng  :cl-splitter/engine)
    (:gopt :cl-splitter/global-options)
    (:glob :cl-splitter/globals)
    (:int  :cl-splitter/internal)
    ))

(:in-package #:cl-splitter)

;; Envy (environment-specific configuration) helpers.
(defun envy-app-config ()
  "Get the envy configuration for the application."
  (envy:config :cl-splitter))
(defun envy-get (var-name)
  "Get a variable value from the current envy configuration."
  (getf (envy-app-config) var-name))
(defun envy-set (var-name var-value)
  "Set a variable value in the current envy configuration."
  (setf (getf (envy-app-config) var-name)))

; Initialize the log4cl framework
(defun initialize-log4cl (envy-var-name)
  "Initialize log4cl and set the log level correctly."
  (if (envy-get :logging)
      (log:config
        (envy-get :log-level) :CONSOLE :PRETTY :TIME :IMMEDIATE-FLUSH)))

(defun initialize-app (&optional (env-var-name "APP_ENVIRONMENT"))
  "Initialize per-environment configurations and set up log4cl."
  (setf (envy:config-env-var) env-var-name)
  (envy:defconfig :common       '(:logger t :log-level :INFO))
  (envy:defconfig |development| '(:log-level :DEBUG))
  (envy:defconfig |production|  '(:log-level :INFO))

  (initialize-log4cl))

(defun main (&rest args)
  (declare (ignorable args))
  (initialize-app)
  (core/-main args))
;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
