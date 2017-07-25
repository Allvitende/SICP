#lang racket

;Recursive
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))))

;Iterative
(define (f-iter i a b c)
  (cond ((< i 0) i)
        ((= i 0) a)
        (else (f-iter (- i 1) b c (+ c (* 2 b) (* 3 a))))))

(f 14)
(f-iter 14 0 1 2)