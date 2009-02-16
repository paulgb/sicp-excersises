(define (product term a b next)
  (if (> a b)
      1
      (* (term a) (product term (next a) b next))))

(define (identity x)
  x)

(define (add1 x)
  (+ 1 x))

(define (sqr x)
  (* x x))

(define (factorial x)
  (product identity 1 x add1))

(define (pi-term n)
  (/ (* 4 n (add1 n))
     (sqr (+ 1 (* 2 n)))))

(define (pi-approx n)
  (* 4 (product pi-term 1 n add1)))

(define (product-iter term a b next)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))

