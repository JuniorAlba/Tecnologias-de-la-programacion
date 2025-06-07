dic([sanar, hola, sabana, sabalo, prueba, computadora, cartera, mate, termo, mesa, silla,sarna]).
buscar(Palabra, Busqueda) :-
    atom_chars(Palabra,PalabraListada),
    dic(Listado),
    buscar(PalabraListada, Listado, Busqueda).



semejanza([],[],0) :- !.
semejanza([],[_|Cola],Cant) :- semejanza([],Cola,Cant1), Cant is Cant1 -1, !.
semejanza([_|Cola],[],Cant) :- semejanza(Cola,[],Cant1), Cant is Cant1 -1, !.
semejanza([X|Cola1],[X|Cola2],Cant) :- semejanza(Cola1,Cola2,Cant1), Cant is Cant1 + 1, !.
semejanza([X|Cola1],[Y|Cola2],Cant) :- X\=Y, semejanza(Cola1,Cola2,Cant1), Cant is Cant1 -1.

buscar_semejanza(_, [], []).
buscar_semejanza(PalabraListada, [X|Listado], [[X,Num]|Busqueda] ) :-
    atom_chars(X, PalabraDic),
    semejanza(PalabraListada,PalabraDic, Num),
    Num>0,
    buscar_semejanza(PalabraListada, Listado, Busqueda2),
    Busqueda = Busqueda2.
buscar_semejanza(PalabraListada, [X|Listado], Busqueda) :-
    atom_chars(X, PalabraDic),
    semejanza(PalabraListada, PalabraDic, Num),
    Num=<0,
    buscar_semejanza(PalabraListada, Listado, Busqueda2),
    Busqueda = Busqueda2.

buscar(PalabraListada, [], Busqueda) :-
    dic(Listado),
    buscar_semejanza(PalabraListada, Listado,Busqueda2),
    Busqueda = Busqueda2,
    !.
buscar(PalabraListada, [X|_], [X]) :-
    atom_chars(X,PalabraDic),
    PalabraDic == PalabraListada,
    !.
buscar(PalabraListada, [X|Listado], Busqueda):-
    atom_chars(X,PalabraDic),
    PalabraDic \= PalabraListada,
    buscar(PalabraListada, Listado, Busqueda2),
    Busqueda = Busqueda2.

