;Here is an alternative procedural representation of pairs.
; For this representation, verify that (car (cons x y)) yields x for any objects x and y.

(define (cons x y) (lambda (m) (m x y)))
(define (car z) (z (lambda (p q) p)))

(car (cons 1 2))
; 1

What is the corresponding definition of cdr?
(define (cdr z) (z (lambda (p q) q)))

To verify that this works, make use of the substitution mode:

(car (cons 1 2))
(car (lambda (m) (m x y)))
((lambda (m) (m x y)) (lambda (p q) p))
((lambda (p q) p) x y)
(x)
