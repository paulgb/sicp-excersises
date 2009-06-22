#lang scheme

(define (reverse lst)
    (define (rev lst acc)
        (if (empty? lst)
            acc
            (rev (cdr lst) (cons (car lst) acc))))
    (rev lst '()))

