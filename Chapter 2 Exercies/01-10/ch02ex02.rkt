#lang planet neil/sicp

;;;
;; SICP - https://sicpebook.wordpress.com/ebook/
;; Exercise 02.02
;; Segments
;;;

(define (make-point x y)
  (cons x y))


(define (x-point p)
  (car p))


(define (y-point p)
  (cdr p))


(define (make-segment p1 p2)
  (cons p1 p2))


(define (start-segment segment)
  (car segment))


(define (end-segment segment)
  (cdr segment))


(define (avg a b)
  (/ (+ a b) 2))


(define (midpoint seg)
  (let((x (avg (x-point (start-segment seg))
               (x-point (end-segment seg))))
       (y (avg (y-point (start-segment seg))
               (y-point (end-segment seg)))))
  (cons x y)))


(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


(print-point
 (midpoint
  (make-segment
   (make-point 1 1)
   (make-point 3 3))))