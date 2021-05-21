minListUp([H],H):-!.
minListUp([H|T],Min):-minListUp(T,Min1),(H<Min1->Min=H; Min=Min1).