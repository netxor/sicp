#lang racket
(define (sum-of-squares-of-top-two a b c)
  (define (sum-of-two x y) (+ (* x x) (* y y)))
  (cond ((and (>= a c) (>= b c) (sum-of-two a b)))
        ((and (>= a b) (>= c b) (sum-of-two a c)))
        ((and (>= b a) (>= c a) (sum-of-two b c)))))


(define (sum-larger-square a b c)
  (cond ((and (> (* a a) (* b b)) (> (* c c) (* b b))) (+ (* a a) (* c c)))
        ((and (> (* b b) (* a a)) (> (* c c) (* a a))) (+ (* b b) (* c c)))     
        (else (+ (* a a) (* b b)))))

(define (sum-larger-square a b c)
  (define (square x) (* x x))
  (define (sum-squares x y) (+ (square x) (square y)))
  (cond ((and (> a c) (> b c) (sum-squares a b)))
        ((and (> a b) (> c b) (sum-squares a c)))
        (else (sum-squares b c))))
