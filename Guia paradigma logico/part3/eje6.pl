cantidad([], 0) :- !.
cantidad([_|T], Cant) :- cantidad(T,Cant1) , Cant is Cant1 + 1.
suma_lista([],[],[]).
suma_lista([X|Cola1], [Y|Cola2], [Acumulador|Pos]) :-
    cantidad(Cola1,Cant1),
    cantidad(Cola2,Cant2),
    Cant1==Cant2,
    Acumulador is X + Y,
    suma_lista(Cola1,Cola2,Pos).
