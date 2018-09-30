; Все тоже самое, что и с sqrt, только меняется improve функция:

(define (improve guess x)
  (/
    (+
      (/ x (square guess))
      (* 2 guess))
    3))
