# book2tests

turn claims made in your books into executable tests. Claims are short sentences ("every philosopher is a thinker", "socrates is a philosopher", "socrates is not a fish"); each becomes a Prolog fact or rule, each test asks a question with the answer the book implies, and contradictions between claims are found. Sentences are word lists.

## Use

```prolog
?- use_module(prolog/book2tests).
?- claim([every, philosopher, is, a, thinker], C).        % C = rule(thinker, philosopher)
?- tests([[every, philosopher, is, a, thinker], [socrates, is, a, philosopher]], T).   % T includes test(thinker(socrates), true)
?- contradictions([[socrates, is, a, fish], [socrates, is, not, a, fish]], X).          % X = [fish(socrates)]
```

## Proofs

`proofs/theorems.pl` proves 4 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. every set of up to 3 claims over individuals s and t and categories p, q and r.

1. Writing a claim as a sentence and reading it back gives the same claim.
2. The generated tests all pass against the claims they came from.
3. A fact always holds, and a rule passes its category on: if every P is a Q and x is a P, then x is a Q.
4. A contradiction is reported exactly when a denied goal is implied.

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.
