mem(X, [X | _]). % tail doesn’t matter
mem(X, [_| Tail]) :- mem(X, Tail).
%L = [_, _, _], mem(a, L), mem(b, L), mem(c, L).!
% Dies ist ein Red Cut, da nicht alle Permutationen angezeigt werden
% damit wird die deklarative Bedeutung verändert.
