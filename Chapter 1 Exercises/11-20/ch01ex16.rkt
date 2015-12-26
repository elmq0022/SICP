#lang planet neil/sicp

;;;
;; SICP - https://sicpebook.wordpress.com/ebook/
;; Exercise 01.16
;; Sine of X
;;;


;; Design a procedure that evolves an iterative exponentiation
;; process that uses successive squaring and uses a 
;; logarithmic number of steps, as does fast-expt.

(define (sq x)
    (* x x))

(define (pow_iter a b n)
     (cond ((= n 1) (* a b))
           ((even? n)(pow_iter a (sq b)(/ n 2)))
           ((odd? n)(pow_iter b b (- n 1)))))

(define (pow b n)
  (pow_iter 1 b n))

(pow 0 1)
(pow 2 2)
(pow 2 4)
(pow 2 5)
(pow 3 3)