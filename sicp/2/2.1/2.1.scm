; Define a beer version of make-rat that handles both positive and negative arguments.
; make-rat should normalize the sign so that if the rational number is positive,
; both the numerator and denominator are positive, and if the rational number is negative, only the numerator is negative.

(define (make-rat n d)
    (cond ((and (negative? d) (negative? n)) (cons n (- d)))
          ((negative? d) (cons (- n) (- d)))
          (else (cons n d))))

(print-rat (make-rat 1 2))
; 1/2

(print-rat (make-rat 1 -2))
; -1/2

(print-rat (make-rat -1 -2))
; -1/2

(print-rat (make-rat -1 2))
; -1/2