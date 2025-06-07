#lang racket
(define (largo lista)
    (letrec ([aux (lambda (item)
        (if (empty? item)
            0
            (+ (aux (cdr item)) 1)))])
    (aux lista)))

(largo '(1 2 3 4 5))