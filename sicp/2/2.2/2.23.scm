; Thee procedure for-each is similar to map. It takes as arguments a procedure and a list of elements.
; However, rather than forming a list of the results, for-each just applies the procedure to each of the elements in turn,
; from left to right.
; Give an implementation of for-each.

(define (for-each proc items)
    (if (not (null? items))
        (proc (car items)))
    (if (not (null? items))
        (for-each proc (cdr items))))

(for-each (lambda (x) (display x)) (list 1 2 3))
;123