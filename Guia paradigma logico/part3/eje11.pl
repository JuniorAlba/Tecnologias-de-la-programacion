concatenar([],L2,L2).
concatenar([X|Cola],L2,[X|L3]) :- concatenar(Cola,L2,L3).

aplanar([],[]):-!.
aplanar([N],[N]):- N \= [_|_],!.

aplanar([X|Cola],L) :- X = [_|_],aplanar(X,Elem), aplanar(Cola,List), concatenar(Elem,List,L),!.
aplanar([X|Cola],[X|List]) :- X \= [_|_], aplanar(Cola,List),!.