start([1|X]) :- firstOne(X).
start([0|X]) :- start(X).
firstOne([1|X]) :- secondOne(X).
firstOne([0|X]) :- start(X).
secondOne([1|X]) :- end1(X).
secondOne([0|X]) :- start(X).
end1(X).
end1([]).
