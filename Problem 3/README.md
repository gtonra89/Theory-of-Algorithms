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

