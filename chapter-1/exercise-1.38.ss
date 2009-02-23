#lang scheme

(define (cont-frac n d k)
  (define (recur i)
    (/ (n i)
       (+ (d i)
          (if (= i k)
              0
              (recur (+ 1 i))))))
  (recur 1))

(define (n i)
  1.0)

(define (d i)
  (if (= 2 (modulo i 3))
      (/ (+ i 1) 1.5)
      1.0))

(define (approx-e iterations)
  (+ 2.0 (cont-frac n d iterations)))

