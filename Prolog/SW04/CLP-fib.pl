:- use_module(library(clpr)).
fib_clp(N, F) :- { N = 0, F = 0 }.
fib_clp(N, F) :- { N = 1, F = 1 }.
fib_clp(N, F) :-
{N >= 2, F = F1+F2, N1 = N-1, N2 = N-2,F1>=N1-1,F2>=N2-1},
fib_clp(N1, F1),
fib_clp(N2, F2).


% a) Das Programm terminiert nicht.
% b) Es wird unendlich lange nach einer L�sung/ einer weiteren L�sung
% gesucht die es nicht gibt.
