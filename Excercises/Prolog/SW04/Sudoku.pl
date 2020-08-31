:- use_module(library(clpfd)).
:- use_module(library(http/http_client)).
:- use_module(library(http/http_json)).


sudoku(Rows) :-
  append(Rows, Vs), Vs ins 1..9,
  maplist(all_distinct, Rows),
  transpose(Rows, Columns),
  maplist(all_distinct, Columns),
  Rows = [A,B,C,D,E,F,G,H,I],
  blocks(A, B, C), blocks(D, E, F), blocks(G, H, I),
  maplist(label, Rows).

blocks([], [], []).
blocks([A,B,C|Bs1], [D,E,F|Bs2], [G,H,I|Bs3]) :-
  all_distinct([A,B,C,D,E,F,G,H,I]),
  blocks(Bs1, Bs2, Bs3).

% Simple case: Replace 0 with _
replace_0(0, _).
% Call recursive, till simple case
replace_0(Input, Output) :-
	is_list(Input), % Only call recursive, if element is a list!
	maplist(replace_0, Input, Output), % Call recursive and then red cut
	!.
% Simple case, do not replace character
replace_0(X, X).

solve(sudoku,ID) :-
    string_concat("http://localhost:16316/problem/sudoku/", ID, URL),
    http_get(URL, json(Result), []),
    member(sudoku=Rows, Result),
    replace_0(Rows, Puzzle),
    Puzzle=[A,B,C,D,E,F,G,H,I],
    sudoku([A,B,C,D,E,F,G,H,I]),
    http_post("http://localhost:16316/problem/sudoku/", json(json([solution=Puzzle, problemKey=ID])), _, []).
