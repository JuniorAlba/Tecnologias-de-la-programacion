positivos([],[]).
positivos([X | Cola], [X|Pos]) :- X>0, positivos(Cola,Pos).
positivos([X | Cola],  Pos) :- X=<0, positivos(Cola,Pos).
