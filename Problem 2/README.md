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

## Problem 2
2. Write, from scratch, a function in Racket that takes a positive integer n 0 as input
and returns a list by recursively applying the following operation, starting with the
input number.

<img src="https://github.com/gtonra89/Theory-of-Algorithms/blob/master/Problem%202/Selection_001.png" width="450" height="200"/>

End the recursion when (or if) the number becomes 1. Call the function collatz-list.

So, collatz-list should return a list whose first element is n 0 , the second element

is n 1 , and so on. For example:
> (collatz-list 5)

'(5 16 8 4 2 1)

> (collatz-list 9)

'(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)

> (collatz-list 2)

'(2 1)

