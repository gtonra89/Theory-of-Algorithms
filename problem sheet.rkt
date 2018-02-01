#lang racket
(*(+(/ 10 5 ) 5) 3)


(+ 2 3 4 5)


(+ (/ 10 3) 1 5 2)


(+ (/ 10 3.0) 1 5 2)


(* (+ 3 5) (/ 10 2))


(+(* (+ 3 5) (/ 10 2)) (+ (/ 10 3) 1 5 2))

(define(discount price disc)(- price (* price(/ disc 100.0))))

(discount 29.90 50)

(discount 10 5)

(define (grcomdiv intX intY)
  (if (= y 0)
      intX
      (grcomdiv intY (remainder intX intY))))

(grcomdiv 10 15)
(grcomdiv 64 30)
