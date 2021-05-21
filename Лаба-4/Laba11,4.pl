p([],_):-!. 
p([H|T],List):-memb(List,H),p(T,List). 

