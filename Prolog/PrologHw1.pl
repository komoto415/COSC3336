/* Part 1 */
/* 1) Create a prolog program that will recognize binary
numbers (entered in as an array as per class examples)
that contain the sequence 1101 and contain no
more than two zeros. */
stateOne([1:X]) :- stateTwo(X).
stateTwo([1:X]) :- stateThr(X).
stateThr([0:X]) :- stateFor(X).
stateFor([1:X]) :- stateFiv(X).
