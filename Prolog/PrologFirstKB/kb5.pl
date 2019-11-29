student(joe).
student(tim).
student(bill).
plays76(andy).
studies(joe,andy).
studies(joe,tim).
studies(bill,tim).
team(X,Y):- studies(Z,X), studies(Z,Y).
team(X,Y):- studies(X,Z), studies(Y,Z).
