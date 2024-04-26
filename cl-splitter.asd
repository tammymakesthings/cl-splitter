;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : cl-splitter.asd
;;;; Description: ASDF system definition for cl-splitter system
;;;; Created    :
;;;; Last Update: Time-stamp: <2024-04-26 08:27:27 tammycravit>
;;;;

(defsystem cl-splitter
  :version (:read-file-form "version.lisp-expr")
  :author "Tammy Cravit <tammy@tammymakesthings.com>"
  :license "MIT"
  :class :package-inferred-system
  :pathname "src"
  :depends-on (
                "cl-splitter/internal"
                "cl-splitter/globals"
                "cl-splitter/global-options"
                "cl-splitter/current-file"
                "cl-splitter/core"
                "cl-splitter/engine"
                "cl-splitter/cli"
                "cl-splitter/package"
              )
  :description "Intelligent multi-file split/join in Common Lisp"
  :long-description
    #.(with-open-file (stream (merge-pathnames #p"README.rst"
                               (or *load-pathname* *compile-file-pathname*))
                      :if-does-not-exist nil
                      :direction :input)
        (when stream
          (let ((seq (make-array (file-length stream)
                                  :element-type 'character
                                  :fill-pointer t)))
          (setf (fill-pointer seq)
                         (read-sequence seq stream))
          seq)))
  :in-order-to (
                (test-op (test-op #:cl-splitter-test))
                ))

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
