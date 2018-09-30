; Show how to extend the basic differentiator to handle more kinds of expressions

(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp)
         (if (same-variable? exp var) 1 0))
        ((sum? exp)
         (make-sum (deriv (addend exp) var)
                   (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
           (make-product (multiplier exp)
                         (deriv (multiplicand exp) var))
           (make-product (deriv (multiplier exp) var)
                         (multiplicand exp))))
        ((exponentiation? exp)
         (make-product
            (make-product (exponent exp)
                          (make-exponentiation (base exp)
                                               (make-sup (exponent exp) -1)))
            (deriv (base exp) var)))
        )
        (else
         (error "unknown expression type -- DERIV" exp))))

(define (make-exponentiation base exponent) (list '** base exponent))
(define (base a) (cadr a))
(define (exponent a) (caddr a))
(define (exponentiation? a) (and (pair? a) (eq? (car a) '**)))

;Build in the rules that anything raised to the power 0 is 1 and anything raised to the power 1 is the thing itself
(define (make-exponentiation base exponent)
    (cond ((=number? exponent 0) 1)
          ((=number? exponent 1) base)
          ((and (number? base) (number? exponent)) (expt base exponent))
          (else (list '** base exponent))))

