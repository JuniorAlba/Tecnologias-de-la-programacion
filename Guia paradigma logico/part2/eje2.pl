% Cuerpo de conocimiento
% Hechos

% hombre/1: determina que su argumento es una persona de sexo masculino
hombre('Mateo').
hombre('Santiago').
hombre('Tomas').
hombre('Joaquin').
hombre('Benjamin').
hombre('Nicolas').
hombre('Lautaro').
hombre('Bruno').

% mujer/1: determina que su argumento es una persona de sexo femenino.
mujer('Ana').
mujer('Camila').
mujer('Lucia').
mujer('Valentina').
mujer('Sofia').
mujer('Julieta').
mujer('Martina').

% progenitor/2: determina que el primer argumento es progenitor (madre o padre) del segundo.
progenitor('Mateo', 'Benjamin').
progenitor('Ana', 'Benjamin').

progenitor('Santiago', 'Sofia').
progenitor('Camila', 'Sofia').

progenitor('Tomas', 'Nicolas').
progenitor('Lucia', 'Nicolas').

progenitor('Joaquin', 'Julieta').
progenitor('Valentina', 'Julieta').

progenitor('Benjamin', 'Martina').
progenitor('Sofia', 'Martina').

progenitor('Nicolas', 'Lautaro').
progenitor('Julieta', 'Lautaro').

progenitor('Martina', 'Bruno').
progenitor('Lautaro', 'Bruno').

padre(X,Y) :- progenitor(X,Y), hombre(X).
madre(X,Y) :- progenitor(X,Y), mujer(X).
abuelo(X,Y) :- progenitor(X,Z), progenitor(Z,Y), hombre(X).
abuela(X,Y) :- progenitor(X,Z), progenitor(Z,Y), mujer(X).
hermanos(X,Y) :- X\=Y, progenitor(Z,X), progenitor(Z,Y).
hermano(X,Y) :- hombre(X), hermanos(X,Y).
hermana(X,Y) :- mujer(X), hermanos(X,Y).
sucesor(X,Y) :- progenitor(Y,X).
sucesor(X,Y) :- progenitor(Y,Z), sucesor(X,Z).