
eliminar_primero([X|Cola],X,Cola) :- !.
eliminar_primero([X|Cola],Elem,[X|Result]) :- Elem\=X, eliminar_primero(Cola,Elem,Result).