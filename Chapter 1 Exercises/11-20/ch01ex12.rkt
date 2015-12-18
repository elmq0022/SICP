#lang planet neil/sicp

;;;
;; SICP - https://sicpebook.wordpress.com/ebook/
;; Exercise 01.12
;; Pascal's Triangle
;; Write a function that returns an element of
;; pascal's triangle given it's row and column.
;;;

(define (pascal row col)
  (cond((= col 1) 1)
       ((= col row) 1)
       (else (+ (pascal (- row 1) (- col 1))
		(pascal (- row 1) col)))))

(pascal 1 1)
(pascal 2 1)
(pascal 2 2)
(pascal 3 2)
(pascal 4 2)
(pascal 6 3)
(pascal 6 4)
(pascal 7 4)
