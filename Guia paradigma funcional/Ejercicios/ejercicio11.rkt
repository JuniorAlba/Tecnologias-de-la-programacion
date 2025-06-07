;Escriba una función que cuente la cantidad de apariciones de un elemento en una lista. El primer
;parámetro será el elemento a buscar y el segundo la lista en la que se debe buscar.
;Ej: (count-elem 3 '(1 2 3 4 5 4 3 2 1 )) → 2
#lang racket
(define (count-elem elem lista)
    (letrec ([cantidad (lambda (elem list)
                (cond
                [(equal? list '()) 0]
                [(equal? (car list) elem) (+ 1 (cantidad elem (cdr list)))]
                [else  (cantidad elem (cdr list))]))])
    (cantidad elem lista)))

(count-elem 2 '(1 2 2 3 2 3 2 5 6))