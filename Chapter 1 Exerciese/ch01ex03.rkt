#lang planet neil/sicp
;;;
; SICP - https://sicpebook.wordpress.com/ebook/
; Exercise 01.03
; Define a procedure that takes three numbers and returne the
; sum of the squares of the two larger numbers
;;;

(define (largest a b c)
  (cond((and (> a b)(> a c)) a)
       ((and (> b a)(> b c)) b)
       (else c)))

(define (smallest a b c)
  (cond((and(< a b)(< a c)) a)
       ((and(< b a)(< b c)) b)
       (else c)))

(define (second a b c)
  (cond((and(< a (largest a b c))(> a (smallest a b c))) a)
       ((and(< b (largest a b c))(> b (smallest a b c))) b)
       (else c)))
           
(define(square a)(* a a))

(define(sum_sq_two_largest a b c)
  (+ (square (largest a b c))
     (square (second a b c))))

(largest 1 3 4)
(smallest 1 3 4)
(second 1 3 4)

(sum_sq_two_largest 1 3 4)
(sum_sq_two_largest 5 5 5)