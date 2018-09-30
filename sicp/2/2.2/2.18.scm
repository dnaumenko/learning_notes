; Define a procedure reverse that takes a list as argument and returns a list of the same elements in reverse order:

(define (reverse l)
    (define (do-reverse x result)
        (if (null? x)
            result
            (do-reverse (cdr x) (cons (car x) result))))
    (do-reverse l (list)))