genre(terminator,0).
genre(matrix,0).
genre(back_to_the_future,0).
genre(avatar,0).
genre(jurassic_park,0).
genre(the_green_mile,1).
genre(pirates_of_the_caribbean,1).
genre(harry_potter_and_the_philosophers_stone,1).
genre(constantine,1).
genre(the_mummy,1).
genre(the_intouchables,2).
genre(home_alone,2).
genre(jumanji,2).
genre(forrest_gump,2).
genre(ivan_vasilievich_changes_his_profession,2).
genre(alien,3).
genre(radiance,3).
genre(halloween,3).
genre(astral,3).
genre(silence_of_the_lambs,3).

book(terminator,0).
book(matrix,1).
book(back_to_the_future,0).
book(avatar,0).
book(jurassic_park,0).
book(the_green_mile,1).
book(pirates_of_the_caribbean,0).
book(harry_potter_and_the_philosophers_stone,1).
book(constantine,1).
book(the_mummy,0).
book(the_intouchables,0).
book(home_alone,0).
book(jumanji,1).
book(forrest_gump,1).
book(ivan_vasilievich_changes_his_profession,0).
book(alien,0).
book(radiance,1).
book(halloween,0).
book(astral,0).
book(silence_of_the_lambs,1).

century(terminator,0).
century(matrix,0).
century(back_to_the_future,0).
century(avatar,1).
century(jurassic_park,1).
century(the_green_mile,0).
century(pirates_of_the_caribbean,1).
century(harry_potter_and_the_philosophers_stone,1).
century(constantine,1).
century(the_mummy,0).
century(the_intouchables,1).
century(home_alone,0).
century(jumanji,0).
century(forrest_gump,0).
century(ivan_vasilievich_changes_his_profession,0).
century(alien,0).
century(radiance,0).
century(halloween,1).
century(astral,1).
century(silence_of_the_lambs,0).

children(terminator,0).
children(matrix,0).
children(back_to_the_future,1).
children(avatar,0).
children(jurassic_park,1).
children(the_green_mile,0).
children(pirates_of_the_caribbean,0).
children(harry_potter_and_the_philosophers_stone,1).
children(constantine,0).
children(the_mummy,0).
children(the_intouchables,1).
children(home_alone,1).
children(jumanji,1).
children(forrest_gump,0).
children(ivan_vasilievich_changes_his_profession,1).
children(alien,0).
children(radiance,0).
children(halloween,0).
children(astral,0).
children(silence_of_the_lambs,0).

sequel(terminator,1).
sequel(matrix,1).
sequel(back_to_the_future,1).
sequel(avatar,0).
sequel(jurassic_park,1).
sequel(the_green_mile,0).
sequel(pirates_of_the_caribbean,1).
sequel(harry_potter_and_the_philosophers_stone,1).
sequel(constantine,0).
sequel(the_mummy,1).
sequel(the_intouchables,0).
sequel(home_alone,1).
sequel(jumanji,0).
sequel(forrest_gump,0).
sequel(ivan_vasilievich_changes_his_profession,0).
sequel(alien,1).
sequel(radiance,0).
sequel(halloween,0).
sequel(astral,1).
sequel(silence_of_the_lambs,1).


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

pr:-question1(X1),
    question2(X2),
    question3(X3),
    question4(X4),
    question5(X5),

    genre(X,X1),
    book(X,X2),
    century(X,X3),
    children(X,X4),
    sequel(X,X5),
    write(X),nl,fail.