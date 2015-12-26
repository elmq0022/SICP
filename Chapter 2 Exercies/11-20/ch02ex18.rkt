#lang planet neil/sicp

;;;
;; SICP - https://sicpebook.wordpress.com/ebook/
;; Exercise 02.18
;; Write a function that reverses a list.
;;;

(define (reverse lst)
  (if (null? lst)
      lst
      (append (reverse (cdr lst)) (list(car lst)))))
      
(display (reverse (list 1 2 3)))