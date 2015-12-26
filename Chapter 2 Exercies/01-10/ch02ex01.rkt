#lang planet neil/sicp

;;;
;; SICP - https://sicpebook.wordpress.com/ebook/
;; Exercise 02.01
;; Better make-rat
;;;

(define (make-rat n d)
  (let((n_abs (abs n))
       (d_abs (abs d))
       (g (gcd (abs n) (abs d)))
       (sign (*(/ n (abs n))(/ d (abs d)))))
  (cons (* sign (/ n_abs g)) (/ d_abs g))))

(make-rat 1 2)
(make-rat 1 -2)
(make-rat -1 2)
(make-rat -1 -2)