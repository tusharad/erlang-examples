-module(fibonacci).
-export([main/0]).

main() ->
	Input = io:read("Enter n: "),
	N = element(2,Input),
	driver(N).

driver(0) -> 0;
driver(N) ->
	driver(N-1),
	io:format("~w~n",[fibo(N)]).

fibo(0) -> 0;
fibo(1) -> 1;
fibo(N) -> fibo(N-1)+fibo(N-2).
