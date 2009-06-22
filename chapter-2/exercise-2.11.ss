
(define (mul-interval x y)
  (cond
      [(and (> (lower-bound x) 0) ; x > 0, y > 0
            (> (lower-bound y) 0))
       (make-interval (* (lower-bound x) (lower-bound y))
                      (* (upper-bound x) (upper-bound y)))]
      
      [(and (< (upper-bound x) 0) ; x < 0, y < 0
            (< (upper-bound y) 0))
       (make-interval (* (upper-bound x) (upper-bound y))
                      (* (lower-bound x) (lower-bound y))
                      )]
      [(and (< (upper-bound x) 0) ; x < 0, y > 0
            (> (lower-bound y) 0))
       (make-interval (* (lower-bound x) (upper-bound y))
                      (* (upper-bound x) (lower-bound y))
                      )]
      [(and (> (lower-bound x) 0) ; x > 0, y < 0
            (< (upper-bound y) 0))
       (make-interval (* (upper-bound x) (lower-bound y))
                      (* (lower-bound x) (upper-bound y))
                      )]
      [(> (lower-bound x) 0) ; x > 0, y1 <= 0 <= y2
       (make-interval (* (upper-bound x) (lower-bound y))
                      (* (upper-bound x) (upper-bound y))
                      )]
      [(< (upper-bound x) 0) ; x < 0, y1 <= 0 <= y2
       (make-interval (* (lower-bound x) (upper-bound y))
                      (* (lower-bound x) (lower-bound y))
                      )]
      [(> (lower-bound y) 0) ; x1 <= 0 <= x2, y > 0
       (make-interval (* (lower-bound x) (upper-bound y))
                      (* (upper-bound x) (upper-bound y))
                      )]
      [(< (upper-bound y) 0) ; x1 <= 0 <= x2, y < 0
       (make-interval (* (upper-bound x) (lower-bound y))
                      (* (lower-bound x) (lower-bound y))
                      )]      
      [else ; x1 <= 0 <= x2, y1 <= 0 <= y2
       (let ((p1 (* (lower-bound x) (lower-bound y)))
             (p2 (* (lower-bound x) (upper-bound y)))
             (p3 (* (upper-bound x) (lower-bound y)))
             (p4 (* (upper-bound x) (upper-bound y))))
         (make-interval (min p1 p2 p3 p4)
                        (max p1 p2 p3 p4)))]
      ))

(define make-interval cons)
(define upper-bound cdr)
(define lower-bound car)

