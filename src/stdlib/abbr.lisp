;; -*- mode: cl21 -*-
(in-package :cl21-user)
(defpackage cl21.abbr
  (:use :cl21)
  (:import-from :rutils
                :abbr)
  (:export :dbind
           :mvbind
           :mvcall
           :mvlist
           :mvsetq
           :mvprog1
           :val0
           :val1
           :val2
           :val3
           :val4
           :val5)
  (:documentation
   "This package contains a set of several shorthand nickname macros such as
dbind for destructuring-bind, mvbind for multiple-value-bind"))
(in-package :cl21.abbr)

;; Special operators
(defmacro mvcall (function arg &rest arguments)
  "Synonym for multiple-value-call"
  `(multiple-value-call ,function ,arg ,@arguments))

(defmacro mvprog1 (values-form &rest forms)
  "Synonym for multiple-value-prog1"
  `(multiple-value-prog1 ,values-form ,@forms))

(abbr dbind destructuring-bind)
(abbr mvbind multiple-value-bind)
(abbr mvlist multiple-value-list)
(abbr mvsetq multiple-value-setq)

(defmacro val0 (form)
  "Shorthand for (nth-value 0 form)"
  `(nth-value 0 ,form))

(defmacro val1 (form)
  "Shorthand for (nth-value 1 form)"
  `(nth-value 1 ,form))

(defmacro val2 (form)
  "Shorthand for (nth-value 2 form)"
  `(nth-value 2 ,form))

(defmacro val3 (form)
  "Shorthand for (nth-value 2 form)"
  `(nth-value 2 ,form))

(defmacro val4 (form)
  "Shorthand for (nth-value 2 form)"
  `(nth-value 2 ,form))

(defmacro val5 (form)
  "Shorthand for (nth-value 2 form)"
  `(nth-value 2 ,form))
