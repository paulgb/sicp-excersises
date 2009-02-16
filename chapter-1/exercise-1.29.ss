(define (sum term a next b)
    (if (> a b)
        0
        (+  (term a)
            (sum term (next a) next b))))

(define (simpson-integral f a b n)
  (define h (/ (- b a) n))
  (define (add-2h x) (+ x (* 2 h)))
  (* h 1/3 (+ (f a)
              (* 4 (sum f (+ a h) add-2h (- b h)))
              (* 2 (sum f (+ a h h) add-2h (- b h)))
              (f b))))

