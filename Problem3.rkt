#lang racket
; Take in a list and move the 1st element of the list to the end.
(define (lcycle l) ; define our procedure and pass in list
  (if (null? l) ; if list = null then..
      '() ; output null
      (append (cdr l) (list (car l))))) ; otherwise, take 1st element and append it to list

; Take a list and move last element to start of the list.
(define (rcycle l)
  (if (null? l) ; if list = null - output null
      '() 
      (append (cons (last l)(remove-last l))))) ; if not null call the remove-last function to remove last element and append list to it

; remove-last function to remove last element from list
(define (remove-last l)
  (if (null? (cdr l)) ; if 2nd element pair = null then..
        '() ;output null
        (cons (car l) (remove-last (cdr l))))) ; newly allocated list 
  


