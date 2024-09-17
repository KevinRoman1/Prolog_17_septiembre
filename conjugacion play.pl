tiempo(presente).
tiempo(pasado).
tiempo(futuro).

persona(primera).
persona(segunda).
persona(tercera).

numero(singular).
numero(plural).

ser(presente,primera,singular,"am").
ser(presente,segunda,singular,"are").
ser(presente,tercera,singular,"is").
ser(presente,primera,plural,"are").
ser(presente,segunda,plural,"are").
ser(presente,tercera,plural,"are").

ser(pasado,primera,singular,"was").
ser(pasado,segunda,singular,"were").
ser(pasado,tercera,singular,"was").
ser(pasado,primera,plural,"were").
ser(pasado,segunda,plural,"were").
ser(pasado,tercera,plural,"were").

ser(futuro,primera,singular,"will be").
ser(futuro,segunda,singular,"will be").
ser(futuro,tercera,singular,"will be").
ser(futuro,primera,plural,"will be").
ser(futuro,segunda,plural,"will be").
ser(futuro,tercera,plural,"will be").

play(presente, primera, singular, "I play").
play(presente, segunda, singular, "you play").
play(presente, tercera, singular, " He/She/It plays").
play(presente, primera, plural, "We play").
play(presente, segunda, plural, "you play").
play(presente, tercera, plural, "They play").

play(pasado, primera, singular, "I played").
play(pasado, segunda, singular, "You played").
play(pasado, tercera, singular, "He/She/It played").
play(pasado, primera, plural, "We played").
play(pasado, segunda, plural, "You played").
play(pasado, tercera, plural, "They played").

play(futuro, primera, singular, "I will play").
play(futuro, segunda, singular, "You will play").
play(futuro, tercera, singular, "He/She/It will play").
play(futuro, primera, plural, "We will play").
play(futuro, segunda, plural, "You will play").
play(futuro, tercera, plural, "They will play").

conjugar_verbo(Verbo, Tiempo, Persona, Numero, Conjugacion):-
    tiempo(Tiempo),
    persona(Persona),
    numero(Numero),
           (
           Verbo = 'to be' ->  
        ser(Tiempo, Persona, Numero, Conjugacion) ;
        Verbo = 'play' ->  
        play(Tiempo, Persona, Numero, Conjugacion) ;
        Verbo = 'to play' ->  
        play(Tiempo, Persona, Numero, Conjugacion) ;
        Conjugacion = Verbo
           ).
           

                           