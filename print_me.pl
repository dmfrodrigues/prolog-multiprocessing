:-
    use_module(library(system)).

wait_busy(N) :-
    statistics(walltime, [StartTimer|_]),
    repeat,
        statistics(walltime, [EndTimer|_]),
        EndTimer-StartTimer >= N,
    !.

print_me(L) :-
    wait_busy(10000),
    write(L),
    format(".~n", []).
