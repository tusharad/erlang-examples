-module(sumOfList).
-export([main/0]).

main()->
	Input = io:read("Enter List: "),
	List = element(2,Input),
	io:format("Sum of list is ~w~n",[sumOfList(List,0)]). 

sumOfList([],Sum) -> Sum;
sumOfList([Head|Tail],Sum) -> sumOfList(Tail,Sum+Head).
