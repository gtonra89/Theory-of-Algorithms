#lang racket

; hamming-weight function takes a list
;returns number of non-zero elements in it.
 
; The apply function to sum the elements remaining in the list after being filtered.
; Using racket's filter function to filter the list to return a list of positive numbers not equal to zero 
(define (hamming-weight? l)
   
    (apply +(filter positive? l))) 

; passing a list for testing
(hamming-weight? (list 0 0 1 1 0 1 1 1 1 1 0)) ; expected result: 7

; passing a list for testing
(hamming-weight? (list 0 0 1 1 0 0)) ; expected result: 2

; passing a list for testing
(hamming-weight? (list 0 0 0 0)) ; expected result: 0
