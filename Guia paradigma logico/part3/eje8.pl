profundidad([N],1).
profundidad([],0).
profundidad([I, N, D], Max) :-
    profundidad(I,MaxI),
    profundidad(D,MaxD),
    MaxI>=MaxD,
    Max is MaxI + 1.
profundidad([I, N, D], Max) :-
    profundidad(I,MaxI),
    profundidad(D,MaxD),
    MaxI<MaxD,
    Max is MaxD + 1.