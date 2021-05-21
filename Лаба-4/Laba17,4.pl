len([],0):-!.
len([H|T],X):-len(T,X1),X is X1+1.

