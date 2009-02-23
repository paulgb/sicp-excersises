#lang scheme

(define dx 0.00001)

(define (smooth f)
  (lambda (x)
    (/
     (+
      (f (- x dx))
      (f x)
      (f (+ x dx)))
     3)))

(define (repeat f x times)
  (if (= 0 times)
      x
      (f (repeat f x (- times 1)))))

(define (repeated f times)
  (lambda (x) (repeat f x times)))

(define (n-fold-smooth f n)
  ((repeated smooth n) f))

