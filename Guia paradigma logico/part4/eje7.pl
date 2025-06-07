
reemplazar_r(_, _, _, _, [], []) :- !.
reemplazar_r(_, _, _, Cant, Listado, Listado) :- Cant == 0, !.
reemplazar_r(Reemplazado, Reemplazo, Inicio, Cant, [X|Listado], [Reemplazo|Resultado]) :-
    Inicio == 1,
    Cant2 is Cant -1,
    X==Reemplazado,
    reemplazar_r(Reemplazado, Reemplazo, Inicio, Cant2, Listado, Resultado),
    !.
reemplazar_r(Reemplazado, Reemplazo, Inicio, Cant, [X|Listado], [X|Resultado]) :-
    Inicio > 1,
    Inicio2 is Inicio - 1,
    X==Reemplazado,
    reemplazar_r(Reemplazado, Reemplazo, Inicio2, Cant, Listado, Resultado),
    !.

reemplazar_r(Reemplazado, Reemplazo, Inicio, Cant, [X|Listado], [X|Resultado]) :-
    X\=Reemplazado,
    reemplazar_r(Reemplazado, Reemplazo, Inicio, Cant, Listado, Resultado),
    !.




reemplazar(_,_,Inicio,_,_,_) :-
    Inicio < 1,
    write('El valor de inicio debe ser mayor o igual a 1'),
    !,
    fail.

reemplazar(_,_,_,CantRem,_,_) :-
    CantRem < 1,
    CantRem \= -1,
    write('La cantidad de reemplazos debe ser mayor o igual a 1'),
    !,
    fail.

reemplazar(Reemplazado, Reemplazo, Inicio, Cant, Listado, Resultado) :-
    reemplazar_r(Reemplazado,Reemplazo,Inicio,Cant, Listado, Resultado).
