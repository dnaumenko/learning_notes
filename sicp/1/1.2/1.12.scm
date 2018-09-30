(define (pascal row column)
    (define (dec x) (- x 1))
    (define (inc x) (+ x 1))
    (cond ((or (< row 1) (< column 1)) 0)
          ((or (= column 1)) 1)
          (else (+ (pascal (dec row) (dec column)) (pascal (dec row) column)))))