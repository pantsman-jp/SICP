(define (product a b)
  (aux 0 a b))

(define (aux ans a b)
  (cond ((= b 0) ans)
        ((even? b) (aux ans (double a) (halve b)))
        (else (aux (+ ans a) a (- b 1)))))

(define (double n)
  (* n 2))

(define (halve n)
  (/ n 2))

; (print (product 2 10))
; (print (product 5 11))
; (print (product 2 0))
; (print (product 10 9))