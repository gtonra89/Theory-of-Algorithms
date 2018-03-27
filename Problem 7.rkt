#lang racket

(define (maj x y z)
    (if (null? x)
        '()

        ; conditon to see where two or more x y and z's contains 1 or 0
        (cond 

          ((= (car x) (car y)) (cons (car x) (maj (cdr x) (cdr y) (cdr z))))
          ((= (car x) (car z)) (cons (car x) (maj (cdr x) (cdr y) (cdr z))))
     
          (else (cons (car y) (maj (cdr x) (cdr y) (cdr z))))
        )
    )
)

(displayln '(result of (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))))
(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

(displayln '(result of (maj (list 0 0 0 0 1 1 1 1) (list 0 0 0 0 1 1 1 1) (list 0 0 0 0 1 1 1 1))))
(maj (list 0 0 0 0 1 1 1 1) (list 0 0 0 0 1 1 1 1) (list 0 0 0 0 1 1 1 1))

(displayln '(result of (maj (list 0 1 0 1 0 1 0 1) (list 0 1 0 1 0 1 0 1) (list 0 1 0 1 0 1 0 1))))
(maj (list 0 1 0 1 0 1 0 1) (list 0 1 0 1 0 1 0 1) (list 0 1 0 1 0 1 0 1))

(displayln '(result of (maj (list 0 0 0 1 0 1 0 1) (list 0 1 0 1 0 1 0 1) (list 1 0 1 0 1 0 1 0))))
(maj (list 0 0 0 1 0 1 0 1) (list 0 1 0 1 0 1 0 1) (list 1 0 1 0 1 0 1 0))