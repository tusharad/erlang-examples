-module(printNto1).
-export([main/0]).

main() ->
	Input = io:read("Enter N: "),
	N = element(2,Input),
	printN(N).

printN(1) -> io:format("1~n");
printN(N) -> 
	io:format("~w~n",[N]),
	printN(N-1).
