#lang racket
;Define chse function
(define (chse x y z)
  (if(null? x); if list is null then return nothing
   '()
    (if(= (car x) 1);check if the first element in x is = 1

        (cons (car y) (chse (cdr x) (cdr y) (cdr z)));add first element of y to the new list and call the chse function of the remaining(cdr) of lists
        (cons (car z) (chse (cdr x) (cdr y) (cdr z)));otherwise add first element of z to the new list and call the chse function of the remaining(cdr) of lists
    )
  )
)

;Testing function
(displayln '(chse results on (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)))
(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

(displayln '(chse results on (list 1 1 1 1 0 0 0 0) (list 1 1 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)))
(chse (list 1 1 1 1 0 0 0 0) (list 1 1 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

(displayln '(chse results on (list 1 1 1 1 1 1) (list 1 0 1 0 1 0) (list 0 1 0 0 0 1)))
(chse (list 1 1 1 1 1 1) (list 1 0 1 0 1 0) (list 0 1 0 0 0 1))


;results for above 
;'(0 1 0 1 0 0 1 1)
;'(1 0 1 0 1 0)
;'(1 1 1 1 0 1 0 1)

