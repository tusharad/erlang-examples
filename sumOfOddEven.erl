-module(sumOfOddEven).
-export([main/0]).

main() ->
	Input = io:read("Enter n: "),
	N = element(2,Input),
	Lst = sumOfN(N,0,0),
	io:format("Sum of even and odd numbers in 1 to N are ~w~n",[Lst]).

sumOfN(0,Odd,Even) -> [Odd,Even];
sumOfN(N,Odd,Even) when N rem 2 == 0 -> sumOfN(N-1,Odd,Even+N);
sumOfN(N,Odd,Even) -> sumOfN(N-1,Odd+N,Even).
