;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : cl-splitter-test.asd
;;;; Description: ASDF system definition for cl-splitter unit tests
;;;; Created    :
;;;; Last Update:
;;;;

(asdf:defsystem cl-splitter-test
  :author "Tammy Cravit <tammy@tammymakesthings.com>"
  :license "MIT"
  :class :package-inferred-system
  :pathname "test"
  :depends-on (:fiveam
               :cl-splitter-test
               "cl-splitter-test/test-internal"
               "cl-splitter-test/test-globals"
               "cl-splitter-test/test-global-options"
               "cl-splitter-test/test-current-file"
               "cl-splitter-test/test-core"
               "cl-splitter-test/test-engine"
               "cl-splitter-test/test-cli"
               "cl-splitter-test/test-package")
  :description "Test system for cl-splitter"

  :perform (test-op 
             :after (op c)
             (symbol-call :fiveam :run!
                          (find-symbol* :cl-splitter :cl-splitter-test))))

(use-package #:cl-splitter)

(uiop:add-package-local-nickname :splitter #:cl-splitter)

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
