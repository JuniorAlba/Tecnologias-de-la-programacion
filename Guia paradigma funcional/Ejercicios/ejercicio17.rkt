;Se desea crear un programa que permita convertir un lote de datos de un formato a otro. Los datos
;llegan en formato de lista de listas, donde el primer elemento determina el contenido de la lista y el
;segundo tiene la lista de datos. Los datos pueden venir en formato texto, decimal o booleano y se
;desea obtener una lista igual pero con todos sus componentes en formato decimal y todos positivos.
#lang racket


(define (convert lista)
    (cond
        [(null? lista)
            (list )]
        [(equal? (car (car lista)) "D")
            (cons (car (cdr (car lista))) (convert (cdr lista)))]
        [(equal? (car (car lista)) "T")
            (cons (convert-texto (car (cdr (car lista)))) (convert (cdr lista)))]
        [else (cons (convert-booleano (car (cdr (car lista)))) (convert (cdr lista))) ]))

(define (convert-texto lista)
    (if (null? lista)
        '()
        (cons (string->number(car lista)) (convert-texto (cdr lista)))))

(define (convert-booleano lista)
    (cond
    [(null? lista) '()]
    [(equal? (car lista) "V") (cons 1 (convert-booleano (cdr lista)))]
    [else (cons 0 (convert-booleano (cdr lista)))]))










(convert (list (list "D" (list 1 2 3 4 5))
               (list "T" (list "6" "7" "8"))
               (list "B" (list "V" "F"))))