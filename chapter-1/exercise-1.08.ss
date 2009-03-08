#lang scheme

(define (improve y x)
  (/ 
    (+ 
      (/ x (square y)) 
      (* 2 y))
    3))

(define (square x)
  (* x x))

(define (cube-root-iter guess x)
  (let ((new-guess (improve guess x)))
    (if (close-enough? new-guess guess)
      new-guess
      (cube-root-iter (improve guess x) x))))
      
(define (close-enough? x y)
  (< (abs (- 1 (/ x y))) 0.0001))

(define (cube x)
  (* x x x))

(define (cube-root x)
  (cube-root-iter 1.0 x))

