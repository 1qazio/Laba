man(kaneki).
man(kuroiwa).
man(suzuya).
man(yamori).
man(uta).
man(amon).
man(nishio).
man(komo).
man(khinohara).

man(arima).

woman(riza).

woman(touka).
woman(hinami).
woman(yoshimura).
woman(hoito).
woman(kusakari).
woman(akira).
woman(yoneboyashi).
woman(yasuhisa).
woman(mutsamaye).


parent(kaneki,yamori).
parent(kaneki,suzuya).
parent(kaneki,hinami).
parent(kaneki,yoshimura).

parent(touka,yamori).
parent(touka,suzuya).
parent(touka,hinami).
parent(touka,yoshimura).

parent(arima,hoito).
parent(arima,kusakari).
parent(arima,kuroiwa).
parent(arima,uta).

parent(riza,hoito).
parent(riza,kusakari).
parent(riza,kuroiwa).
parent(riza,uta).

parent(yamori,amon).
parent(yamori,nishio).

parent(hoito,amon).
parent(hoito,nishio).

parent(suzuya,komo).
parent(suzuya,akira).

parent(kusakari,komo).
parent(kusakari,akira).

parent(hinami,yoneboyashi).
parent(hinami,yasuhisa).

parent(kuroiwa,yoneboyashi).
parent(kuroiwa,yasuhisa).

parent(yoshimura,khinohara).
parent(yoshimura,mutsamaye).

parent(uta,khinohara).
parent(uta,mutsamaye).

all_man(X):-man(X),write(X),nl,fail.
all_woman(X):-woman(X),write(X),nl,fail.

children(X):-parent(X,Y),write(Y),nl ,fail.

mother(X,Y):-woman(X),parent(X,Y),write("Является"),nl ,fail.
mother(X):-woman(Y),parent(Y,X),write(Y),nl ,fail.

father(X,Y):-man(X),parent(X,Y),write("Является"),nl ,fail.
father(X):-man(Y),parent(Y,X),write(Y),nl ,fail.

brother(X,Y):-man(X),parent(Z,X),parent(Z,Y),write("Является"),!,nl,fail.
brothers(X):-parent(Z,X),parent(Z,Y),man(Y),man(Z),dif(X,Y),write(Y),nl,fail.

sister(X,Y):-parent(Z,X),parent(Z,Y),woman(X),write("Являются"),!,nl,fail.
sisters(X):-parent(Z,X),parent(Z,Y),woman(Y),man(Z),dif(X,Y),write(Y),nl,fail.
