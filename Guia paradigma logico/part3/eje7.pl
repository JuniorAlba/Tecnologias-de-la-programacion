
[1 2 3 2 4 5]

[1 3 4 5]

eliminar_encontrar_dup(_,[],[]).
eliminar_encontrar_dup(Elem,[X|Cola],Cola2) :-
    Elem=X,
    eliminar_encontrar_dup(Elem,Cola,Cola2).
eliminar_encontrar_dup(Elem,[X|Cola],[X|Cola2]) :-
    Elem \= X,
    eliminar_encontrar_dup(Elem,Cola,Cola2).

eliminar_dup([],[]).
eliminar_dup([X|Cola], [X|List]) :- 
    eliminar_encontrar_dup(X,Cola,Result),
    eliminar_dup(Result,List).