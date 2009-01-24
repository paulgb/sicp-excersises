#lang scheme

(define (sqrt-iter guess x)
  (let ((new-guess (improve guess x)))
    (if (close-enough? new-guess guess)
      new-guess
      (sqrt-iter (improve guess x) x))))
      
(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (close-enough? x y)
  (< (abs (- 1 (/ x y))) 0.0001))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

