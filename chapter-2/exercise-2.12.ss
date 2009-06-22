#lang scheme

(define (make-center-percent center percent)
  (let ((delta (abs (* center (/ percent 100)))))
   (make-interval
    (- center delta)
    (+ center delta))))
  
(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (percent i)
  (*
   (/ (- (upper-bound i) (center i))
      (center i))
   100))

(define make-interval cons)
(define upper-bound cdr)
(define lower-bound car)

