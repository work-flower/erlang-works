-module(geometry).
-export([area/1]).

pi() ->  3.14159.

area({rectangle, Width, Height}) ->
	Width * Height;

area({circle, R}) ->
	pi() * R * R.

