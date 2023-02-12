-module(spawnit).
-export([start/0]).

start() ->
	io:format("Welcome to spawnit!~n", []),
	spawn(fun() -> loop() end).

loop() ->
	receive
		Other ->
			io:format("loop response:~s~n", [Other]),
			loop()
	end.
