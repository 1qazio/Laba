/*2.1*/

prExc2_1:-see('C:/Users/Инесса/Desktop/ФиЛП/input.txt'),read_str(List, _, _),seen,rus(List,0,C), write(C).

rus([],C,C):-!.
rus([H|T], Count, C):-((H>1039, H<1104)->Count1 is Count + 1, rus(T, Count1, C); rus(T, Count, C)).

/*2.9*/ 
 
prExc2_9:-see('C:/Users/Инесса/Desktop/ФиЛП/input.txt'),read_str(List,N,1),reverse(List,B),N1 is N div 2, palindrome(List, B, N1),seen. 
 
palindrome([_|_],[_|_],0):-!. 
palindrome([H1|T1],[H2|T2], I):-H1=H2,I1 is I-1, palindrome(T1,T2, I1),!. 
palindrome([_|_],[_|_],_):-fail,!.

/*2.18*/ 
 
prExc2_18:- see('C:/Users/Инесса/Desktop/ФиЛП/input.txt'),read_list_str(List,N),seen, d(List,N). 
 
d([],[]):-!. 
d([H|T],[H1|T1]):-(H1>9->date(H, H1), d(T,T1); d(T, T1)). 
 
date([],_):-!. 
date(_, L):-L<10,!. 
date([H1, H2, H3, H4, H5, H6, H7, H8, H9, H10|T], L):-(H1>47, H1<52, H2>47,H2<58, H3==46, H4>47,H4<50, H5>47,H5<58, H6==46, H7>47, H7<58, H8>47, H8<58,H9>47,H9<58, H10>47, H10<58-> put(H1), put(H2), put(H3), put(H4), put(H5), put(H6), put(H7), put(H8), put(H9), put(H10),nl,L1 is L-10, date(T, L1); L1 is L - 1,date([H2, H3, H4, H5, H6, H7, H8, H9, H10|T], L-1)).

/*3*/ 
 
prExc3:-see('C:/Users/Инесса/Desktop/ФиЛП/input.txt'),read_str(List,_,1),seen,append(List,[32],A1),date_time(A1). 
 
date_time([]):-!. 
date_time([32|Tail]):-date_time(Tail),!. 
date_time([Head|Tail]):-(day([Head|Tail],[],Day,After_Day)->(month(After_Day,[],Month,After_Month)->(year(After_Month,[],Year,After_Year)-> 
write_str(Day),write(" "),write_str(Month),write(" "),write_str(Year),nl,date_time(After_Year);date_time(After_Month)); date_time(After_Day));date_time(Tail)). 
 
day([32|Tail],Day,Day,Tail):-!. 
day([Head|Tail],I,Day,After_Day):-Head >=48,Head =<57,append(I,[Head],I1),day(Tail,I1,Day,After_Day),!. 
day([_|_],_,_,_):-!,false. 
 
month([32|Tail],Month,Month,Tail):-!. 
month([Head|Tail],I,Month,After_Month):-Head >=97,Head =<122,append(I,[Head],I1),month(Tail,I1,Month,After_Month),!. 
month([_|_],_,_,_):-!,false. 
 
year([32|Tail],Year,Year,Tail):-!. 
year([Head|Tail],I,Year,After_Year):-Head >=48,Head =<57,append(I,[Head],I1),year(Tail,I1,Year,After_Year),!. 
year([_|_],_,_,_):-!,false.

/*5*/

prExc5:-see('C:/Users/Инесса/Desktop/ФиЛП/input.txt'),read_list_str(List,N),seen,regul(List, N,[]).
regul([],[],A):-write_list_str(A),!.

regul([H|T],[HL|TL],A):-Max =HL, Max_str=H, regul1([H|T],[HL|TL], Max, Max_str, String, Num),append(A,[String],B),remove_str([H|T], String, List),remove_str([HL|TL], Num, ListL), regul(List, ListL,B),!.

regul1([],[], Max, Max_str,Max_str, Max):-!.
regul1([H|T], [HL|TL], Max, Max_str, Str,Num):- (HL>Max-> Max1 = HL, Max_str1 = H,regul1(T, TL, Max1, Max_str1, Str,Num); regul1(T, TL, Max, Max_str,Str,Num)).

