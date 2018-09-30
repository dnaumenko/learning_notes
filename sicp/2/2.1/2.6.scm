; Exercise 2.6: In case representing pairs as procedures wasn’t mind-boggling enough, consider that,
; in a language that can manipulate procedures, we can get by without numbers
; (at least insofar as non-negative integers are concerned) by implementing 0 and the operation of adding 1 as

(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n) (lambda (f) (lambda (x) (f ((n f) x)))))

; Define one and two directly (not in terms of zero and add-1)
(define one (lambda (f) (lambda (x) (f x))))
(define two (lambda (f) (lambda (x) (f (f x)))))

; Give a direct definition of the addition procedure +

(define (plus a b) (lambda (f) (lambda (x) ((a f) ((b f) x)))))

; If we define x as 0, and f as (define (inc x) (+ x 1)), we have:

((one inc) 0)
;Value: 1

((two inc) 0)
;Value: 2

(((plus one two) inc) 0)
;Value: 3