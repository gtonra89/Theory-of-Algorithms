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

## Problem 6
Write a function hamming-distance in Racket that takes two lists and returns the
number of positions in which they differ. For example:
```
> (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
5
```

## Coded UP Solution
```
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
```
