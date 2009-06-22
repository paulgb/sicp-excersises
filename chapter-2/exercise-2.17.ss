#lang scheme

(define (list-pair lst)
    (if (empty? (cdr lst))
        lst
        (list-pair (cdr lst))))

