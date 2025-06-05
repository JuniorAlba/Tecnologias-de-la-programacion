cantidad([], 0).
cantidad([_|T], Cant) :- cantidad(T,Cant1) , Cant is Cant1 + 1.