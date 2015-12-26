#lang planet neil/sicp

;;;
;; SICP - https://sicpebook.wordpress.com/ebook/
;; Exercise 01.16
;; Sine of X
;;;


;; Design a procedure that evolves an iterative exponentiation
;; process that uses successive squaring and uses a 
;; logarithmic number of steps, as does fast-expt.

(define (double x)
    (+ x x))

(define (halve x)
  (/ x 2))

(define (mult_iter a b n)
     (cond ((= b 1) (+ a n))
           ((even? b)(mult_iter (double a)(halve b) n))
           ((odd? b)(mult_iter a (- b 1) (+ a n)))))

(define (mult a b)
  (mult_iter a b 0))

(mult 1 1)
(mult 2 3)
(mult 101 13)