#lang racket
(define (mascorta lista1 lista2)
  (if (<= (length lista1) (length lista2))
      lista1
      lista2))

(mascorta '(a b c e) '(a b c d))