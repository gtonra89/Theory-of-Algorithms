
#lang racket

(define (sod2 x y z); Declare function and take in 3 lists
  (if(null? x);check if x list is equal to null
  '()
   ; check if first elements in 3 lists = 1
     (if (or (= 1 (car x) (car y) (car z))
          ;or element in x is 1 and y,z = 0
          (and (= 1 (car x)) (= 0 (car y) (car z)))
          
          ;or element in y is 1 and x,z = 0
          (and (= 1 (car y)) (= 0 (car x) (car z)))
          
          ;or element in z is 1 and y,x = 0
          (and (= 1 (car z)) (= 0 (car y) (car x))) )
      
          (cons 1 (sod2 (cdr x) (cdr y) (cdr z)))
          (cons 0 (sod2 (cdr x) (cdr y) (cdr z)))
      )
  )
)  
;Test
(displayln '(sod2 results on Lists 1,2 & 3 ))

(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))

(displayln '(sod2 results on Lists 3,4 & 5 ))
(sod2 (list 1 0 1 1 0 1) (list 1 1 1 0 1 1) (list 0 1 0 0 1 1))

;results should equal
;(0 1 1 0 1 0 0 1)(1,2 & 3)
;(0 0 0 1 0 1)(4,5 & 6)
