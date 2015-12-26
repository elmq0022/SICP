#lang planet neil/sicp

;;;
;; SICP - https://sicpebook.wordpress.com/ebook/
;; Exercise 02.03
;; Rectangles
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

;; A rectangle can be specfying two
;; points that are opposite each other.  
(define (mk-rect p1 p2)
  (cons p1 p2))

(define (lin-dist p1 p2 xy-pt)
  (abs (- (xy-pt p1)(xy-pt p2))))

(define (dims-rect r)
  (let((wdth (lin-dist (car r)
                       (cdr r)
                       x-point))
       (hght (lin-dist (car r)
                       (cdr r)
                       y-point)))
       (cons wdth hght)))

(define (area-rect r)
  (let((dims (dims-rect r)))
    (* (car dims)(cdr dims))))

(define (perim-rect r)
  (let((dims (dims-rect r)))
    (* 2 (+ (car dims)
            (cdr dims)))))

;; some tests
(define r1 (mk-rect
 (make-point 1 1)
 (make-point 3 3)))

(define r2 (mk-rect
 (make-point -1 -1)
 (make-point 3 3)))

(area-rect r1)
(area-rect r2)
(perim-rect r1)
(perim-rect r2)