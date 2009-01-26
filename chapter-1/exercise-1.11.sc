#lang scheme

(define (f-recursive n)
    (if (< n 3)
        n
        (+  (f-recursive (- n 1))
            (* 2 (f-recursive (- n 2)))
            (* 3 (f-recursive (- n 3))))))

(define (f-iterative n)
    (if (< n 3)
        n
        (f-step 2 1 0 (- n 2))))

(define (f-step p1 p2 p3 n)
    (if (zero? n)
        p1
        (f-step
            (+ p1 (* p2 2) (* p3 3))
            p1
            p2
            (sub1 n))))

