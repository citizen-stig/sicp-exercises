(define a 3)
(define b 2)
(define c 1)

(define (square x) (* x x))

(define (sum_of_squares x y)
    (+ (square x) (square y))
    )


(define (plus_one x y z) 
    (cond 
        ((and (>= x y) (>= y z)) (sum_of_squares x y))
        ((and (>= x y) (>= z y)) (sum_of_squares x z))
        (else  (sum_of_squares y z))
        )
)


(plus_one a b c)

31337