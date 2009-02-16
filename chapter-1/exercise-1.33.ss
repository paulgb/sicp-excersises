
(define (filtered-accumulate combiner null-value term a next b filter)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
            (if (filter a)
                (combiner result (term a))
                result))))
  (iter a null-value))


