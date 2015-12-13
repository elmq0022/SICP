#lang planet neil/sicp

;;;
;; SICP - https://sicpebook.wordpress.com/ebook/
;; Exercise 01.10
;; Ackermann's Function
;;;

;; I think there may be a typo here.
;; Here is the solution posted by the scheme community wiki.
;; http://community.schemewiki.org/?sicp-ex-1.10
;; to make this result valid for zero I needed to make the follow in
;; modifications to make n=0 valid.
;;
;;     1. make condition (= x 0) (* 2 y) the first test condition
;;     2. make (= y 0) return 1 instead of zero.
;;
;; Now the function is defined over the set {0, 1, 2, ... }

(define (A x y)
  (cond ((= x 0) (* 2 y))
        ((= y 0) 1)
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))

;; What are the values of the following?
;; (A 1 10) ;; A = 2^10 = 1024
;; (A 2 4) ;; A = 65536
;; (A 3 3) ;; A = 65536

;;Give concise mathematical definitions for the functions
;;computed by the procedures f, g, and h for positive integer
;;values of n. For example, (k n) computes 5n^2

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))

;; (f n) = 2*n
;; (g n) = 2^n
;; (h n) = 2^2^... (n times)

;; TODO - Prettier printing would be nice.
(f 0)
(f 1)
(f 2)
(f 3)
(f 4)
(f 5)
(newline)
(g 0)
(g 1)
(g 2)
(g 3)
(g 4)
(g 5)
(g 6)
(newline)
(h 0)
(h 1)
(h 2)
(h 3)
(h 4)
