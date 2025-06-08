;Se desea crear un función que reciba como parámetros una lista de átomos compuesto únicamente
;de letras y devuelva una lista agrupando los que son iguales en sublistas.
;Ej: (agrupar '(A A B C A B A D C)) → ((AAAA) (BB) (CC) (D))
#lang racket

(define (inserta elem lista1)
    (letrec ([aux (lambda (elem lista1)
        (cond
        [(empty? lista1) (list (list elem))]
        [(equal? elem (car (car lista1))) (cons (cons elem (car lista1)) (cdr lista1))] 
        [else (cons (car lista1) (aux elem (cdr lista1)))]))])
    (aux elem lista1)))


;(esta_en 'A '((A A A) (B B) (C C)))
(define (agrupar lista1)
    (letrec ([aux (lambda (lista1 resultado)
    (cond
        [(empty? lista1) resultado]
        [else (aux (cdr lista1) (inserta (car lista1) resultado)) ]))])
    (aux lista1 '())))
(agrupar '(A A B C A B A D C)) 

;(decide (agrupar lista1)
;    (letrec ([aux (lambda (lista1))])))
