start([1|X]) :- firstOne(X).
start([0|X]) :- firstZero(X).
firstOne([1|X]) :- firstOne(X).
firstOne([0|X]) :- oneZero(X).
firstZero([1|X]) :- firstOne(X).
firstZero([0|X]) :- secondZero(X).
oneZero([1|X]) :- end(X).
oneZero([0|X]) :- secondZero(X).
secondZero([1|X]) :- zzOne(X).
secondZero([0|X]) :- secondZero(X).
zzOne([1|X]) :- end(X).
zzOne([0|X]) :- oneZero(X).
end(X).
end([]).
