
(define (rect-area rect)
  (* (rect-width rect)
     (rect-height rect)))

(define (rect-perimiter rect)
  (* 2
     (+ (rect-height rect)
        (rect-width rect))))

; implementation 1
;(define (make-rect top bottom left right)
;  (cons (cons top bottom)
;        (cons left right)))
;
;(define (rect-height rect)
;  (abs (- (car (car rect))
;          (cdr (car rect)))))
;
;(define (rect-width rect)
;  (abs (- (car (cdr rect))
;          (cdr (cdr rect)))))

; implementation 2
(define (make-rect top height left width)
  (cons (cons top height)
        (cons left width)))

(define (rect-height rect)
  (cdr (car rect)))

(define (rect-width rect)
  (cdr (cdr rect)))

