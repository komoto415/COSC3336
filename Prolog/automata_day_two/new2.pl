start([1|X]) :- firstOne(X).
start([0|X]) :- firstZero(X).
firstOne([1|X]) :- secondOne(X).
firstOne([0|X]) :- firstZero(X).
firstZero([1|X]) :- firstOne(X).
firstZero([0|X]) :- secondZero(X).
secondOne([1|X]) :- end1(X).
secondOne([0|X]) :- firstZero(X).
secondZero([1|X]) :- firstOne(X).
secondZero([0|X]) :- end2(X).
end1([1|X]) :- end1(X).
end1([0|X]) :- firstZero(X).
end1([]).
end1(X).
end2([0|X]) :- end2(X).
end2([1|X]) :- firstOne(X).
end2([]).
end2(X).
