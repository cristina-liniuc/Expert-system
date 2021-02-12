%% Knowledge Base:

top_goal(X) :- creature(X).
iknow_top_goal(X) :-
	asserta(known(true, language, one)),
	asserta(known(true, language, many)),
	asserta(known(true, skin_color, ivory)),
	asserta(known(true, skin_color, silver)),
	asserta(known(true, skin_color, grey)),
	asserta(known(true, hight, small)),
	asserta(known(true, hight, normal)),
	asserta(known(true, hight, high)),
	asserta(known(true, cheerful, yes)),
	asserta(known(true, birthplace, earth)),
	asserta(known(true, birthplace, betelgeuse)),
	asserta(known(true, profession, guide_writer)),
	asserta(known(true, profession, president)),
	asserta(known(true, profession, journalist)),
	asserta(known(true, profession, singer)),
	asserta(known(true, likes, give_answers)),
	asserta(known(true, likes, depression)),
	asserta(known(true, likes, attention)),
	asserta(known(true, likes, tourists)),
	asserta(known(true, likes, find_questions)),
	asserta(known(true, likes, tea)),
	asserta(known(true, likes, coffee)),
	asserta(known(true, hair, yes)),
	creature(X).


%% Askables

skin_color(X) :- menuask(skin_color, X, [ivory, silver, grey]).
language(X) :- menuask(language, X, [one, many]).
likes(X) :- menuask(likes, X, [depression, give_answers, attention, tourists, find_questions, tea, coffee]).
hight(X) :- menuask(hight, X, [small, normal, high]).
birthplace(X) :- menuask(birthplace, X, [earth, betelgeuse]).
profession(X) :- menuask(profession, X, [guide_writer, president, journalist, singer]).

cheerful(X) :- ask(cheerful, X).
hair(X) :- ask(hair, X).

%% Rules

class(human_like) :-
	skin_color(ivory),
	hight(normal).

class(giant) :-
	skin_color(ivory),
	hight(high).

class(loonie) :-
	skin_color(silver),
	hight(high),
	language(many).

class(robot) :-
	skin_color(silver).

class(animal) :-
	skin_color(grey),
	hight(small),
	hair(yes).

type(earthian) :-
	birthplace(earth).

type(betelgeusian) :-
	birthplace(betelgeuse).

creature(collin) :-	
	class(robot),
	hight(normal),
	likes(depression),
	cheerful(yes).

creature(marvin) :-
	class(robot),
	hight(normal),
	likes(depression).

creature(supercomputer) :-	
	class(robot),
	hight(high),
	likes(give_answers).

creature(luna_President) :-
	class(loonie),
	profession(president),
	likes(attention).

creature(luna_city_major) :-
	class(loonie),
	likes(tourists).

creature(mice) :-
	class(animal),
	likes(find_questions).

creature(artur_dent) :-
	class(human_like),
	type(earthian),
	language(one),
	likes(tea).

creature(ford_prefect) :-
	class(human_like),
	type(betelgeusian),
	language(one),
	profession(guide_writer).

creature(zafod) :-
	class(human_like),
	type(betelgeusian),
	language(many),
	profession(president).

creature(trillian) :-
	class(human_like),
	type(earthian),
	likes(coffee),
	profession(journalist).

creature(elvis_presley) :-
	class(human_like),
	type(earthian),
	likes(coffee),
	profession(singer).

creature(agrajag) :-
	class(giant),
	likes(tea).
