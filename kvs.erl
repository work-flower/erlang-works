-module(kvs).
-export([start/0, store/2, lookup/1]).

start() -> register(kvs_listener, spawn(fun() -> loop() end)).

store(Key, Value) -> 
	kvs_listener ! {self(), {store, Key, Value}},
	receive {kvs_response, Reply} ->
			Reply
	end.


lookup(Key) -> 
	kvs_listener ! {self(), {lookup, Key}},
	receive {kvs_response, Reply} ->
		Reply
	end.

loop() ->
	receive
		{From, {store, Key, Value}} ->
			put(Key, {ok, Value}),
			From ! {kvs_response, true},
			loop();
		{From, {lookup, Key}} ->
			From ! {kvs_response, get(Key)},
			loop()
	end.

