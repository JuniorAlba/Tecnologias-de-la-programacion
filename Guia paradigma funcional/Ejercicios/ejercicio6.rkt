(let ((x 9))
    (* x
        (let ((x (/ x 3)))
            (+ x x))))

; el primer let crea una variable x con valor 9
; el segundo let crea una variable x con valor 3 (9/3) que funciona por el shadowing
; el resultado es 9 * (3 + 3) = 9 * 6 = 54