-module(productOfList).
-export([main/0]).

main() ->
	Input = io:read("Enter list: "),
	List = element(2,Input),
	io:format("Product of List is ~w~n",[productOfList(List,1)]).

productOfList([],Prod) -> Prod;
productOfList([Head|Tail],Prod) -> productOfList(Tail,Prod*Head).
