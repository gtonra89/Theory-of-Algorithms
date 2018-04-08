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

## Problem 10
Write a function lstq in Racket that takes as arguments two lists l and m of equal
length and containing numbers. It should return d, the distance given by the sum of
the square residuals between the numbers in the lists:

This means take the i th element of m from the i th element of l and square the result
for all i. Then add all of those to get d. For example:


```
> (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
54.61

```

## Coded UP Solution

```
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

```
