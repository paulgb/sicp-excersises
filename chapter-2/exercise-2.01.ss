
(define (make-rat n d)
    (let ((g (* (gcd n d)
                (if (< d 0) -1 1))))
        (cons (/ n g) (/ d g))))

