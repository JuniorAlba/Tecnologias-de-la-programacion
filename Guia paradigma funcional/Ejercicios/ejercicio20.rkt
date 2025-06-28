;Cree una función llamada fullreverse-list que permite revertir completamente el contenido de
;una lista.
#lang racket
(define (fullreverse-list lista)
    (cond
    [(null? lista) '()]
    [(list? (car lista)) (cons (fullreverse-list (cdr lista)) (list (fullreverse-list (car lista))))]
    [else (if (null? (fullreverse-list (cdr lista)))
            (cons (car lista) (fullreverse-list (cdr lista)))
            (cons (fullreverse-list (car lista) (car lista))))]))

(fullreverse-list (list 1 (list 2 3 4 (list 4 5) (list 3 (list 5 6)) 4)))
