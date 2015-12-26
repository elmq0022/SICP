#lang planet neil/sicp

;;;
;; SICP - https://sicpebook.wordpress.com/ebook/
;; Exercise 02.05
;; New cons, car, and cdr based on 2^a 3^b
;;;

(define(pow b p)
  (if (= 0 p) 1
      (* b (pow b (- p 1)))))

(define (ncons a b)
  (*(pow 2 a)(pow 3 b)))

(define (ncar pair)
  (if (not (= 0 (remainder pair 2))) 0
      (+ 1 (ncar (/ pair 2)))))

(define (ncdr pair)
  (if (not (= 0 (remainder pair 3))) 0
      (+ 1 (ncdr (/ pair 3)))))

;;test cases
(define pair1 (ncons 100 55))
(define pair2 (ncons 555 123))

(ncar pair1)
(ncdr pair1)

(ncar pair2)
(ncdr pair2)