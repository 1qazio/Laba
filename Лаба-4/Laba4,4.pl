listElNumb(List,Elem,Number):-listElNumb(List,Elem,0,Number).
listElNumb([H|_],H,Number,Number):-!.
listElNumb([_|T],Elem,I,Number):-I1 is I+1,listElNumb(T,Elem,I1,Number).
readLEN:-write("N = "),read(N), nl,write("enter an elem"),nl,readList(N,List),write("elem is "),nl,read(Elem),listElNumb(List,Elem,Number),write("position is "),write(Number),!.
readLEN:-write("is no elem").
