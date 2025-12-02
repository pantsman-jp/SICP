(load "./p3.scm")

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; (print (sqrt 2))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter2 guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter2 (improve guess x) x)))

; (print (sqrt-iter2 1.0 2))

; sqrt-iter2 で、ひとたび new-if を呼ぶと、new-if 内でまた、sqrt-iter2 が呼ばれ、、、、
; を無限に繰り返すことになってしまい、sqrt(x) を得られない。
; これは new-if の引数が全て先に評価されるためである。