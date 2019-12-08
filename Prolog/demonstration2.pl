% This function generates the length of an input array
len([],0).
len([_|Y],N)  :-  len(Y,X),  N  is  X+1.

% Iterates through an input array and a predefined max value, and determintes the max of the array
max([H|T],A,MyMax)  :- H  >  A, max(T,H,MyMax).
max([H|T],A,MyMax)  :- H  =<  A, max(T,A,MyMax).
max([],A,A).

getMax(List,Max)  :- List  =  [H|_], max(List,H,Max).

% Iterates through an input array and a predefined min value, and determintes the min of the array
min([H|T],A,MyMin)  :- H  <  A, min(T,H,MyMin).
min([H|T],A,MyMin)  :- H  >=  A, min(T,A,MyMin).
min([],A,A).

getMin(List,Min)  :- List  =  [H|_], min(List,H,Min).

% Appends two lists together
append([],L,L).
append([H|T],L2,[H|L3])  :-  append(T,L2,L3).

% Takes an input list and returns the inverse.
revList([H|T],A,R):-  revList(T,[H|A],R).
revList([],A,A).


% Function to perform mathematical operations that are entered in the form of two arrays
% Where the first array contains the list of numbers, and the second array contains a
% list of operators, starting with a + sign to load the first number in.
doMath([], [], A, A).
doMath([X|Y], ['+'|Z], A, N) :- Curr is A+X, doMath(Y, Z, Curr, N).
doMath([X|Y], ['-'|Z], A, N) :- Curr is A-X, doMath(Y, Z, Curr, N).
doMath([X|Y], ['*'|Z], A, N) :- Curr is A*X, doMath(Y, Z, Curr, N).
doMath([X|Y], ['/'|Z], A, N) :- Curr is A/X, doMath(Y, Z, Curr, N).

% Calls the doMath function
makeMath(Val, Op, N) :- doMath(Val, Op, 0, N).
