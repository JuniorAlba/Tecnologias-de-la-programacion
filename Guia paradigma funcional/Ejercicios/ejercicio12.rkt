;Defina un procedimiento subst que reciba tres parámetros (dos valores y una lista) y devuelva la
;lista con todos los componentes que son iguales al primer parámetro reemplazados por el valor del
;segundo parámetro.
;Ej:(subst 'c 'k '( c o c o n u t)) → (k o k o n u t)
#lang racket
(define (subst sust reemp  lista)
    (letrec ([aux (lambda (sust1 reemp1 lista1)
        (cond
        [(empty? lista1) '()]
        [(equal? sust1 (car lista1)) (cons reemp1 (aux sust1 reemp1 (cdr lista1)))]
        [else (cons (car lista1) (aux sust1 reemp1 (cdr lista1)))]))])
    (aux sust reemp lista)))
(subst 'c 'k '( c o c o n u t))
