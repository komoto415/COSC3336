/* Part 1 */
/* 1) Create a prolog program that will recognize binary
numbers (entered in as an array as per class examples)
that contain the sequence 1101 and contain no
more than two zeros. */

delta(a, [1 | X]) :- delta(b, X).
delta(a, [0 | X]) :- delta(c, X).

delta(b, [1 | X]) :- delta(d, X).
delta(b, [0 | X]) :- delta(c, X).

delta(c, [1 | X]) :- delta(f, X).
delta(c, [0 | X]) :- delta(fail, X).

delta(d, [1 | X]) :- delta(d, X).
delta(d, [0 | X]) :- delta(h, X).

delta(f, [1 | X]) :- delta(g, X).
delta(f, [0 | X]) :- delta(fail, X).

delta(g, [1 | X]) :- delta(g, X).
delta(g, [0 | X]) :- delta(j, X).

delta(h, [1 | X]) :- delta(i, X).
delta(h, [0 | X]) :- delta(fail, X).

delta(i, []).
/* i is an end state */
delta(i, [1 | X]) :- delta(i, X).
delta(i, [0 | X]) :- delta(k, X).

delta(j, [1 | X]) :- delta(l, X).
delta(j, [0 | X]) :- delta(fail, X).

delta(k, []).
/* k i an end state */
delta(k, [1 | X]) :- delta(k, X).
delta(k, [0 | X]) :- delta(fail, X).

delta(l, []).
/* l is an end state */
delta(l, [1 | X]) :- delta(l, X).
delta(l, [0 | X]) :- delta(fail, X).


/* Part 2 */
/* 2) Create a prolog program that will recognize strings of a's, b's, and c's
such that no letter is identical to its predecessor, and that there are at most
two instances of the substrings 'ab' and 'bc' */


/* Part 3 */
/* 3) Create a prolog program that will determine if the sum of an input array
composed of 2's, 4's, and 6's is evenly divisible by 8. Does this have more or
less states than the program which will determine if such an array's sum is divisible by 7? */
delta(a, []).
delta(a, [2 | X]) :- delta(b, X).
delta(a, [4 | X]) :- delta(c, X).
delta(a, [6 | X]) :- delta(d, X).

delta(b, [2 | X]) :- delta(c, X).
delta(b, [4 | X]) :- delta(d, X).
delta(b, [6 | X]) :- delta(a, X).

delta(c, [2 | X]) :- delta(d, X).
delta(c, [4 | X]) :- delta(a, X).
delta(c, [6 | X]) :- delta(b, X).

delta(d, [2 | X]) :- delta(a, X).
delta(d, [4 | X]) :- delta(b, X).
delta(d, [6 | X]) :- delta(c, X).
