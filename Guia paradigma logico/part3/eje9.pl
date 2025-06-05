insertar(N,[],[N]).
insertar(N,[X |Cola],[X|Result]) :-  N>X ,insertar(N,Cola,Result).
insertar(N, [X | Cola], [N, X| Cola]) :- N=<X.
