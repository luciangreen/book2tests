% Theorems, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).
:- use_module('../prolog/book2tests').

% Domain: every set of up to 3 claims over individuals s and t and categories p, q and r.
cl(rule(Q, P)) :- member(P, [p, q, r]), member(Q, [p, q, r]), P \== Q.
cl(fact(Q, X)) :- member(Q, [p, q, r]), member(X, [s, t]).
cl(neg(Q, X)) :- member(Q, [p, q, r]), member(X, [s, t]).
claims(Cs) :- between(1, 3, N), length(Cs, N), maplist(cl, Cs).

% 1. Writing a claim as a sentence and reading it back gives the same claim.
theorem(claims_round_trip) :- forall(cl(C), ( sentence(C, Ws), claim(Ws, C2), C2 == C )).

% 2. The generated tests all pass against the claims they came from.
theorem(generated_tests_pass) :- forall(claims(Cs), ( maplist([C, Ws]>>sentence(C, Ws), Cs, Ss), tests(Ss, Ts), run_tests(Ss, Ts, R), forall(member(_-X, R), X == pass) )).

% 3. A fact always holds, and a rule passes its category on: if every P is a Q and x is a P, then x is a Q.
theorem(facts_and_rules_hold) :- forall(( claims(Cs), member(fact(Q, X), Cs) ), ( G =.. [Q, X], holds(Cs, G) )),
    forall(( claims(Cs), member(rule(Q, P), Cs), member(fact(P, X), Cs) ), ( G =.. [Q, X], holds(Cs, G) )).

% 4. A contradiction is reported exactly when a denied goal is implied.
theorem(contradictions_exact) :- forall(claims(Cs), ( maplist([C, Ws]>>sentence(C, Ws), Cs, Ss), contradictions(Ss, X), forall(member(neg(Q, A), Cs), ( G =.. [Q, A], iff(memberchk(G, X), holds(Cs, G)) )) )).
