delNum(0,[_|List], List):-!. 
delNum(X,[H|Y],[H|List]):-X1 is X-1,delNum(X1,Y,List). 

