#lang racket
(define (sum-of-squares-of-top-two a b c)
  (define (sum-of-two x y) (+ (* x x) (* y y)))
  (cond ((and (>= a c) (>= b c) (sum-of-two a b)))
        ((and (>= a b) (>= c b) (sum-of-two a c)))
        ((and (>= b a) (>= c a) (sum-of-two b c)))))
