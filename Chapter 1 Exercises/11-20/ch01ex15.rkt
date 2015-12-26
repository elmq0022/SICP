#lang planet neil/sicp

;;;
;; SICP - https://sicpebook.wordpress.com/ebook/
;; Exercise 01.15
;; Sine of X
;;;


;; How many times is the procedure p applied
;; when (sine 12.15) is evaluated?

(define (cube x)
  (* x x x))

(define (p x)
  (- (* 3 x)
     (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))


;; There are five (5) calls to p.
(/ 12.15 3 3 3 3 3)

;; What is the order of growth in space and number of
;; steps (as a function of a) used by the process generated
;; by the sine procedure when (sine a) is evaluated?

;; 