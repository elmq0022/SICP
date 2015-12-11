#lang planet neil/sicp

;;;
;; SICP - https://sicpebook.wordpress.com/ebook/
;; Exercise 01.07
;; Procedure does not work well with small numbers
;; change in guess from one iteration to the next to
;; determin an end point
;;;

;; Original procedure and results

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; New procedure and results
;; This works, but I would like to only call
;; improve once with a lett statment.
;; The new procedure seems to work better for
;; small numbers and worse for large numbers.
;; TODO - Add let statement to reduce function
;; calls
;; TODO - Does this this really worse for large
;; numbers?

(define (good-enough2? guess better)
  (< (abs(-(/ better guess) 1)) 0.001))

(define (sqrt2-iter guess x)
  (if (good-enough2? guess (improve guess x))
      (improve guess x)
      (sqrt2-iter (improve guess x) x)))

(define (sqrt2 x)
  (sqrt2-iter 1.0 x))

(square(sqrt 0.0005))
(square(sqrt2 0.0005))
(square(sqrt 100000000000.0))
(square(sqrt2 100000000000.0))
