sumListUp([],0):-!.
sumListUp([H|T],Sum):-sumListUp(T,Sum1),Sum is Sum1+H.
