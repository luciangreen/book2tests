% book2tests: turn claims made in your books into executable tests. Claims are short sentences
% ("every philosopher is a thinker", "socrates is a philosopher", "socrates is not a
% fish"); each becomes a Prolog fact or rule, each test asks a question with the answer the
% book implies, and contradictions between claims are found.
% Sentences are word lists.
%?- claim([every, philosopher, is, a, thinker], C).        % C = rule(thinker, philosopher)
%?- tests([[every, philosopher, is, a, thinker], [socrates, is, a, philosopher]], T).   % T includes test(thinker(socrates), true)
%?- contradictions([[socrates, is, a, fish], [socrates, is, not, a, fish]], X).          % X = [fish(socrates)]
:- module(book2tests, [claim/2, sentence/2, holds/2, tests/2, run_tests/3, contradictions/2]).
:- use_module(library(lists)).
:- use_module(library(apply)).

claim(Ws, C) :- phrase(c(C), Ws), !.
sentence(C, Ws) :- phrase(c(C), Ws), !.
c(rule(Q, P)) --> [every, P, is, a, Q].
c(fact(Q, X)) --> [X, is, a, Q].
c(neg(Q, X)) --> [X, is, not, a, Q].

% holds(+Claims, +Goal): Q(X) follows from the facts and rules (chains of rules, no loops back).
holds(Cs, G) :- G =.. [Q, X], holds_(Cs, Q, X, []).
holds_(Cs, Q, X, _) :- memberchk(fact(Q, X), Cs), !.
holds_(Cs, Q, X, Seen) :- member(rule(Q, P), Cs), \+ memberchk(P, Seen), holds_(Cs, P, X, [Q|Seen]), !.

% tests(+Sentences, -Tests): for every individual and every category, test(Goal, Expected).
tests(Ss, Ts) :- maplist(claim, Ss, Cs), findall(X, ( member(fact(_, X), Cs) ; member(neg(_, X), Cs) ), X0), sort(X0, Xs),
    findall(Q, ( member(fact(Q, _), Cs) ; member(rule(Q, _), Cs) ; member(rule(_, Q), Cs) ; member(neg(Q, _), Cs) ), Q0), sort(Q0, Qs),
    findall(test(G, E), ( member(X, Xs), member(Q, Qs), G =.. [Q, X], ( holds(Cs, G) -> E = true ; E = false ) ), Ts).

run_tests(Ss, Ts, Results) :- maplist(claim, Ss, Cs), maplist([test(G, E), G-R]>>( ( holds(Cs, G) -> A = true ; A = false ), ( A == E -> R = pass ; R = fail ) ), Ts, Results).

% contradictions(+Sentences, -Goals): goals the claims say both hold and don't.
contradictions(Ss, X) :- maplist(claim, Ss, Cs), findall(G, ( member(neg(Q, A), Cs), G =.. [Q, A], holds(Cs, G) ), X0), sort(X0, X).
