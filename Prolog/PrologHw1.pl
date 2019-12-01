/* Part 1 */
/* 1) Create a prolog program that will recognize binary
numbers (entered in as an array as per class examples)
that contain the sequence 1101 and contain no
more than two zeros. */
stateOne([1|X]) :- stateTwo(X).
stateOne([0|X]) :- stateFou(X).

stateTwo([1|X]) :- stateThr(X).
stateTwo([0|X]) :- stateFou(X).

stateThr([1|X]) :- stateThr(X).
stateThr([0|X]) :- stateNin(X).

stateFou([1|X]) :- stateFiv(X).
stateFou([0|X]) :- failure(X).

stateFiv([1|X]) :- stateSix(X).
stateFiv([0|X]) :- failure(X).

stateSix([1|X]) :- stateSix(X).
stateSix([0|X]) :- stateSev(X).

stateSev([1|X]) :- stateSev(X).
stateSev([0|X]) :- failure(X).

stateNin([1|X]) :- stateNin(X).
stateNin([0|X]) :- stateTen(X).

stateTen([1|X]) :- stateNin(X).
stateTen([0|X]) :- failure(X).

stateNin([]).

/* Part 2 */
/* 2) Create a prolog program that will recognize strings of a's, b's, and c's
such that no letter is identical to its predecessor, and that there are at most
two instances of the substrings 'ab' and 'bc' */


/* Part 3 */
/* 3) Create a prolog program that will determine if the sum of an input array
composed of 2's, 4's, and 6's is evenly divisible by 8. Does this have more of
less states than the program which will determine if such an array's sum is divisible by 7? */
