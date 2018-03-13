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

## Problem 4
Write a function sublsum in Racket that takes a list (of integers) as input and returns
a list of sublists of it that sum to zero. For this problem, you can use the
combinations built-in function. Note the order of the sublists and their elements
doesn’t matter. For example:
```
> (sublsum (list 1 2 3 4 -5))
'((2 3 -5) (-5 1 4))
> (sublsum (list 1 2 3 4 5))
'()
```

## Coded Up Solution

```
#lang racket

(define (sublsum? l)
  ; Combinations is a built in racket function that returns every combination of elements in a list

  ; cdr is used to just return the 2nd element of the list pair due to the 1st element being null

  ; using filter func to list only the sublists that are true, the sum of each sublist is equal to 0 this time
  (filter sum (cdr (combinations l))))

; declare Function used to calculate sum of elements in each sublist returned from combinations
(define (sum li)
  (if (null? li) ; if list = null then..
      '() ; return null, otherwise...
      ; The 'apply' racket function used to calculate the sum of elements in a list
      (equal? (apply + li) 0))) ; then check if sum is equal to 0 using 'equal' function

; Pass in the list into our function
(sublsum? (list 1 2 3 4 -5)) 

(sublsum? (list 1 2 3 4 5)) 

```
