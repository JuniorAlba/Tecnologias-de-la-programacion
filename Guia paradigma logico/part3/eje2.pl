contar(_,[], 0).
contar(Num, [X|T], Cant) :- Num==X ,contar(Num, T, Cant1), Cant is Cant1 + 1.
contar(Num, [X|T], Cant) :- Num \= X, contar(Num, T, Cant).

