% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, tests, [[[nemo, is, not, a, being], [every, teacher, is, a, person], [socrates, is, a, fish], [nemo, is, a, writer], [every, writer, is, a, teacher]]], [test(being(nemo), false), test(fish(nemo), false), test(person(nemo), true), test(teacher(nemo), true), test(writer(nemo), true), test(being(socrates), false), test(fish(socrates), true), test(person(socrates), false), test(teacher(socrates), false), test(writer(socrates), false)]).
io(2, contradictions, [[[every, writer, is, a, thinker]]], []).
io(3, claim, [[every, thinker, is, a, teacher]], rule(teacher, thinker)).
io(4, tests, [[[plato, is, a, fish]]], [test(fish(plato), true)]).
io(5, contradictions, [[[plato, is, a, philosopher]]], []).
io(6, claim, [[every, writer, is, a, philosopher]], rule(philosopher, writer)).
io(7, tests, [[[lucian, is, a, writer], [socrates, is, a, thinker], [lucian, is, not, a, philosopher], [socrates, is, not, a, being], [socrates, is, not, a, writer]]], [test(being(lucian), false), test(philosopher(lucian), false), test(thinker(lucian), false), test(writer(lucian), true), test(being(socrates), false), test(philosopher(socrates), false), test(thinker(socrates), true), test(writer(socrates), false)]).
io(8, contradictions, [[[every, teacher, is, a, philosopher], [lucian, is, a, teacher]]], []).
io(9, claim, [[every, teacher, is, a, writer]], rule(writer, teacher)).
io(10, tests, [[[lucian, is, not, a, teacher], [every, writer, is, a, person], [lucian, is, a, philosopher]]], [test(person(lucian), false), test(philosopher(lucian), true), test(teacher(lucian), false), test(writer(lucian), false)]).
io(11, contradictions, [[[plato, is, not, a, being], [socrates, is, a, fish]]], []).
io(12, claim, [[nemo, is, a, philosopher]], fact(philosopher, nemo)).
io(13, tests, [[[lucian, is, a, writer], [nemo, is, a, writer], [socrates, is, not, a, writer], [plato, is, a, thinker], [every, philosopher, is, a, being]]], [test(being(lucian), false), test(philosopher(lucian), false), test(thinker(lucian), false), test(writer(lucian), true), test(being(nemo), false), test(philosopher(nemo), false), test(thinker(nemo), false), test(writer(nemo), true), test(being(plato), false), test(philosopher(plato), false), test(thinker(plato), true), test(writer(plato), false), test(being(socrates), false), test(philosopher(socrates), false), test(thinker(socrates), false), test(writer(socrates), false)]).
io(14, contradictions, [[[nemo, is, not, a, person], [every, teacher, is, a, thinker], [socrates, is, not, a, thinker]]], []).
io(15, claim, [[nemo, is, not, a, thinker]], neg(thinker, nemo)).
io(16, tests, [[[socrates, is, a, philosopher], [every, teacher, is, a, being], [lucian, is, a, thinker], [every, writer, is, a, being], [socrates, is, a, thinker]]], [test(being(lucian), false), test(philosopher(lucian), false), test(teacher(lucian), false), test(thinker(lucian), true), test(writer(lucian), false), test(being(socrates), false), test(philosopher(socrates), true), test(teacher(socrates), false), test(thinker(socrates), true), test(writer(socrates), false)]).
io(17, contradictions, [[[every, philosopher, is, a, being], [lucian, is, a, philosopher], [plato, is, a, thinker], [nemo, is, a, person]]], []).
io(18, claim, [[plato, is, a, writer]], fact(writer, plato)).
io(19, tests, [[[every, thinker, is, a, person], [every, thinker, is, a, being], [nemo, is, not, a, thinker], [nemo, is, a, being], [socrates, is, a, thinker]]], [test(being(nemo), true), test(person(nemo), false), test(thinker(nemo), false), test(being(socrates), true), test(person(socrates), true), test(thinker(socrates), true)]).
io(20, contradictions, [[[socrates, is, a, fish]]], []).
io(21, claim, [[socrates, is, not, a, writer]], neg(writer, socrates)).
io(22, tests, [[[socrates, is, a, thinker], [socrates, is, not, a, person], [lucian, is, a, person], [nemo, is, not, a, thinker]]], [test(person(lucian), true), test(thinker(lucian), false), test(person(nemo), false), test(thinker(nemo), false), test(person(socrates), false), test(thinker(socrates), true)]).
io(23, contradictions, [[[lucian, is, a, fish], [lucian, is, a, person], [every, philosopher, is, a, being]]], []).
io(24, claim, [[lucian, is, a, person]], fact(person, lucian)).
io(25, tests, [[[socrates, is, not, a, teacher], [plato, is, a, philosopher]]], [test(philosopher(plato), true), test(teacher(plato), false), test(philosopher(socrates), false), test(teacher(socrates), false)]).
io(26, contradictions, [[[plato, is, not, a, philosopher], [nemo, is, a, philosopher], [lucian, is, a, writer], [socrates, is, not, a, teacher]]], []).
io(27, claim, [[plato, is, a, writer]], fact(writer, plato)).
io(28, tests, [[[plato, is, a, thinker], [lucian, is, a, being]]], [test(being(lucian), true), test(thinker(lucian), false), test(being(plato), false), test(thinker(plato), true)]).
io(29, contradictions, [[[every, writer, is, a, teacher], [nemo, is, not, a, philosopher], [lucian, is, a, writer], [socrates, is, a, fish]]], []).
io(30, claim, [[lucian, is, not, a, person]], neg(person, lucian)).
io(31, tests, [[[nemo, is, not, a, philosopher]]], [test(philosopher(nemo), false)]).
io(32, contradictions, [[[nemo, is, a, person], [plato, is, a, philosopher], [every, fish, is, a, being], [every, person, is, a, fish], [lucian, is, not, a, writer]]], []).
io(33, claim, [[plato, is, not, a, writer]], neg(writer, plato)).
io(34, tests, [[[lucian, is, a, fish]]], [test(fish(lucian), true)]).
io(35, contradictions, [[[lucian, is, a, fish], [plato, is, a, fish]]], []).
io(36, claim, [[nemo, is, a, fish]], fact(fish, nemo)).
io(37, tests, [[[plato, is, a, philosopher], [plato, is, not, a, person], [plato, is, a, philosopher], [every, teacher, is, a, writer]]], [test(person(plato), false), test(philosopher(plato), true), test(teacher(plato), false), test(writer(plato), false)]).
io(38, contradictions, [[[socrates, is, a, fish], [lucian, is, a, philosopher], [plato, is, not, a, person], [socrates, is, a, teacher]]], []).
io(39, claim, [[every, thinker, is, a, writer]], rule(writer, thinker)).
io(40, tests, [[[plato, is, a, person], [plato, is, not, a, being]]], [test(being(plato), false), test(person(plato), true)]).
io(41, contradictions, [[[nemo, is, not, a, philosopher], [every, teacher, is, a, writer], [socrates, is, a, thinker], [every, philosopher, is, a, writer]]], []).
io(42, claim, [[every, philosopher, is, a, being]], rule(being, philosopher)).
io(43, tests, [[[every, person, is, a, fish], [every, thinker, is, a, writer]]], []).
io(44, contradictions, [[[nemo, is, not, a, person], [lucian, is, a, fish]]], []).
io(45, claim, [[nemo, is, a, fish]], fact(fish, nemo)).
io(46, tests, [[[every, thinker, is, a, teacher], [nemo, is, a, writer]]], [test(teacher(nemo), false), test(thinker(nemo), false), test(writer(nemo), true)]).
io(47, contradictions, [[[lucian, is, a, teacher], [plato, is, a, fish], [lucian, is, a, thinker]]], []).
io(48, claim, [[socrates, is, a, fish]], fact(fish, socrates)).
io(49, tests, [[[plato, is, a, thinker], [every, person, is, a, philosopher], [every, thinker, is, a, person], [every, thinker, is, a, teacher]]], [test(person(plato), true), test(philosopher(plato), true), test(teacher(plato), true), test(thinker(plato), true)]).
io(50, contradictions, [[[every, thinker, is, a, philosopher], [every, writer, is, a, philosopher], [plato, is, a, fish], [lucian, is, a, teacher], [lucian, is, a, person]]], []).
io(51, claim, [[lucian, is, a, thinker]], fact(thinker, lucian)).
io(52, tests, [[[every, writer, is, a, fish], [plato, is, not, a, being], [plato, is, not, a, person], [socrates, is, a, person], [plato, is, a, thinker]]], [test(being(plato), false), test(fish(plato), false), test(person(plato), false), test(thinker(plato), true), test(writer(plato), false), test(being(socrates), false), test(fish(socrates), false), test(person(socrates), true), test(thinker(socrates), false), test(writer(socrates), false)]).
io(53, contradictions, [[[every, thinker, is, a, person]]], []).
io(54, claim, [[nemo, is, not, a, person]], neg(person, nemo)).
io(55, tests, [[[every, writer, is, a, philosopher], [socrates, is, a, philosopher]]], [test(philosopher(socrates), true), test(writer(socrates), false)]).
io(56, contradictions, [[[nemo, is, a, being], [nemo, is, a, being], [lucian, is, a, thinker], [plato, is, a, fish]]], []).
io(57, claim, [[lucian, is, not, a, philosopher]], neg(philosopher, lucian)).
io(58, tests, [[[socrates, is, a, person], [lucian, is, a, writer], [nemo, is, a, being], [plato, is, a, person], [lucian, is, a, person]]], [test(being(lucian), false), test(person(lucian), true), test(writer(lucian), true), test(being(nemo), true), test(person(nemo), false), test(writer(nemo), false), test(being(plato), false), test(person(plato), true), test(writer(plato), false), test(being(socrates), false), test(person(socrates), true), test(writer(socrates), false)]).
io(59, contradictions, [[[lucian, is, not, a, being], [nemo, is, a, thinker], [nemo, is, a, writer], [lucian, is, a, fish], [socrates, is, not, a, philosopher]]], []).
io(60, claim, [[socrates, is, not, a, writer]], neg(writer, socrates)).
io(61, tests, [[[lucian, is, a, fish], [every, writer, is, a, thinker]]], [test(fish(lucian), true), test(thinker(lucian), false), test(writer(lucian), false)]).
io(62, contradictions, [[[plato, is, a, fish]]], []).
io(63, claim, [[every, teacher, is, a, writer]], rule(writer, teacher)).
io(64, tests, [[[socrates, is, a, philosopher], [every, philosopher, is, a, thinker], [plato, is, a, thinker], [plato, is, a, writer]]], [test(philosopher(plato), false), test(thinker(plato), true), test(writer(plato), true), test(philosopher(socrates), true), test(thinker(socrates), true), test(writer(socrates), false)]).
io(65, contradictions, [[[nemo, is, a, teacher], [socrates, is, a, teacher], [lucian, is, a, writer]]], []).
io(66, claim, [[socrates, is, a, fish]], fact(fish, socrates)).
io(67, tests, [[[every, person, is, a, philosopher], [lucian, is, not, a, being], [plato, is, a, writer]]], [test(being(lucian), false), test(person(lucian), false), test(philosopher(lucian), false), test(writer(lucian), false), test(being(plato), false), test(person(plato), false), test(philosopher(plato), false), test(writer(plato), true)]).
io(68, contradictions, [[[every, writer, is, a, person], [socrates, is, a, writer], [plato, is, not, a, thinker], [every, teacher, is, a, fish]]], []).
io(69, claim, [[every, philosopher, is, a, person]], rule(person, philosopher)).
io(70, tests, [[[socrates, is, not, a, person]]], [test(person(socrates), false)]).
io(71, contradictions, [[[lucian, is, not, a, writer], [socrates, is, a, person]]], []).
io(72, claim, [[lucian, is, not, a, philosopher]], neg(philosopher, lucian)).
io(73, tests, [[[nemo, is, not, a, thinker], [lucian, is, a, being]]], [test(being(lucian), true), test(thinker(lucian), false), test(being(nemo), false), test(thinker(nemo), false)]).
io(74, contradictions, [[[every, teacher, is, a, philosopher], [nemo, is, not, a, fish]]], []).
io(75, claim, [[lucian, is, a, philosopher]], fact(philosopher, lucian)).
io(76, tests, [[[every, writer, is, a, teacher]]], []).
io(77, contradictions, [[[socrates, is, a, writer], [nemo, is, not, a, being], [every, teacher, is, a, philosopher], [socrates, is, a, fish]]], []).
io(78, claim, [[lucian, is, a, fish]], fact(fish, lucian)).
io(79, tests, [[[every, philosopher, is, a, being], [every, philosopher, is, a, person], [nemo, is, a, fish], [socrates, is, not, a, thinker], [nemo, is, not, a, person]]], [test(being(nemo), false), test(fish(nemo), true), test(person(nemo), false), test(philosopher(nemo), false), test(thinker(nemo), false), test(being(socrates), false), test(fish(socrates), false), test(person(socrates), false), test(philosopher(socrates), false), test(thinker(socrates), false)]).
io(80, contradictions, [[[lucian, is, a, philosopher], [plato, is, a, philosopher], [plato, is, a, teacher]]], []).
io(81, claim, [[socrates, is, a, thinker]], fact(thinker, socrates)).
io(82, tests, [[[socrates, is, a, thinker], [every, writer, is, a, fish]]], [test(fish(socrates), false), test(thinker(socrates), true), test(writer(socrates), false)]).
io(83, contradictions, [[[socrates, is, not, a, being], [plato, is, a, person], [plato, is, a, being], [socrates, is, a, fish], [nemo, is, not, a, person]]], []).
io(84, claim, [[every, person, is, a, being]], rule(being, person)).
io(85, tests, [[[socrates, is, not, a, fish], [socrates, is, a, philosopher], [every, teacher, is, a, fish], [every, person, is, a, writer]]], [test(fish(socrates), false), test(person(socrates), false), test(philosopher(socrates), true), test(teacher(socrates), false), test(writer(socrates), false)]).
io(86, contradictions, [[[every, teacher, is, a, philosopher], [lucian, is, a, thinker], [every, thinker, is, a, person], [plato, is, a, person], [plato, is, not, a, writer]]], []).
io(87, claim, [[socrates, is, not, a, teacher]], neg(teacher, socrates)).
io(88, tests, [[[socrates, is, a, fish], [socrates, is, a, philosopher], [socrates, is, a, philosopher], [nemo, is, a, writer]]], [test(fish(nemo), false), test(philosopher(nemo), false), test(writer(nemo), true), test(fish(socrates), true), test(philosopher(socrates), true), test(writer(socrates), false)]).
io(89, contradictions, [[[lucian, is, not, a, teacher]]], []).
io(90, claim, [[every, teacher, is, a, writer]], rule(writer, teacher)).
io(91, tests, [[[nemo, is, a, fish], [every, teacher, is, a, fish], [plato, is, a, philosopher], [plato, is, not, a, teacher], [nemo, is, a, thinker]]], [test(fish(nemo), true), test(philosopher(nemo), false), test(teacher(nemo), false), test(thinker(nemo), true), test(fish(plato), false), test(philosopher(plato), true), test(teacher(plato), false), test(thinker(plato), false)]).
io(92, contradictions, [[[socrates, is, not, a, being], [lucian, is, not, a, teacher], [lucian, is, not, a, person], [nemo, is, not, a, fish], [socrates, is, not, a, writer]]], []).
io(93, claim, [[nemo, is, a, teacher]], fact(teacher, nemo)).
io(94, tests, [[[plato, is, not, a, philosopher], [every, thinker, is, a, writer], [lucian, is, not, a, writer], [every, philosopher, is, a, person]]], [test(person(lucian), false), test(philosopher(lucian), false), test(thinker(lucian), false), test(writer(lucian), false), test(person(plato), false), test(philosopher(plato), false), test(thinker(plato), false), test(writer(plato), false)]).
io(95, contradictions, [[[nemo, is, a, teacher]]], []).
io(96, claim, [[every, person, is, a, writer]], rule(writer, person)).
io(97, tests, [[[lucian, is, a, philosopher], [lucian, is, not, a, person], [lucian, is, a, teacher]]], [test(person(lucian), false), test(philosopher(lucian), true), test(teacher(lucian), true)]).
io(98, contradictions, [[[socrates, is, a, fish], [socrates, is, not, a, teacher], [socrates, is, not, a, thinker]]], []).
io(99, claim, [[socrates, is, a, being]], fact(being, socrates)).
io(100, tests, [[[every, person, is, a, fish], [plato, is, a, thinker], [every, philosopher, is, a, writer]]], [test(fish(plato), false), test(person(plato), false), test(philosopher(plato), false), test(thinker(plato), true), test(writer(plato), false)]).
io(101, contradictions, [[[plato, is, not, a, teacher], [nemo, is, a, philosopher], [every, thinker, is, a, person], [lucian, is, not, a, philosopher]]], []).
io(102, claim, [[nemo, is, not, a, teacher]], neg(teacher, nemo)).
io(103, tests, [[[lucian, is, a, writer], [nemo, is, a, writer], [nemo, is, a, fish], [socrates, is, a, teacher], [nemo, is, a, thinker]]], [test(fish(lucian), false), test(teacher(lucian), false), test(thinker(lucian), false), test(writer(lucian), true), test(fish(nemo), true), test(teacher(nemo), false), test(thinker(nemo), true), test(writer(nemo), true), test(fish(socrates), false), test(teacher(socrates), true), test(thinker(socrates), false), test(writer(socrates), false)]).
io(104, contradictions, [[[every, thinker, is, a, teacher], [nemo, is, a, fish], [plato, is, not, a, writer], [socrates, is, a, thinker], [lucian, is, a, teacher]]], []).
io(105, claim, [[nemo, is, a, person]], fact(person, nemo)).
io(106, tests, [[[nemo, is, a, writer], [socrates, is, a, fish], [nemo, is, a, writer], [plato, is, a, philosopher], [lucian, is, not, a, teacher]]], [test(fish(lucian), false), test(philosopher(lucian), false), test(teacher(lucian), false), test(writer(lucian), false), test(fish(nemo), false), test(philosopher(nemo), false), test(teacher(nemo), false), test(writer(nemo), true), test(fish(plato), false), test(philosopher(plato), true), test(teacher(plato), false), test(writer(plato), false), test(fish(socrates), true), test(philosopher(socrates), false), test(teacher(socrates), false), test(writer(socrates), false)]).
io(107, contradictions, [[[plato, is, not, a, philosopher], [socrates, is, not, a, writer], [nemo, is, a, writer]]], []).
io(108, claim, [[socrates, is, a, person]], fact(person, socrates)).
io(109, tests, [[[every, teacher, is, a, being], [lucian, is, a, being], [nemo, is, not, a, writer], [socrates, is, a, philosopher]]], [test(being(lucian), true), test(philosopher(lucian), false), test(teacher(lucian), false), test(writer(lucian), false), test(being(nemo), false), test(philosopher(nemo), false), test(teacher(nemo), false), test(writer(nemo), false), test(being(socrates), false), test(philosopher(socrates), true), test(teacher(socrates), false), test(writer(socrates), false)]).
io(110, contradictions, [[[lucian, is, a, being], [lucian, is, not, a, teacher], [lucian, is, a, philosopher]]], []).
io(111, claim, [[plato, is, a, philosopher]], fact(philosopher, plato)).
io(112, tests, [[[nemo, is, a, thinker], [nemo, is, a, philosopher]]], [test(philosopher(nemo), true), test(thinker(nemo), true)]).
io(113, contradictions, [[[lucian, is, a, teacher]]], []).
io(114, claim, [[plato, is, not, a, being]], neg(being, plato)).
io(115, tests, [[[socrates, is, a, writer], [socrates, is, a, teacher], [plato, is, a, person], [every, writer, is, a, fish], [plato, is, a, being]]], [test(being(plato), true), test(fish(plato), false), test(person(plato), true), test(teacher(plato), false), test(writer(plato), false), test(being(socrates), false), test(fish(socrates), true), test(person(socrates), false), test(teacher(socrates), true), test(writer(socrates), true)]).
io(116, contradictions, [[[every, teacher, is, a, writer], [every, person, is, a, teacher], [every, philosopher, is, a, teacher]]], []).
io(117, claim, [[nemo, is, not, a, teacher]], neg(teacher, nemo)).
io(118, tests, [[[nemo, is, a, teacher]]], [test(teacher(nemo), true)]).
io(119, contradictions, [[[nemo, is, a, philosopher], [plato, is, a, being], [plato, is, a, being]]], []).
io(120, claim, [[nemo, is, a, philosopher]], fact(philosopher, nemo)).
io(121, tests, [[[plato, is, not, a, teacher]]], [test(teacher(plato), false)]).
io(122, contradictions, [[[lucian, is, a, fish], [every, philosopher, is, a, being], [every, fish, is, a, philosopher], [plato, is, a, thinker]]], []).
io(123, claim, [[plato, is, a, person]], fact(person, plato)).
io(124, tests, [[[plato, is, not, a, writer], [plato, is, a, writer], [lucian, is, a, teacher]]], [test(teacher(lucian), true), test(writer(lucian), false), test(teacher(plato), false), test(writer(plato), true)]).
io(125, contradictions, [[[socrates, is, not, a, writer], [lucian, is, a, teacher], [plato, is, a, writer]]], []).
io(126, claim, [[lucian, is, a, person]], fact(person, lucian)).
io(127, tests, [[[socrates, is, a, teacher], [socrates, is, a, fish]]], [test(fish(socrates), true), test(teacher(socrates), true)]).
io(128, contradictions, [[[socrates, is, a, philosopher], [plato, is, a, thinker], [every, philosopher, is, a, fish], [lucian, is, a, teacher], [every, thinker, is, a, being]]], []).
io(129, claim, [[plato, is, not, a, being]], neg(being, plato)).
io(130, tests, [[[every, teacher, is, a, philosopher], [socrates, is, a, teacher], [every, thinker, is, a, fish], [plato, is, a, writer], [socrates, is, not, a, being]]], [test(being(plato), false), test(fish(plato), false), test(philosopher(plato), false), test(teacher(plato), false), test(thinker(plato), false), test(writer(plato), true), test(being(socrates), false), test(fish(socrates), false), test(philosopher(socrates), true), test(teacher(socrates), true), test(thinker(socrates), false), test(writer(socrates), false)]).
io(131, contradictions, [[[socrates, is, a, fish]]], []).
io(132, claim, [[every, thinker, is, a, fish]], rule(fish, thinker)).
io(133, tests, [[[nemo, is, a, writer], [lucian, is, not, a, writer], [socrates, is, a, fish], [plato, is, a, fish], [socrates, is, a, fish]]], [test(fish(lucian), false), test(writer(lucian), false), test(fish(nemo), false), test(writer(nemo), true), test(fish(plato), true), test(writer(plato), false), test(fish(socrates), true), test(writer(socrates), false)]).
io(134, contradictions, [[[nemo, is, not, a, philosopher], [lucian, is, not, a, fish]]], []).
io(135, claim, [[lucian, is, a, writer]], fact(writer, lucian)).
io(136, tests, [[[socrates, is, not, a, fish], [socrates, is, not, a, philosopher], [plato, is, not, a, being]]], [test(being(plato), false), test(fish(plato), false), test(philosopher(plato), false), test(being(socrates), false), test(fish(socrates), false), test(philosopher(socrates), false)]).
io(137, contradictions, [[[nemo, is, a, thinker], [plato, is, a, fish]]], []).
io(138, claim, [[plato, is, a, fish]], fact(fish, plato)).
io(139, tests, [[[plato, is, not, a, being], [lucian, is, a, thinker], [every, teacher, is, a, thinker], [every, person, is, a, philosopher]]], [test(being(lucian), false), test(person(lucian), false), test(philosopher(lucian), false), test(teacher(lucian), false), test(thinker(lucian), true), test(being(plato), false), test(person(plato), false), test(philosopher(plato), false), test(teacher(plato), false), test(thinker(plato), false)]).
io(140, contradictions, [[[every, philosopher, is, a, thinker], [plato, is, a, being], [plato, is, a, writer], [plato, is, not, a, thinker]]], []).
io(141, claim, [[socrates, is, a, philosopher]], fact(philosopher, socrates)).
io(142, tests, [[[every, writer, is, a, thinker]]], []).
io(143, contradictions, [[[lucian, is, not, a, teacher], [every, thinker, is, a, person], [every, thinker, is, a, being], [lucian, is, not, a, thinker], [every, fish, is, a, writer]]], []).
io(144, claim, [[socrates, is, a, being]], fact(being, socrates)).
io(145, tests, [[[socrates, is, not, a, thinker], [every, fish, is, a, person]]], [test(fish(socrates), false), test(person(socrates), false), test(thinker(socrates), false)]).
io(146, contradictions, [[[plato, is, not, a, writer], [every, writer, is, a, philosopher], [every, teacher, is, a, fish], [socrates, is, a, philosopher]]], []).
io(147, claim, [[socrates, is, a, fish]], fact(fish, socrates)).
io(148, tests, [[[every, person, is, a, teacher], [lucian, is, not, a, person], [socrates, is, a, being], [plato, is, not, a, teacher]]], [test(being(lucian), false), test(person(lucian), false), test(teacher(lucian), false), test(being(plato), false), test(person(plato), false), test(teacher(plato), false), test(being(socrates), true), test(person(socrates), false), test(teacher(socrates), false)]).
io(149, contradictions, [[[lucian, is, a, philosopher], [nemo, is, not, a, thinker], [lucian, is, a, fish]]], []).
io(150, claim, [[every, teacher, is, a, philosopher]], rule(philosopher, teacher)).
io(151, tests, [[[nemo, is, a, thinker], [lucian, is, a, philosopher], [nemo, is, a, philosopher], [every, philosopher, is, a, writer], [plato, is, a, fish]]], [test(fish(lucian), false), test(philosopher(lucian), true), test(thinker(lucian), false), test(writer(lucian), true), test(fish(nemo), false), test(philosopher(nemo), true), test(thinker(nemo), true), test(writer(nemo), true), test(fish(plato), true), test(philosopher(plato), false), test(thinker(plato), false), test(writer(plato), false)]).
io(152, contradictions, [[[every, teacher, is, a, fish], [socrates, is, not, a, person]]], []).
io(153, claim, [[every, person, is, a, teacher]], rule(teacher, person)).
io(154, tests, [[[every, teacher, is, a, person]]], []).
io(155, contradictions, [[[lucian, is, a, fish], [socrates, is, not, a, person], [socrates, is, a, fish], [every, writer, is, a, teacher], [every, person, is, a, philosopher]]], []).
io(156, claim, [[socrates, is, a, person]], fact(person, socrates)).
io(157, tests, [[[plato, is, a, philosopher]]], [test(philosopher(plato), true)]).
io(158, contradictions, [[[lucian, is, a, person]]], []).
io(159, claim, [[socrates, is, a, fish]], fact(fish, socrates)).
io(160, tests, [[[nemo, is, a, teacher], [nemo, is, not, a, teacher]]], [test(teacher(nemo), true)]).
io(161, contradictions, [[[socrates, is, a, teacher], [lucian, is, a, fish], [every, philosopher, is, a, fish], [every, writer, is, a, thinker]]], []).
io(162, claim, [[lucian, is, not, a, philosopher]], neg(philosopher, lucian)).
io(163, tests, [[[plato, is, not, a, philosopher], [socrates, is, a, fish], [socrates, is, not, a, teacher], [lucian, is, not, a, being]]], [test(being(lucian), false), test(fish(lucian), false), test(philosopher(lucian), false), test(teacher(lucian), false), test(being(plato), false), test(fish(plato), false), test(philosopher(plato), false), test(teacher(plato), false), test(being(socrates), false), test(fish(socrates), true), test(philosopher(socrates), false), test(teacher(socrates), false)]).
io(164, contradictions, [[[plato, is, a, teacher]]], []).
io(165, claim, [[lucian, is, a, thinker]], fact(thinker, lucian)).
io(166, tests, [[[nemo, is, a, thinker], [lucian, is, a, writer]]], [test(thinker(lucian), false), test(writer(lucian), true), test(thinker(nemo), true), test(writer(nemo), false)]).
io(167, contradictions, [[[nemo, is, a, teacher], [every, philosopher, is, a, thinker], [every, fish, is, a, writer], [every, thinker, is, a, person], [nemo, is, not, a, fish]]], []).
io(168, claim, [[socrates, is, a, being]], fact(being, socrates)).
io(169, tests, [[[socrates, is, a, thinker], [plato, is, a, being], [socrates, is, a, writer], [plato, is, a, teacher]]], [test(being(plato), true), test(teacher(plato), true), test(thinker(plato), false), test(writer(plato), false), test(being(socrates), false), test(teacher(socrates), false), test(thinker(socrates), true), test(writer(socrates), true)]).
io(170, contradictions, [[[socrates, is, a, teacher]]], []).
io(171, claim, [[nemo, is, a, writer]], fact(writer, nemo)).
io(172, tests, [[[nemo, is, not, a, fish], [socrates, is, not, a, writer], [socrates, is, not, a, person]]], [test(fish(nemo), false), test(person(nemo), false), test(writer(nemo), false), test(fish(socrates), false), test(person(socrates), false), test(writer(socrates), false)]).
io(173, contradictions, [[[plato, is, a, fish], [lucian, is, not, a, fish], [nemo, is, a, fish], [every, fish, is, a, person]]], []).
io(174, claim, [[nemo, is, not, a, philosopher]], neg(philosopher, nemo)).
io(175, tests, [[[nemo, is, a, being], [lucian, is, not, a, fish], [lucian, is, not, a, being], [nemo, is, not, a, thinker]]], [test(being(lucian), false), test(fish(lucian), false), test(thinker(lucian), false), test(being(nemo), true), test(fish(nemo), false), test(thinker(nemo), false)]).
io(176, contradictions, [[[every, person, is, a, teacher], [plato, is, a, writer], [plato, is, a, teacher], [socrates, is, a, being], [lucian, is, a, fish]]], []).
io(177, claim, [[every, writer, is, a, fish]], rule(fish, writer)).
io(178, tests, [[[every, writer, is, a, person], [socrates, is, not, a, being], [every, person, is, a, philosopher]]], [test(being(socrates), false), test(person(socrates), false), test(philosopher(socrates), false), test(writer(socrates), false)]).
io(179, contradictions, [[[nemo, is, a, teacher], [nemo, is, a, philosopher], [every, teacher, is, a, fish]]], []).
io(180, claim, [[every, writer, is, a, being]], rule(being, writer)).
io(181, tests, [[[lucian, is, not, a, teacher], [plato, is, not, a, person], [every, fish, is, a, writer], [nemo, is, a, person]]], [test(fish(lucian), false), test(person(lucian), false), test(teacher(lucian), false), test(writer(lucian), false), test(fish(nemo), false), test(person(nemo), true), test(teacher(nemo), false), test(writer(nemo), false), test(fish(plato), false), test(person(plato), false), test(teacher(plato), false), test(writer(plato), false)]).
io(182, contradictions, [[[socrates, is, a, fish], [nemo, is, a, fish], [nemo, is, not, a, being]]], []).
io(183, claim, [[nemo, is, a, writer]], fact(writer, nemo)).
io(184, tests, [[[lucian, is, a, being]]], [test(being(lucian), true)]).
io(185, contradictions, [[[socrates, is, a, writer], [plato, is, a, thinker], [nemo, is, a, thinker]]], []).
io(186, claim, [[socrates, is, a, thinker]], fact(thinker, socrates)).
io(187, tests, [[[nemo, is, not, a, person], [plato, is, not, a, thinker], [plato, is, a, fish], [lucian, is, not, a, thinker], [lucian, is, not, a, philosopher]]], [test(fish(lucian), false), test(person(lucian), false), test(philosopher(lucian), false), test(thinker(lucian), false), test(fish(nemo), false), test(person(nemo), false), test(philosopher(nemo), false), test(thinker(nemo), false), test(fish(plato), true), test(person(plato), false), test(philosopher(plato), false), test(thinker(plato), false)]).
io(188, contradictions, [[[lucian, is, not, a, fish], [nemo, is, a, person]]], []).
io(189, claim, [[lucian, is, a, fish]], fact(fish, lucian)).
io(190, tests, [[[lucian, is, a, being], [nemo, is, a, writer]]], [test(being(lucian), true), test(writer(lucian), false), test(being(nemo), false), test(writer(nemo), true)]).
io(191, contradictions, [[[plato, is, a, thinker], [lucian, is, not, a, thinker]]], []).
io(192, claim, [[socrates, is, a, fish]], fact(fish, socrates)).
io(193, tests, [[[plato, is, a, person], [every, philosopher, is, a, thinker], [every, fish, is, a, writer], [lucian, is, a, philosopher]]], [test(fish(lucian), false), test(person(lucian), false), test(philosopher(lucian), true), test(thinker(lucian), true), test(writer(lucian), false), test(fish(plato), false), test(person(plato), true), test(philosopher(plato), false), test(thinker(plato), false), test(writer(plato), false)]).
io(194, contradictions, [[[plato, is, not, a, being], [socrates, is, a, person], [nemo, is, not, a, thinker], [plato, is, a, philosopher], [nemo, is, a, writer]]], []).
io(195, claim, [[socrates, is, a, thinker]], fact(thinker, socrates)).
io(196, tests, [[[every, thinker, is, a, philosopher], [every, teacher, is, a, writer], [every, person, is, a, teacher], [every, philosopher, is, a, teacher]]], []).
io(197, contradictions, [[[nemo, is, not, a, teacher], [plato, is, not, a, writer], [lucian, is, a, philosopher]]], []).
io(198, claim, [[nemo, is, a, philosopher]], fact(philosopher, nemo)).
io(199, tests, [[[nemo, is, a, person], [plato, is, a, being], [plato, is, a, being]]], [test(being(nemo), false), test(person(nemo), true), test(being(plato), true), test(person(plato), false)]).
io(200, contradictions, [[[nemo, is, a, person], [nemo, is, not, a, being], [every, fish, is, a, person], [lucian, is, a, thinker], [plato, is, a, person]]], []).
