(define (product a b)
  (cond ((= b 0) 0)
        ((even? b) (double (product a (halve b))))
        (else (+ a (product a (- b 1))))))

(define (double n)
  (* n 2))

(define (halve n)
  (/ n 2))

; (print (product 2 10))
; (print (product 5 11))
; (print (product 2 0))
; (print (product 10 9))