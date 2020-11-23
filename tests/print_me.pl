:-
    use_module(library(system)).

count_up_to(0).
count_up_to(N) :- N1 is N-1, count_up_to(N1).

print_me(L) :-
    count_up_to(9600000),
    write(L),
    format(".~n", []).
