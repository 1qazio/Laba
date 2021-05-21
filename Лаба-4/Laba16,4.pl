elCount([],_,Count,Count):-!.
elCount(List,El,Count):-elCount(List,El,0,Count).
elCount([H|T],El,Num,Count):-(H=:=El->Num1 is Num+1;Num1 is Num),elCount(T,El,Num1,Count).

