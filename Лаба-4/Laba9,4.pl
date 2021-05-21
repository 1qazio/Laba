memb([X|_],X):-!.
memb([_|T],X):-memb(T,X).
