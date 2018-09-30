; Define a procedure last-pair that returns the list that contains only the last element of a given (nonempty) list

(define (last-pair x)
    (if (null? x) (error "Can't get last-pair from null list"))
    (if (null? (cdr x))
        (list (car x))
        (last-pair (cdr x))))