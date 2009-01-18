(define (sum-of-squares a b)
  (+ (* a a) (* b b)))

(define (sum-squares-of-larger-two a b c)
  (cond
    [(or (>= a b) (>= a c))
      (sum-of-squares a (if (> b c) b c))]
    [else
      (sum-of-squares b c)]))

