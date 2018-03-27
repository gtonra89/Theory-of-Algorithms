#lang racket

;Declare Hamming-distance function
(define (hamming-distance list1 list2)
  (if(null? list1); if list null return nothing
   0
  (if(= (car list1) (car list2));check if elements match
        (hamming-distance (cdr list1) (cdr list2));if so call hamming-distance on the car of both lists
        (+ 1 (hamming-distance (cdr list1) (cdr list2))); 
        );recurse through list adding 1 at a time
  )
)

(displayln '(Hamming-distance results on (hamming-distance (list 1 0 1 1 0 0 0 1) (list 1 0 1 1 0 1 1 0)))) ;result = 3 
(hamming-distance (list 1 0 1 1 0 0 0 1) (list 1 0 1 1 0 1 1 0)) ;result = 3

(displayln '(Hamming-distance results on (hamming-distance (list 1 0 1 1 0 0) (list 1 0 1 0 0 1)))) ;result = 2
(hamming-distance (list 1 0 1 1 0 0) (list 1 0 1 0 0 1)) ;result should = 2

(displayln '(Hamming-distance results on (hamming-distance (list 1 1 1 1 0 0 0 0) (list  1 0 1 0 1 1 1 0)))) ;result = 5
(hamming-distance (list 1 1 1 1 0 0 0 0) (list  1 0 1 0 1 1 1 0)) 

