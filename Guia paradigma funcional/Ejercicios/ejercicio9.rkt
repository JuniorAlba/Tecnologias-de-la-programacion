#lang racket
(define (distance2d par_punto1 par_punto2)
    (let ([x1 (car par_punto1)] [x2 (car par_punto2)] [y1 (cdr par_punto1)] [y2 (cdr par_punto2)])
        (sqrt (+ (sqr (- x2 x1)) (sqr (- y2 y1))))))

(distance2d '(1 . 1) '(2 . 2))
