#lang racket

(define a 5)
(define b 5)
(+ (/ (* 7 a) b) (/ (* 3 a) b) (/ (* 7 a) b))

(let ([f1 (/ (* 7 a) b)] [f2 (/ (* 3 a) b)])
        (let ([resultado (+ f1 f2 f1)])
            resultado))


(define c 5)

(cons (car (list a b c)) (cdr (list a b c)))
(let ([f1 (list a b c)])
    (cons (car f1) (cdr f1)))