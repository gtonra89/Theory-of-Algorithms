#lang racket
;define squaring function
(define (sqr x)
  (* x x )
)
   
; lstq function
(define (lstq x y); Declare lstq function that take in 2 lists
  
  (if(null? x);check if x list is null
     0
  (+ (sqr(- (car x) (car y))) (lstq (cdr x) (cdr y)))
  )                                                     
)  


;Test function works
(displayln '(lstq results on ((list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))))
(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))


