%lists.pl
%author:Jonathan Rudnick
%points:2/2

myAppend([],X,X).
myAppend([Head|Tail],Y,[Head|Z]) :- myAppend(Tail,Y,Z).

contains(X, [X|_]).
contains(X, [_|Y]) :- contains(X,Y).

subset(Y, [Y|_]).
subset(Y, [_|Z]) :- contains(Y,A), subset(Z,A).

prefix(X,Z) :- myAppend(X,Y,Z).

suffix(Y,Z) :- myAppend(X,Y,Z).


mystery([],[]).
mystery([Head|Tail],Result) :- mystery(Tail,SubRes), myAppend(SubRes,[Head],Result).
