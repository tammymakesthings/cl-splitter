;; -*- Lisp; lexical-binding: t; fill-column: 90; encoding: utf-8; -*-
;;;;
;;;; File       : cl-splitter.asd
;;;; Description: ASDF system definition for cl-splitter system
;;;; Created    :
;;;; Last Update: Time-stamp: <2024-04-26 08:27:27 tammycravit>
;;;;

#+quicklisp
(progn 
 (ql:quickload '("clingon" "log4cl" "envy"))
 )

(defsystem cl-splitter
  :version (:read-file-form "version.lisp-expr")
  :author "Tammy Cravit <tammy@tammymakesthings.com>"
  :maintainer "Tammy Cravit <tammy@tammymakesthings.com>"
  :mailto "tammy@tammymakesthings.com"
  :license "MIT"
  :encoding :utf-8

  :homepage "https://github.com/tammymakesthings/cl-splitter"
  :source-control (:git "https://github.com/tammymakesthings/cl-splitter")
  :bug-tracker "https://github.com/tammymakesthings/cl-splitter/issues"

  :depends-on (:clingon 
               :log4cl 
               :envy)

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

  :pathname "src"
  :components ((:file "internal")
               (:file "global-options" :depends-on ("internal"))
               (:file "current-file" :depends-on ("internal"))
               (:file "globals" :depends-on ("internal" "global-options" "current-file"))
               (:file "core" :depends-on ("globals"))
               (:file "engine" :depends-on ("core"))
               (:file "cli" :depends-on ("engine"))
               (:file "package" :depends-on ("internal" "core" "engine" "cli")))

  :build-operation "program-op" ;; leave as is
  :build-pathname "bin/clsplitter"
  :entry-point "cl-splitter/cli:-main"

  :in-order-to (
                (test-op (test-op #:cl-splitter-test))
                ))

;;;;
;;;; vim: set ft=lisp ts=2 sw=2 ai tw=90
