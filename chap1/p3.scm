(define (square x) (* x x))

(define (sum-square x y) (+ (square x) (square y)))

(define (max x y) (if (< x y) y x))

(define (max3 x y z) (max x (max y z)))

(define (two-large-sum-square x y z)
  (max3 (sum-square x y) (sum-square y z) (sum-square z x)))

(print (two-large-sum-square 1 2 3))
(print (two-large-sum-square 2 3 1))
(print (two-large-sum-square 3 1 2))