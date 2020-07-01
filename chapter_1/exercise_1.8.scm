(define (+ a b)
    (if (= a 0)
        b
        (inc (+ (dec a) b))))

; (+ 3 5)
; (inc (+ 2 6))
; (inc (inc (+ 1 7)))
; (inc (inc (inc (0 8))))
; classic recursion


(define (+ a b)
    (if (= a 0)
        b
        (+ (dec a) (inc b))))

; (+ 3 5)
; (+ 2 6)
; (+ 1 7)
; (+ 0 8)
; Tail recursion