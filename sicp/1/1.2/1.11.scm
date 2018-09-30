; A function f is defined by the rule that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3.
; Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process.

(define (f x)
    (if (< x 3)
        x
        (+
            (f (- x 1))
            (* 2 (f (- x 2)))
            (* 3 (f (- x 3))))))

(define (f x)
    (define step 2) ;; we start from step 2, because for n<3 we already have an answer
    (define f2 2)
    (define f1 1)
    (define f0 0)
    (if (< x 3)
        x
        (f-iter x step f2 f1 f0))) ;; f(2) = 2, f(1) = 1, f(0) = 0 by f(x) definition

(define (f-iter x step a b c)
    (if (> step x)
        a
        (f-iter x (+ step 1) (+ a (* b 2) (* 3 c)) a b)))
