#lang scheme

(define (lowerdenom denom)
    (cond
        [(= denom 50) 25]
        [(= denom 25) 10]
        [(= denom 10) 5]
        [(= denom 5) 1]
        [(= denom 1) 0]
    )
)

(define nextlabel 0)
(define (make-label)
    (set! nextlabel (add1 nextlabel))
    nextlabel)

(define (count-ways denom acc money id)
    (cond
        [(zero? denom) '()]
        [(zero? money) (list (cons (list (make-label) 0) acc))]
        [(>= money denom) (append (count-ways denom (cons (list id money) acc) (- money denom) (make-label))
                                  (count-ways (lowerdenom denom) acc money id))]
        [else (count-ways (lowerdenom denom) acc money id)]))

(define (print-dot-labels count-result)
    (cond
        [(empty? count-result) (void)]
        [(empty? (first count-result)) (print-dot-labels (rest count-result))]
        [else
            (printf "~a [label=\"~a\"];\n" (first (first (first count-result))) (second (first (first count-result))))
            (print-dot-labels (cons (rest (first count-result)) (rest count-result)))
        ]
    )
)

(define (string-join x lst str)
    (cond
        [(empty? lst) ""]
        [x (string-append str (number->string (first (first lst))) (string-join #t (rest lst) str))]
        [else (string-append (number->string (first (first lst))) (string-join #t (rest lst) str))]))

(define (string-join2 x lst str)
    (cond
        [(empty? lst) ""]
        [x (string-append str (first lst) (string-join2 #t (rest lst) str))]
        [else (string-append (first lst) (string-join2 #t (rest lst) str))]))


(define (print-dot-edges count-result)
    (display
    (string-join2
        #f
       (map (lambda (x) (string-join #f x " -> ")) count-result)
        ";\n"
    ))
    (printf ";")
)

(define (print-as-dot count-result)
    (printf "digraph ex14\n")
    (printf "{\n")
    (print-dot-labels count-result)
    (print-dot-edges (map reverse count-result))
    (printf "\n")
    (printf "}\n")
)

(print-as-dot (count-ways 50 '() 11 (make-label)))
