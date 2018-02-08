#lang racket
; defining the function and its parameters

(define (collatz-list n)
  (cons n(cond ((= n 1) 1); Check if n = 1 
    ; if odd multiply by 3 and add 1,         
    ((odd? n) (collatz-list ( + (* n 3) 1)))


        ; or else continue recursion
        (else (collatz-list (/ n 2)))))); else divide by 2 and continue recursion

(collatz-list 9) ; sample test 
(collatz-list 5) ; sample test
(collatz-list 2) ; sample test
