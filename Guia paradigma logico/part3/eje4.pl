suma([],0).
suma([X|Cola],Sum) :- suma(Cola,Sum1), Sum is Sum1 + X.