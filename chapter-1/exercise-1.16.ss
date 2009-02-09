(define (iter-expon b n acc)
    (cond
        [(zero? n) acc]
        [(even? n) (iter-expon (* b b) (/ n 2) acc)]
        [(odd? n) (iter-expon b (- n 1) (* acc b))]
    )
)

(define (expon b n)
    (iter-expon b n 1))

