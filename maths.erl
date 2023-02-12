-module(maths).
-export([max/2]).

max(X, Y) when X > Y -> X;
max(X, Y) -> Y.

