; x が 10^12 のように極端に大きいとする。
; 平方根は 10^6 付近になるが、guess が 1000000 と 1000 だけずれてるとしても、
; (square guess) と x の差はおよそ 2×10^9 である。
; 反復が進んで差が 0.0005 程度になったとしても、平方根 10^6 に対して 0.0005 の誤差は無視できる大きさであり、
; 反復が十分に進んでいなくても終了条件を満たしてしまう。
; 結果、桁数に対して相対的に不正確な値で終了する。

; 次に、x が 10^-12 のように極端に小さいとする。
; 平方根は 10^-6 付近になるが、guess の値が反復中に 10^-6 オーダーで変化しても、
; (square guess) は 10^-12 オーダーであり、x との差が 0.001 より小さくなることはほぼない。
; そのため、反復が終了せず、ループから脱出できない。

(define (average a b)
  (/ (+ a b) 2))

(define (improve guess x)
  (average guess (/ x guess)))

; 古い値と新しい値の相対誤差が十分小さいか？
(define (close-enough? old new)
  (< (abs (- new old)) (* 0.00001 old)))

(define (iter old-guess x)
  (if (close-enough? old-guess (improve old-guess x))
      (improve old-guess x)
      (iter (improve old-guess x) x)))

(define (sqrt x)
  (iter 1.0 x))

; (print (sqrt 3))