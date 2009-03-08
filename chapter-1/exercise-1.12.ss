#lang scheme

; compute the nth element of the given row in Pascal's triangle
; rows start at 1, n starts at 0
(define (pascal-element row n)
    (if (or (= n 0) (= n (sub1 row)))
        1
        (+ (pascal-element (sub1 row) (sub1 n))
           (pascal-element (sub1 row) n))))

