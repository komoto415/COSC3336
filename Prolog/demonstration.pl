% Checks to see that no duplicate items are adjacent, that only one
% instance of the sequence 14 or 42 is present,
% and that the sum of the digits is divisible by 3
start(X) :- duplicate(X), sequence(X), divide(1,X).

% Function call that determines if adjacent numbers are identical
duplicate([X,Y|Z]) :- X \= Y, duplicate([Y|Z]).
duplicate([X]).
duplicate([]).

% Function call that determines if sequence 14 or 42 is present. Only one instance is allowed
sequence([1,4|X]) :- oneCount([4|X]).
sequence([4,2|X]) :- oneCount([2|X]).
sequence([3,X|Y]) :- sequence([X|Y]).
sequence([2,X|Y]) :- sequence([X|Y]).
sequence([1,X|Y]) :- X \= 4, sequence([X|Y]).
sequence([4,X|Y]) :- X \= 2, sequence([X|Y]).
oneCount([3,X|Y]) :- oneCount([X|Y]).
oneCount([2,X|Y]) :- oneCount([X|Y]).
oneCount([1,X|Y]) :- X \= 4, oneCount([X|Y]).
oneCount([4,X|Y]) :- X \= 2, oneCount([X|Y]).
% facts
sequence([X]).
sequence([]).
oneCount([]).
oneCount([X]).

% Checks to ensure sum of digits is divisible by 3
% Transitions from remainder 0
divide(1,[1|X]) :- divide(2,X).
divide(1,[2|X]) :- divide(3,X).
divide(1,[3|X]) :- divide(1,X).
divide(1,[4|X]) :- divide(2,X).
% Transitions from remainder 1
divide(2,[1|X]) :- divide(3,X).
divide(2,[2|X]) :- divide(1,X).
divide(2,[3|X]) :- divide(2,X).
divide(2,[4|X]) :- divide(3,X).
% Transitions from remainder 2
divide(3,[1|X]) :- divide(1,X).
divide(3,[2|X]) :- divide(2,X).
divide(3,[3|X]) :- divide(3,X).
divide(3,[4|X]) :- divide(1,X).
% Fact
divide(1,[]).
