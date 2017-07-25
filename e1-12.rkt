#lang racket

;; Compute an entry in a Pascal triangle given row and column.
(define (pascal r c)
  (cond ((= c 1) 1)
        ((= c r) 1)
        (else (+ (pascal (- r 1) c) (pascal (- r 1) (- c 1))))))
