libro('Rayuela', novela, largo).
libro('Karamazov', novela, largo).
libro('Octaedro', cuentos, corto).
libro('Inventario', poemas, largo).
libro('Leones', novela, corto).

% Profesiones
abogado('Pedro').
abogado('Haydee').

ingeniero('Haydee').
ingeniero('Tania').

medico('Tania').

contador('Livio').

% Género
mujer('Haydee').
mujer('Tania').

hombre('Pedro').
hombre('Livio').

% Gustos explícitos
gusta('Livio', 'Rayuela').

% A los abogados les gustan las novelas largas
gusta(Persona, Libro) :-
    abogado(Persona),
    libro(Libro, novela, largo).

% Ingenieros y medicos: les gustan las novelas
gusta(Persona, Libro) :-
    (ingeniero(Persona); medico(Persona)),
    libro(Libro, novela, _).

% A las mujeres les gustan todos los libros largos
gusta(Persona, Libro) :-
    mujer(Persona),
    libro(Libro, _, largo).

% A los contadores varones les gustan cuentos y poemas
gusta(Persona, Libro) :-
    contador(Persona),
    hombre(Persona),
    libro(Libro, cuentos, _).

gusta(Persona, Libro) :-
    contador(Persona),
    hombre(Persona),
    libro(Libro, poemas, _).

% Pedro (abogado varon) -> le gustan los cuentos
gusta('Pedro', Libro) :-
    libro(Libro, cuentos, _).

valioso(Libro) :-
    gusta(P1, Libro),
    gusta(P2, Libro),
    P1 \= P2.
%para consultar sin ver duplicados utilizar: gusta('Livio', Libro),setof(L, valioso(L), LibrosValiosos). 