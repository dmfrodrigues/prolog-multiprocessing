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
            stdout(pipe(Out))
        ]
    ),
    format(In, '~q .~n', [Predicate]).
