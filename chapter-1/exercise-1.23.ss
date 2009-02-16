(define (square x)
  (* x x))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (next n)
  (if (= 2 n) 3 (+ 2 n)))

(define (find-divisor n test-divisor)
  (cond [(> (square test-divisor) n) n]
        [(divides? test-divisor n) test-divisor]
        [else (find-divisor n (next n))]))

(define (divides? a b)
  (zero? (remainder b a)))

