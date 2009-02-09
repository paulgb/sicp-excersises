
(define (double x)
    (* x 2))

(define (halve x)
    (/ x 2))

(define (mult a b)
    (mult-iter a b 0))

(define (mult-iter a b z)
    (cond
        [(= 1 a) (+ b z)]
        [(even? a) (mult-iter (halve a) (double b) z)]
        [(odd? a) (mult-iter (sub1 a) b (+ z b))]
    )
)

