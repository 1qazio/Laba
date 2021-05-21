uniq([],[]):-!.
uniq([H|T],T1):-memb(T,H),uniq(T,T1),!.
uniq([H|T],[H|T1]):-uniq(T,T1),!.
