#lang planet neil/sicp
;;;
; SICP - https://sicpebook.wordpress.com/ebook/
; Exercise 01.04
; describe the behavior of the
; following procedure:
; (define (a-plus-abs-b a b)
;  ((if (> b 0) + -) a b))
;;;

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 1 -1)
(a-plus-abs-b 1 1)

; When b is greater than 0 the evaluated
; expressions is: (+ a b)
; When b is less than 0 the evaluated
; expression is (- a b)