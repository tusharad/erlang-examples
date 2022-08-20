-module(factorial).
-export([main/0]).

fact(1) -> 1;
fact(N) -> N*fact(N-1).

main() ->
	Input = io:read("Enter N: "),
	N = element(2,Input),
	fact(N).
