#lang racket
; A prime must be more than 1 as 1 is not a prime 
(define range 2) 

(define (decide-prime? n);define function decide-prime 
 
   (not   (for/or [(x (in-range range n))]=
   ; check to see if it is dividable
      (= 0 (remainder n x))))) 
     
; range to 10 
(for [(a (in-range range 100))]
  (display "\n")
  (display a)
  (display "= ")
  (display (decide-prime? a))) 
