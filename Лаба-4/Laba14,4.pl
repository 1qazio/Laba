single(_,[]):-!.
single([H|T]):-single(H,T),single(T).
single(X,[H|T]):- X\= H,single(X,T).
single([]):-!.
