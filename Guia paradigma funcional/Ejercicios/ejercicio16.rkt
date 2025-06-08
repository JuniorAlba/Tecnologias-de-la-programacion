;Defina un procedimiento en Racket llamado attach-at-end que reciba como parámetro un valor y una
;lista y retorne la lista con los mismos valores excepto el que se pasó por parámetro que se agregará
;al final.
;Ej: (attach-at-end 'prueba '(esto es una)) → (esto es una prueba)
#lang racket
(define (attach-at-end elem lista)
    (if (equal? lista '())
    (list elem)
    (cons (car lista) (attach-at-end elem (cdr lista)))))

(attach-at-end 'prueba '(esto es una))