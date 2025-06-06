agregar_nuevo(Elem,[],[Elem]) :- !.
agregar_nuevo(Elem,[X|Cola],[X|Result]) :- Elem\=X, agregar_nuevo(Elem,Cola,Result), !.
agregar_nuevo(Elem,[Elem|Cola],[Elem|Cola]).