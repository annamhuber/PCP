% a) add to tail
add_tail(X, [], [X]).                % add to empty list
add_tail(X, [Head | Tail], L1) :-    % add to list with n>=1 elements
    add_tail(X, Tail, L2),           % add element to list without it head
    L1 = [Head | L2].                % add the head back to the list

del([X],X,[]).                       %el aus liste mit nur 1el löschen

del([X|Tail],X,Tail).              %x ist erstes elm von liste
del([Head|Tail],X,L1):-
    del(Tail,X,L2),
    L1=[Head|L2].

mem_d(X,L):-
    del(X,L,_).

rev_acc([], A, A).

rev_acc([Head | Tail], A, R) :-
    rev_acc(Tail, [Head | A], R).

rev(L,R):-
    rev_acc(L,[],R).


