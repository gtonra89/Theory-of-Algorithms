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

## Problem 8

Write a function chse in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing the elements of y in
the positions where x is 1 and the elements of z otherwise. For example:


```
> (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 1 0 1 0 0 1 1)

```

## Coded UP Solution
```
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

;results for above 
;'(0 1 0 1 0 0 1 1)
```
