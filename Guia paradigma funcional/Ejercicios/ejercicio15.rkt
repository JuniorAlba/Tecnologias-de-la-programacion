;Defina en Racket un procedimiento recursivo que encuentre el primer elemento de una lista que es
;un número. Debe retornar el número si lo encuentra, sino retornar null.
;Ej: (primer-num '((1 . 2) 'a (b) (5) 6 8 'a 9) → 6
#lang racket
(define (primer-num lista)
    (if (number? (car lista))
        (car lista)
        (primer-num (cdr lista))))
(primer-num '((1 . 2) 'a (b) (5) 6 8 'a 9))