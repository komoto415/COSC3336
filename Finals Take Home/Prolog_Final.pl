start(X) :- duplicate(X), divide(1,X).

duplicate([X,Y|Z]) :- X \= Y, duplicate([Y|Z]).
duplicate([X]).
duplicate([]).

divide(1,[1|X]) :- divide(1,X).
divide(1,[2|X]) :- divide(2,X).
divide(1,[3|X]) :- divide(3,X).
divide(1,[4|X]) :- divide(4,X).
divide(1,[5|X]) :- divide(5,X).

divide(2,[1|X]) :- divide(2,X).
divide(2,[2|X]) :- divide(3,X).
divide(2,[3|X]) :- divide(4,X).
divide(2,[4|X]) :- divide(5,X).
divide(2,[5|X]) :- divide(1,X).

divide(3,[1|X]) :- divide(3,X).
divide(3,[2|X]) :- divide(4,X).
divide(3,[3|X]) :- divide(5,X).
divide(3,[4|X]) :- divide(1,X).
divide(3,[5|X]) :- divide(2,X).

divide(4,[1|X]) :- divide(4,X).
divide(4,[2|X]) :- divide(5,X).
divide(4,[3|X]) :- divide(1,X).
divide(4,[4|X]) :- divide(2,X).
divide(4,[5|X]) :- divide(3,X).

divide(5,[1|X]) :- divide(5,X).
divide(5,[2|X]) :- divide(1,X).
divide(5,[3|X]) :- divide(2,X).
divide(5,[4|X]) :- divide(3,X).
divide(5,[5|X]) :- divide(4,X).

divide(1,[]).
