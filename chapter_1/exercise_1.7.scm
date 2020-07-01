
(define (sqrt x)
    (sqrt-iter 1.0 x))

; (define (sqrt-iter guess x)
;     (if (good-enough? guess x)
;         guess
;         (sqrt-iter (improve guess x)
;             x)))


(define (sqrt-iter guess x)
    (if (good-enough-change? guess (improve guess x))
        guess
        (sqrt-iter (improve guess x)
            x)))


(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

; (define (good-enough? guess x)
;     (< (abs (- (square guess) x)) 0.001))

(define (good-enough-change? guess next_guess) 
    (< (abs (- guess next_guess)) 0.0001))

(sqrt 9)
(sqrt 31337)
(sqrt 80013455)
(sqrt 9990000112344)

; OPTION 1
; (sqrt 9)
; ;Value: 3.00009155413138

; 1 ]=> (sqrt 31337)
; ;Value: 177.02259745919164

; 1 ]=> (sqrt 80013455)
; ;Value: 8945.024035745233

; 1 ]=> (sqrt 9990000112344)
; ;Value: 3160696.143627856