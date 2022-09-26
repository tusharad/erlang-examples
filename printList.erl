-module(printList).
-export([main/0]).

main() ->
	Input = io:read("Enter n: "),
	List = element(2,Input),
	printList(List).

printList([]) -> io:format("");
printList([Head|Tail]) -> 
	io:format("~w~n",[Head]),
	printList(Tail).
