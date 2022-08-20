-module(areaOfRectangle).
-export([main/0]).

main()->
	Input = io:read("Enter length: "),
	Length = element(2,Input),
	Input2 = io:read("Enter breadth: "),
	Breadth = element(2,Input2),
	Area = Length*Breadth,
	io:format("Area of rectangle is ~w~n",[Area]).
