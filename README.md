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


### Problem 1 Code & Docs

1. Write, from scratch, a function in Racket that uses a brute-force algorithm that takes a single positive integer and return true if the number is a prime and false otherwise. Call the function decide-prime.
  
<a href="https://github.com/gtonra89/Theory-of-Algorithms/tree/master/Problem%201%20Brute%20Force%20Prime%20Numbers" ><img src="http://www.pvhc.net/img212/luiaoazsafytcqkzjxem.jpg" width="128" height="128"></a>
<br><br>
### Problem 2 Code & Docs
2. Write, from scratch, a function in Racket that takes a positive integer n 0 as input
and returns a list by recursively applying the following operation, starting with the
input number. <br>
3n i + 1 if n i is odd <br>
or else  n i+1 = n i ÷ 2 <br>
otherwise End the recursion when (or if) the number becomes 1. Call the function collatz-list.
So, collatz-list should return a list whose first element is n 0 , the second element
is n 1 , and so on
```
(collatz-list 5)
'(5 16 8 4 2 1)

(collatz-list 9)
'(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)

(collatz-list 2)
'(2 1)
```
<a href="https://github.com/gtonra89/Theory-of-Algorithms/tree/master/Problem%202" ><img src="http://www.pvhc.net/img212/luiaoazsafytcqkzjxem.jpg" width="128" height="128"></a>

<br><br>
### Problem 3 Code & Docs
3. Write, from scratch, two functions in Racket. The first is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it shifts the list cyclically shifted one place to the right. For example:
```

(lcycle (list 1 2 3 4 5))
    '(2 3 4 5 1)

(rcycle (list 1 2 3 4 5))
    '(5 1 2 3 4 )

```
<br>
<a href="https://github.com/gtonra89/Theory-of-Algorithms/tree/master/Problem%203" ><img src="http://www.pvhc.net/img212/luiaoazsafytcqkzjxem.jpg" width="128" height="128"></a>
