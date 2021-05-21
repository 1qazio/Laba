delElem([],_,[]).
delElem([H|T],X,List):-(H=X-> delElem(T,X,List); List=[H|T1],delElem(T,X,T1)).

