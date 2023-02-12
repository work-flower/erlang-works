-module(shop).
-export([total/1]).
-import(cost, [cost/1]).

total([{What, N}|T]) -> cost(What) * N + total(T);

total([]) -> 0.
