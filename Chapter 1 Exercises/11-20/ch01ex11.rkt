#lang planet neil/sicp

;;;
;; SICP - https://sicpebook.wordpress.com/ebook/
;; Exercise 01.11
;; Recursive and Iterative Function
;;;

;; Recursive Version

(define (f_r n)
  (cond((< n 3) n)
       (else (+(f_r(- n 1))
               (* 2 (f_r(- n 2)))
               (* 3 (f_r(- n 3)))))))

(f_r 0)
(f_r 1)
(f_r 2)
(f_r 3)
(f_r 4)
(f_r 5)

;; Iterative version in two parts.  
;; Procedure stores state the state of f_{n-2}, f_{n-1},
;; and f_{n} in successive funtion calls.  

(define (f_i_iter f1 f2 f3 n)
  (if(< n 1)
     f1
     (f_i_iter f2
               f3
               (+ f3
                  (* 2 f2)
                  (* 3 f1))
               (- n 1))))

;; Prime the state with the values of f(0), f(1), and f(2).
;; Count down until n < 1 and f(n) is in position of f1.  

(define (f_i n)
  (f_i_iter 0 1 2 n))

(f_i 0)
(f_i 1)
(f_i 2)
(f_i 3)
(f_i 4)
(f_i 5)
