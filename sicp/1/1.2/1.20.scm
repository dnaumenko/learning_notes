; Exercise 1.20.  The process that a procedure generates is of course dependent on the rules used by the interpreter.
; As an example, consider the iterative gcd procedure given above. Suppose we were to interpret this procedure using
; normal-order evaluation, as discussed in section 1.1.5. (The normal-order-evaluation rule for if is described in
; exercise 1.5.) Using the substitution method (for normal order),
; illustrate the process generated in evaluating (gcd 206 40) and indicate the remainder operations that are actually
; performed. How many remainder operations are actually performed in the normal-order evaluation of (gcd 206 40)?
; In the applicative-order evaluation?


(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))


; For normail order, we have 18 remainder operations evaluated
(gcd 206 40)
=
(if (= 40 0)
    40
    (gcd 40 (remainder 206 40)))
= ; if evaluated
(gcd 40 (remainder 206 40)) ; a = 40, b = (remainder 206 40)
=
(if (= (remainder 206 40) 0)
    (remainder 206 40)
    (gcd (remainder 206 40) (remainder 40 (remainder 206 40))))
= ; first remainder get evaluated
(if (= 6 0)
    (remainder 206 40)
    (gcd (remainder 206 40) (remainder 40 (remainder 206 40))))
= ; if evaluated
(gcd (remainder 206 40) (remainder 40 (remainder 206 40))); a = (remainder 206 40), b = (remainder 40 (remainder 206 40))
=
(if (= (remainder 40 (remainder 206 40)) 0)
    (remainder 40 (remainder 206 40))
    (gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))
= ; first 2 remainders get evaluated
(if (= 4 0)
     (remainder 40 (remainder 206 40))
     (gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))
= ; if evaluated
(gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))
; here a = (remainder 40 (remainder 206 40)), b = (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
=
(if (= (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) 0)
    (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
    (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
         (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))))
= ; first 4 remainders get evaluated
(if (= 2 0)
    (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
    (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
         (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))))
= ; if evaluated
(gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) ; a
     (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))) ; b
=
(if (= (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) 0)
    (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
    (gcd (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))
         (remainder (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
                    (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))))
= ; first 7 remainders get evaluated
(if (= 0 0)
    (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
    (gcd (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))
         (remainder (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
                    (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))))
= ; if evaluated
(remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
= ; remaining 4 remainders get evaluated
2

; For applicattive-order, we have 4 remainder operations evaluated

(gcd 206 40)
=
(if (= 40 0)
    206
    (gcd 40 (remainder 206 40)))
= ; if evaluated
(gcd 40 (remainder 206 40))
= ; remainder evaluated
(gcd 40 6)
=
(if (= 6 0)
    40
    (gcd 6 (remainder 40 6)))
= ; if evaluated
(gcd 6 (remainder 40 6))
= ; remainder evaluated
(gcd 6 4)
=
(if (= 4 0)
    6
    (gcd 4 (remainder 6 4)))
= ; if evaluated
(gcd 4 (remainder 6 4))
= ; remainder evaluated
(gcd 4 2)
=
(if (= 2 0)
    4
    (gcd 2 (remainder 4 2)))
= ; if evaluated
(gcd 2 (remainder 4 2))
= ; remainder evaluated
(gcd 2 0)
=
(if (= 0 0)
    2
    (gcd 0 (remainder 2 0)))
= ; if evaluated
2

