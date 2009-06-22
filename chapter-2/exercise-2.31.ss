#lang scheme

(define (tree-map fun tree)
    (cond ((empty? tree) '())
          ((cons? tree)
            (cons (tree-map fun (car tree))
                  (tree-map fun (cdr tree))))
          (else (fun tree))))

(define (square x)
  (* x x))

(define (square-tree tree) (tree-map square tree))

