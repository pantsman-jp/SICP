(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (close-enough? old new)
  (< (abs (- new old)) (* 0.00001 old)))

(define (iter old-guess x)
  (if (close-enough? old-guess (improve old-guess x))
      (improve old-guess x)
      (iter (improve old-guess x) x)))

; square root -> sqrt
; cubic root -> curt
(define (curt x)
  (iter 1.0 x))

; (print (curt 3))
; (print (curt 4))
; (print (curt 5))