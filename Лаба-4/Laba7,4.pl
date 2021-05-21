minListD([H|T],Min):-minListD(T,H,Min).
minListD([],Min,Min):-!.
minListD([H|T],Cur,Min):-H<Cur,minListD(T,H,Min),!.
minListD([_|T],Cur,Min):-minListD(T,Cur,Min).