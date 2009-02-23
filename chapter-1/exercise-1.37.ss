#lang scheme

(define (cont-frac n d k)
  (define (recur i)
    (/ (n i)
       (+ (d i)
          (if (= i k)
              0
              (recur (+ 1 i))))))
  (recur 1))

;; a. 12 iterations are needed for 4 decimal places of accuracy.

;; b:

(define (cont-frac-iter n d k)
  (define (iter i acc)
    (if
     (zero? i)
     acc
     (iter (- i 1) (/ (n i) (+ acc (d i))))
    ))
  (iter k 0))

