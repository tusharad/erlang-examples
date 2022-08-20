-module(sumOf1toN).
-export([main/0]).

main()->
	Input = io:read("ENter n: "),
	N = element(2,Input),
	sumOfN(N).

sumOfN(1) -> 1;
sumOfN(N) -> N + sumOfN(N-1).
