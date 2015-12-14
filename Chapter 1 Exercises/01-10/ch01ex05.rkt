#lang planet neil/sicp
;;;
;; SICP - https://sicpebook.wordpress.com/ebook/
;; Exercise 01.05
;; Ben Bitdiddle has invented a test to determine whether the interpreter he is
;; faced with is using applicative-order evaluation or normal-order evaluation.
;; He defines the following two procedures:

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

;; Then he evaluates the expression

(test 0 (p))

;; What behavior will Ben observe with an interpreter that uses applicative-order
;; evaluation?

;; ANSWER
;; In applicative order arguments are evaluated right away.  So zero evals to 0 and (p)
;; calls itself recursively, but the system will not crash if true tail calls are invoked.
;; (test 0 (p)) -> (test 0 (p)) -> (test 0 (p)) -> ...

;; What behavior will he observe with an interpreter that uses
;; normal-order evaluation? Explain your answer.

;; ANSWER
;; In normal order parameters are evaluated in a lazy fashion.  Meaning (p) will not
;; be evaluated until needed. In Ben's function (if (= 0 0)) -> #t and the first
;; parameter 0 is returned.  The function (p) is never called.  