remove_str([H|T], X, List):-remove_str([H|T],[],List,X, 1).
remove_str([],List,List,_,_):-!.
remove_str([H|T], Temp, List, X, 1):-(H=X-> remove_str(T, Temp,List,X, 0)),!.
remove_str([H|T], Temp, List, X, 1):-append1(Temp,[H], Temp1), remove_str(T, Temp1, List, X,1).
remove_str([H|T], Temp, List, X, 0):-append1(Temp,[H], Temp1), remove_str(T, Temp1, List, X,1).

/*6*/

prExc6:-see('C:/Users/Инесса/Desktop/ФиЛП/input.txt'),read_list_str(A), seen,tell('C:/Users/Инесса/Desktop/ФиЛП/output.txt'),list_word(A,[],List_Word),bubble_sort(List_Word,_,A,Sorted_A),write_sort(Sorted_A),told.

list_word([],Res,Res):-!.
list_word([Head|Tail],I,Res):-get_words(Head,Words),lenght(Words,Count_Words),append(I,[Count_Words],I1),list_word(Tail,I1,Res).

write_sort([]):-!.
write_sort([Head|Tail]):-name(Head1,Head),write(Head1),nl,write_sort(Tail).

lenght([],L,L):-!.
lenght([_|Tail],I,L):-I1 is I+1,lenght(Tail,I1,L).
lenght(List,L):-lenght(List,1,L).

list_lenght([],Res,Res):-!.
list_lenght([Head|Tail],I,Res):-lenght(Head,Lenght_Head),append(I,[Lenght_Head],I1),list_lenght(Tail,I1,Res).


sort1([], [],[],[]):-!.
sort1([Head], [Head],[HeadStr],[HeadStr]):-!.
sort1([First, Second|Tail], [Second|ListWithMaxEnd],[FirstStr, SecondStr|TailStr],[SecondStr|ListWithMaxEndStr]):-First > Second, !, sort1([First|Tail], ListWithMaxEnd,[FirstStr|TailStr],ListWithMaxEndStr).
sort1([First, Second|Tail], [First|ListWithMaxEnd],[FirstStr, SecondStr|TailStr], [FirstStr|ListWithMaxEndStr]):-sort1([Second|Tail], ListWithMaxEnd,[SecondStr|TailStr], ListWithMaxEndStr).


bubble_sort(SortedList, SortedList,SortedList_Str,SortedList_Str):- sort1(SortedList, DoubleSortedList,SortedList_Str,DoubleSortedList_Str),SortedList = DoubleSortedList,SortedList_Str = DoubleSortedList_Str,!.
bubble_sort(List, SortedList,List_Str,SortedList_Str):-sort1(List, SortedPart,List_Str,SortedPart_List_Str),bubble_sort(SortedPart, SortedList,SortedPart_List_Str,SortedList_Str).

/*7*/

prExc7:-see('C:/Users/Инесса/Desktop/ФиЛП/input.txt'),read_list_str(A), seen,tell('C:/Users/Инесса/Desktop/ФиЛП/output.txt'),list_word_after_digit(A,[],List_Word),bubble_sort(List_Word,_,A,Sorted_A),write_sort(Sorted_A),told.

list_word_after_digit([],Res,Res):-!.
list_word_after_digit([Head|Tail],I,Res):-get_words(Head,Words),count_words_after_digit(Words,0,Count_Words),append(I,[Count_Words],I1),list_word_after_digit(Tail,I1,Res).

count_words_after_digit([_],Count_Words,Count_Words):-!.
count_words_after_digit([Head|Tail],I,Count_Words):-count_digit(Head,0,Count_Digit),(Count_Digit>0->I1 is I+1,count_words_after_digit(Tail,I1,Count_Words);count_words_after_digit(Tail,I,Count_Words)).

count_digit([],Count,Count):-!.
count_digit([Head|Tail],I,Count):-Head>=48,Head=<57->I1 is I+1,count_digit(Tail,I1,Count);count_digit(Tail,I,Count).
