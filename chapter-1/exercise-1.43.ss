#lang scheme

(define (repeat f x times)
  (if (= 0 times)
      x
      (f (repeat f x (- times 1)))))

(define (repeated f times)
  (lambda (x) (repeat f x times)))

