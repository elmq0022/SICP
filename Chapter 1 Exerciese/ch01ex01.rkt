#lang planet neil/sicp
;;;
; SICP - https://sicpebook.wordpress.com/ebook/
; Exercies 1.1
; What do each of following blocks return?
;;;

10 ;10

(+ 5 3 4) ;11

(- 9 1) ;8

(+ (* 2 4)(- 4 6)) ;6

(define a 3) ; a = 3
(define b (+ a 1)) ;b = 4
(+ a b (* a b)) ;19
(= a b) ;#f

(if(and (> b a) (< b (* a b)))
    b
    a)
;b = 4

(cond((= a b) 6)
     ((= b 4)(+ 6 7 a))
     (else 25))
;16

(+ 2 (if(> b a) b a)) ;6

(*(cond((> a b) a)
       ((< a b) b)
       (else -1))
  (+ a 1))
;16