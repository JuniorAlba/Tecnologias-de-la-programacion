%Escriba un programa en Prolog que represente el cuerpo de conocimiento con los distintos platos de 
%un restaurante: entrada, plato principal y postre. Cree el cuerpo de conocimiento con tres ejemplos de 
%cada uno. Por último, cree un predicado carta/3 que como resultado combine todos los posibles 
%platos, en donde el primer argumento corresponda a las entradas, el segundo a los platos principales 
%y el tercero a los postres. ¿Cuántos resultados debería retornar?
entrada('Bombones de jamon').
entrada('Tarta de Atun').
entrada('Volovanes de atun').

plato_principal('Locro').
plato_principal('Atados de repollo').
plato_principal('Pollo romano con hierbas y vino').

postre('Dulce de batata').
postre('Flan').
postre('Torta moka').

carta(Entrada, PlatoPrincipal, Postre) :- entrada(Entrada), plato_principal(PlatoPrincipal), postre(Postre),write([Entrada, PlatoPrincipal,Postre]), nl,fail.
