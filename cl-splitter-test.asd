;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : cl-splitter-test.asd
;;;; Description: ASDF system definition for cl-splitter unit tests
;;;; Created    :
;;;; Last Update: Time-stamp: <2024-04-26 08:27:44 tammycravit>
;;;;

#+quicklisp
(progn
 (ql:quickload "fiveam"))

(asdf:defsystem cl-splitter-test
  :author "Tammy Cravit <tammy@tammymakesthings.com>"
  :maintainer "Tammy Cravit <tammy@tammymakesthings.com>"
  :license "MIT"
  :homepage "https://github.com/tammymakesthings/cl-splitter"
  :source-control (:git "https://github.com/tammymakesthings/cl-splitter")
  :bug-tracker "https://github.com/tammymakesthings/cl-splitter/issues"
  :description "Test system for cl-splitter"
  :encoding :utf-8

  :depends-on (:fiveam
               :cl-splitter)
  :pathname "test"
  :components ((:file "test-internal")
               (:file "test-global-options")
               (:file "test-current-file")
               (:file "test-globals")
               (:file "test-core")
               (:file "test-engine")
               (:file "test-cli")
               (:file "test-package" :depends-on ("test-internal" 
                                                  "test-global-options" 
                                                  "test-current-file" 
                                                  "test-core" 
                                                  "test-engine" 
                                                  "test-cli")))

  :perform (test-op
             :after (op c)
             (symbol-call :fiveam :run!
                          (find-symbol* :cl-splitter :cl-splitter-test))))

(progn
  (use-package #:cl-splitter)
  (uiop:add-package-local-nickname :testapp #:cl-splitter))

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
