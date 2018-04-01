# Theory-of-Algorithms

# Racket

<a href="https://racket-lang.org/" ><img src="https://racket-lang.org/img/racket-logo.svg" width="128" height="128"></a>

Racket is a general purpose, multi-paradigm programming language in the Lisp-Scheme family. One of its design goals is to serve as a platform for language creation, design, and implementation.

## Instructions
The following exercises should be completed in the Racket programming language [1].
Remember to plan your work and make regular commits to your repository. The instructions
for submitting your work are given on the Moodle page. Note that “from scratch”
means using only cons, car, cdr, define, lambda, if, null, null?, cond, = and the
basic numerical operators (+, -, *, /, modulo). Other basic functions may be allowed,
but please confirm their use with the lecturer

## Problem 9
Write a function sod2 in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing a 1 where the number of
1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.
For example:


```
> (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 1 1 0 1 0 0 1)

```

## Coded UP Solution

```
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

```
