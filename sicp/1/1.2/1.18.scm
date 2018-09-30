(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (fast-mul a b s)
    (cond ((= b 0) s)
          ((even? b) (fast-mul (double a) (halve b) s))
          (else (fast-mul a (- b 1) (+ a s)))))

(define (* a b)
    (fast-mul a b 0))