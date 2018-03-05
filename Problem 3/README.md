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

## Problem 3
Write, from scratch, two functions in Racket. The first is called lcycle. It takes a
list as input and returns the list cyclically shifted one place to the left. The second
is called rcycle, and it shifts the list cyclically shifted one place to the right.
For example:

> (lcycle (list 1 2 3 4 5))

'(2 3 4 5 1)

> (rcycle (list 1 2 3 4 5))

'(5 1 2 3 4 )



## Coded up solution

```
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
      (append (cons (last l)(remove-last l))))) 
      ; if not null call the remove-last function to remove last element and append list to it

; remove-last function to remove last element from list
(define (remove-last l)
  (if (null? (cdr l)) ; if 2nd element = null output null
        '() 
        (cons (car l) (remove-last (cdr l))))) ; newly allocated list 
 
```
