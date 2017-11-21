entrada(antipasto).
entrada(sopa).
entrada(queso).

carne(milanesa).
carne(bief_de_chorizo).
carne(pollo_asado).

pescado(congrio).
pescado(pejerey).

postre(flan).
postre(helado).
postre(fruta).

plato_principal(P):-carne(P);pescado(P).

comida(E,P,D) :- entrada(E), plato_principal(P), postre(D).
calorias(<comida>, <valor calórico>).
valor(E,P,D,V) :- calorias(E,X), calorias(P,Y), calorias(D,Z), V = X+Y+Z.