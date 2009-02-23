#lang scheme

(define (double f)
  (lambda (x) (f (f x))))

(((double (double double)) add1) 5)
; 13
