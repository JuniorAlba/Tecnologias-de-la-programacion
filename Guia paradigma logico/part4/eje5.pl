
semejanza([],[],0) :- !.
semejanza([],[_|Cola],Cant) :- semejanza([],Cola,Cant1), Cant is Cant1 -1, !.
semejanza([_|Cola],[],Cant) :- semejanza(Cola,[],Cant1), Cant is Cant1 -1, !.
semejanza([X|Cola1],[X|Cola2],Cant) :- semejanza(Cola1,Cola2,Cant1), Cant is Cant1 + 1, !.
semejanza([X|Cola1],[Y|Cola2],Cant) :- X\=Y, semejanza(Cola1,Cola2,Cant1), Cant is Cant1 -1.