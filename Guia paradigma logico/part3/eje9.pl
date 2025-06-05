insertar(N,[],[N]).
insertar(N,[X Y|Cola],[X N Y|Cola]) :-  X=<N, Y>N.
insertar(N,[X Y|Cola],Resultado) :-  X=<N, Y=<N,insertar(N,[Y|Cola], Resultado).