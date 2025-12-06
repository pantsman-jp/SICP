(define (fast-expt b n)
  (aux 1 b n))

(define (aux a b n)
  (cond ((= n 0) a)
        ((even? n) (aux a (square b) (/ n 2)))
        (else (aux (* a b) b (- n 1)))))

(define (square x)
  (* x x))

; (print (fast-expt 2 10))
; (print (fast-expt 3 4))
; (print (fast-expt 8 2))
; (print (fast-expt 10 10))