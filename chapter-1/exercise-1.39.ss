#lang scheme

(define (cont-frac n d k)
  (define (recur i)
    (printf "~a ~a ~a\n" i (n i) (d i))
    (/ (n i)
       (+ (d i)
          (if (= i k)
              0
              (recur (+ 1 i))))))
  (recur 1))

(define (tan-cf x k)
  (define (n i)
    (if (= i 1)
        x
        (- 0 (expt x 2))))
  (define (d i)
    (- (* 2 i) 1))
  (cont-frac n d k))

