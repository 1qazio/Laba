/*11*/

prExc11:-read_str(A,N),(N>10->first_6(A,A1);add_12(A,N,A1)),name(Res,A1),write(Res).

first_6([H1,H2,H3,H4,H5,H6|_],[H1,H2,H3,H4,H5,H6]).

add_12(Res,12,Res):-!.
add_12(Str,N,Res):-N1 is N+1,append(Str,[111],Str1),add_12(Str1,N1,Res).

/*14*/

prExc14:-read_str(A,_),count_numb(A,0,Count),write(Count).

count_numb([],Count,Count):-!.
count_numb([H|T],I,Count):-H>=48,H=<57->I1 is I+1,count_numb(T,I1,Count);count_numb(T,I,Count).

/*15*/

prExc15:-read_str(A,_),only_abc(A),write("The string includes only a,b and c").

only_abc([]):-!.
only_abc([H|_]):-H =\=97,H =\=98,H =\=99,!,fail.
only_abc([_|T]):-only_abc(T).

/*16*/

prExc16:-read_str(A,_),to_letter(A,[],Res),name(A_n,Res),write(A_n).

to_letter([H2,H3,H4],I,Res):-append(I,[H2,H3,H4],Res),!.
to_letter([],Res,Res):-!.
to_letter([H1,H2,H3,H4|Tail],I,Res):-check_let(H1,H2,H3,H4)->append(I,[108,101,116,116,101,114],I1),to_letter(Tail,I1,Res);append(I,[H1],I1),to_letter([H2,H3,H4|Tail],I1,Res).

check_let(H1,H2,H3,H4):-H1 =:= 119,H2 =:= 111,H3 =:= 114,H4 =:= 100.

/*17*/

prExc17:-read_str(A,_),del_x(A,[],Res),name(A_n,Res),write(A_n).

del_x([H2,H3,H4],I,Res):-append(I,[H2,H3,H4],Res),!.
del_x([],Res,Res):-!.
del_x([H1,H2,H3,H4|Tail],I,Res):-check_x(H1,H2,H3,H4)->append(I,[97,98,99],I1),del_x(Tail,I1,Res);append(I,[H1],I1),del_x([H2,H3,H4|Tail],I1,Res).

check_x(H1,H2,H3,H4):-H1 =:= 120,H2 =:= 97,H3 =:= 98,H4 =:= 99.

/*18*/

prExc18:-read_str(A,_),del_abc(A,[],Res),name(A_n,Res),write(A_n).


del_abc([H2,H3,H4],I,Res):-append(I,[H2,H3,H4],Res),!.
del_abc([],Res,Res):-!.
del_abc([H1,H2,H3,H4|Tail],I,Res):-check_del_abc(H1,H2,H3,H4)->append(I,[H4],I1),del_abc(Tail,I1,Res);append(I,[H1],I1),del_abc([H2,H3,H4|Tail],I1,Res).

check_del_abc(H1,H2,H3,H4):-H1 =:= 97,H2 =:= 98,H3 =:= 99,H4>=48,H4=<57.

/*19*/ 
 
prExc19:-read_str(A,_),count_aba(A,0,Count),write(Count). 
count_aba([],Count, Count):-!. 
count_aba([97,98,97|T],N,Count):-N1 is N+1 ,count_aba(T,N1,Count),!. 
count_aba([_|T],N,Count):- count_aba(T,N,Count).

/*22*/

prExc22:-read_str(String,Length),fme(String),fme(String,Length).

fme([H|T]):-write("First = "),put(H),nl,reverse([H|T],_),write("End = "),put(HR),nl.
fme(List,Length):-not(0 is Length mod 2),L is Length div 2+1,index(List,El,L,0),write("Middle = "),put(El),!.

index([H|T],El,Num):-index([H|T],El,Num,0).
index([H|T],El,Num,N):-N1 is N+1,(H = El,Num = N1 -> !;index(T,El,Num,N1)).

