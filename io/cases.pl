:- module(cases, [title/1, case/3]).
:- use_module('../prolog/book2tests').
:- use_module(engine).
title('book2tests').
cat_g(Q) :- rnd_pick([philosopher, thinker, person, fish, teacher, writer], Q).
ind_g(X) :- rnd_pick([socrates, lucian, plato, nemo], X).
cl_g(C) :- cat_g(P), cat_g(Q0), ( Q0 == P -> Q = being ; Q = Q0 ), ind_g(X), rnd_pick([rule(Q, P), fact(Q, X), fact(P, X), neg(Q, X)], C).
sents_g(Ss) :- rnd_int(1, 5, N), length(Cs, N), maplist(cl_g, Cs), maplist([C, Ws]>>sentence(C, Ws), Cs, Ss).
case(tests, [Ss], tests) :- sents_g(Ss).
case(contradictions, [Ss], contradictions) :- sents_g(Ss).
case(claim, [Ws], claim_or_none) :- sents_g([Ws|_]).
claim_or_none(Ws, C) :- ( claim(Ws, C0) -> C = C0 ; C = none ).
