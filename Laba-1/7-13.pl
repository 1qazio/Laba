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

b_s(X,Y):-parent(Z,X),parent(Z,Y),write("Являются"),!,nl,fail.
b_s(X):-parent(Z,X),parent(Z,Y),woman(Z),not(X=Y),write(Y),nl,fail.

grand_pa(X,Y):-man(X),parent(X,Z),parent(Z,Y),write("Является"),nl,fail.
grand_pas(X):-man(Y),parent(Z,X),parent(Y,Z),write(Y),nl,fail.

grand_ma(X,Y):-woman(X),parent(X,Z),parent(Z,Y),write("Является"),nl,fail.
grand_mas(X):-woman(Y),parent(Z,X),parent(Y,Z),write(Y),nl,fail.

grand_pa_and_son(X,Y):-(parent(X,Z),parent(Z,Y),man(X))\=(parent(Z,X),parent(Z,Y)),man(X),man(Y),write("Являются"),nl,fail.

grand_ma_and_son(X,Y):-parent(Z,Y),parent(X,Z),mother(X,Z),man(Y);parent(Z,X),mother(Y,Z),man(X).

uncle(X,Y):-parent(R,H),parent(H,Y),parent(R,X),X\=H,man(X),man(R).
uncles(X):-uncle(Y,X),write(Y),write(", "),fail.              %дядя

aunt(X,Y):-parent(R,H),parent(H,Y),parent(R,X),X\=H,woman(X),man(R).
aunt(X):-aunt(Y,X),write(Y),write(", "),fail.                 %тётя
