; Exercise 2.5: Show that we can represent pairs of nonnegative integers using only numbers and arithmetic operations
; if we represent the pair a and b as the integer that is the product 2a 3b.
; Give the corresponding definitions of the procedures cons, car, and cdr.

(define (divide-count x y) (
(define (cons a b) (* (expt 2 a) (expt 3 b)))

; The main idea for implementing an (car x) and (cdr x) is to count how many times the x can be divided by 2 and 3.
; It's quite boring to implement as it's a simple loop with counter