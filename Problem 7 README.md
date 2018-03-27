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

## Problem 7

Write a function maj in Racket that takes three lists x, y and z of equal length and
containing only 0’s and 1’s. It should return a list containing a 1 where two or more
of x, y and z contain 1’s, and 0 otherwise. For example:

```
> (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 0 0 1 0 1 1 1)

```

## Coded UP Solution
```
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
```
