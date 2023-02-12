-module(attrs).
-vsn("0.0.0.1").
-author({aylin, ahmed}).
-purpose("just to see user defined attributes").
-export([fac/1]).

fac(1) -> 1;
fac(N)-> N*fac(N-1).
