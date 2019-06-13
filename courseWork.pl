bird(owl).
bird(crow).
bird(duck).
animal(cat).
animal(dog).
animal(cow).
fish(shark).
fish(tuna).
fish(salmon).
isSameType(_,[]):-true,!.
isSameType(X,Y):-(bird(X),bird(Y)),!;(animal(X),animal(Y)),!;(fish(X),fish(Y)),!.
isSameType(E,[H|List]):- isSameType(E,H), isSameType(H,List).
isSameType([H|List]):- isSameType(H,List).
eat(X,Y):-(bird(X),fish(Y));(animal(X),bird(Y));(fish(X),animal(Y)).
someName(A, [A|T]).
someName(A,[H|T]):- someName(A,T),!.
element([H,T]):- isSameType(H,T),!.
element([G,_|T]):- element([G|T]).
