(define (square x) (* x x))
(define (min a b) (if (< a b) a b))
(define (exr3 a b c) (+ (square a) (square b) (square c) (- (square (min (min a b) c)))))
