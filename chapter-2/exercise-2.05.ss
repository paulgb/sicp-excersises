
(define (my-cons a b)
  (* (expt 2 a)
     (expt 3 b)))

(define (my-car pair)
  (if (zero? (modulo pair 2))
      (+ 1 (my-car (/ pair 2)))
      0))

(define (my-cdr pair)
  (if (zero? (modulo pair 3))
      (+ 1 (my-cdr (/ pair 3)))
      0))

