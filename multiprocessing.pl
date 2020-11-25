% (C) 2020 Diogo Rodrigues
% Distributed under the terms of the GNU General Public License, version 3

:-
    use_module(library(process)).

multiprocessing_create(Predicate, Out) :-
    current_prolog_flag(dialect, Dialect),
    multiprocessing_create_(Dialect, Predicate, Out).

multiprocessing_create_(sicstus, Predicate, Out) :-
    process_create(
        application(sicstus),
        ['-f', '--noinfo', '--nologo', '--goal', 'read(X), call(X), halt.'],
        [
            stdin(pipe(In)),
            stdout(pipe(Out)),
            stderr(std)
        ]
    ),
    format(In, '~q .~n', [Predicate]).
multiprocessing_create_(swi, Predicate, Out) :-
    format(string(String), '~q', Predicate),
    process_create(
        path(swipl),
        ['-g', String, '-t', 'halt'],
        [
            stdin(null),
            stdout(pipe(Out))
        ]
    ).