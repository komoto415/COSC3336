start([1|X]) :- firstOne(X).
start([0|X]) :- firstZero(X).
firstOne([1|X]) :- secondOne(X).
firstOne([0|X]) :- firstZero(X).
secondOne([1|X]) :- waiting(X).
secondOne([0|X]) :- ooZero(X).
ooZero([1|X]) :- end1(X).
ooZero([0|X]) :- firstZero(X).
waiting([1|X]) :- waiting(X).
waiting([0|X]) :- firstZero(X).
firstZero([1|X]) :- zeroOne(X).
firstZero([0|X]) :- secondZero(X).
secondZero([1|X]) :- zeroOne(X).
secondZero([0|X]) :- thirdZero(X).
thirdZero([1|X]) :- zeroOne(X).
thirdZero([0|X]) :- thirdZero(X).
thirdZero([]). /* END STATE */
zeroOne([1|X]) :- waiting(X).
zeroOne([0|X]) :- zoZero(X).
zoZero([1|X]) :- end1(X).
zoZero([0|X]) :- secondZero(X).
/* END STATES */
end1(X).
end1([]).
