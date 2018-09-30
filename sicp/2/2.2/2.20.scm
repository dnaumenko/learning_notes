; Write a procedure same-parity that takes one or more integers and returns a list of all the arguments
; that have the same even-odd parity as the first argument

(define (filter pred? seq result)
    (if (null? seq)
        result
        (if (pred? (car seq))
            (filter pred? (cdr seq) (append result (list (car seq))))
            (filter pred? (cdr seq) result))))

(define (same-parity . l)
    (if (odd? (car l))
        (filter (lambda (x) (odd? x)) l (list))
        (filter (lambda (x) (not (odd? x))) l (list))))

(same-parity 10 2 3 5 7 9 100 200)
;(10 2 100 200)