;; doesn't work

(define (fib n)
    (fib-iter 1 0 0 1 n))

(define (p-prime p q)
    (+ (* p p) (* q q)))

(define (q-prime p q)
    (+ (* 2 p q) (* q q)))

(define (fib-iter a b p q count)
    (cond   [(zero? count) b]
            [(even? count)
                (fib-iter   a
                            b
                            (p-prime p q)
                            (q-prime p q)
                            (/ count 2))]
            [else
                (fib-iter (+ (* b q) (* a q) (* a p))
                          (+ (* b q) (* a q))
                          p
                          q
                          (- count 1))]))
            
