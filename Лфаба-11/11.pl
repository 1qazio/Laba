:-dynamic genre/2,book/2,century/2,children/2,sequel/2.

read_str(A) :-get0(X),r_str(X, A, []).
r_str(10, A, A) :- !.
r_str(X, A, B) :-append(B, [X], B1),get0(X1),r_str(X1, A, B1).

genre_r(X,Y):-repeat,(genre(X,Y)->(nl,write(X),nl,write(Y),write("."),retract(genre(X,Y)));X=nil,Y=nil).
book_r(X,Y):-repeat,(book(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(book(X,Y)));X=nil,Y=nil).
century_r(X,Y):-repeat,(century(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(century(X,Y)));X=nil,Y=nil).
children_r(X,Y):-repeat,(children(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(children(X,Y)));X=nil,Y=nil).
sequel_r(X,Y):-repeat,(sequel(X,Y) -> (nl,write(X),nl,write(Y),write("."),retract(sequel(X,Y)));X=nil,Y=nil).

prTell:-tell('C:/Users/1qazw/OneDrive/Рабочий стол/puttputt/1.txt'),genre_r(X1,_),X1=nil,told,
     tell('C:/Users/1qazw/OneDrive/Рабочий стол/puttputt/2.txt'),book_r(X2,_),X2=nil,told,
     tell('C:/Users/1qazw/OneDrive/Рабочий стол/puttputt/3.txt'),century_r(X3,_),X3=nil,told,
     tell('C:/Users/1qazw/OneDrive/Рабочий стол/puttputt/4.txt'),children_r(X4,_),X4=nil,told,
     tell('C:/Users/1qazw/OneDrive/Рабочий стол/puttputt/5.txt'),sequel_r(X5,_),X5=nil,told.


prSee:-see('C:/Users/1qazw/OneDrive/Рабочий стол/puttputt/1.txt'), get0(Sym1), read_data(Sym1,1), seen,
     see('C:/Users/1qazw/OneDrive/Рабочий стол/puttputt/2.txt'), get0(Sym2), read_data(Sym2,2), seen,
     see('C:/Users/1qazw/OneDrive/Рабочий стол/puttputt/3.txt'), get0(Sym3), read_data(Sym3,3), seen,
     see('C:/Users/1qazw/OneDrive/Рабочий стол/puttputt/4.txt'), get0(Sym4), read_data(Sym4,4), seen,
     see('C:/Users/1qazw/OneDrive/Рабочий стол/puttputt/5.txt'), get0(Sym5), read_data(Sym5,5), seen.

read_data(-1, _) :- !.
read_data(_, Flag) :-read_str(Lang),name(X, Lang),read(Y),
            (
              Flag = 1 ->asserta(genre(X, Y));
            (
              Flag = 2 ->asserta(book(X, Y));
            (
              Flag = 3 ->asserta(century(X, Y));
            (
              Flag = 4 ->asserta(children(X, Y));
            (
              Flag = 5 ->asserta(sequel(X, Y))))))),

         get0(Sym),
         read_data(Sym, Flag).

question1(X1):-write("What genre is the film?"),nl,
             write("0 - Fantastika"),nl,
             write("1 - Fantasi"),nl,
             write("2 - Comedy"),nl,
             write("3 - Horror"),nl,
             read(X1).

question2(X2):-write("Is the film based on a book?"),nl,
               write("0 - No"),nl,
               write("1 - Yes"),nl,
               read(X2).

question3(X3):-write("Is the movie made in this century?"),nl,
               write("0 - No"),nl,
               write("1 - Yes"),nl,
               read(X3).

question4(X4):-write("Is this a children's movie?"),nl,
               write("0 - No"),nl,
               write("1 - Yes"),nl,
               read(X4).

question5(X5):-write("Does this film have a sequel?"),nl,
               write("0 - No"),nl,
               write("1 - Yes"),nl,
               read(X5).

pr :-prSee,question1(X1),question2(X2),question3(X3),question4(X4),question5(X5),
        (genre(X,X1),book(X,X2),century(X,X3),children(X,X4),sequel(X,X5),write(X);
         (write("element -> "),
          read(Auto),
          asserta(genre(Auto, X1)),
          asserta(book(Auto, X2)),
          asserta(century(Auto, X3)),
          asserta(children(Auto, X4)),
          asserta(sequel(Auto, X5)),
          prTell,nl,
          write("element was added!"))).
