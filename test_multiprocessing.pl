% (C) 2020 Diogo Rodrigues
% Distributed under the terms of the GNU General Public License, version 3

:-
    reconsult('multiprocessing.pl'),
    L = [h,e,l,l,o],
    statistics(walltime, [StartTimer|_]),
    multiprocessing_create((reconsult('print_me.pl'), print_me(L)), Out01),
    multiprocessing_create((reconsult('print_me.pl'), print_me(L)), Out02),
    multiprocessing_create((reconsult('print_me.pl'), print_me(L)), Out03),
    multiprocessing_create((reconsult('print_me.pl'), print_me(L)), Out04),
    multiprocessing_create((reconsult('print_me.pl'), print_me(L)), Out05),
    multiprocessing_create((reconsult('print_me.pl'), print_me(L)), Out06),
    multiprocessing_create((reconsult('print_me.pl'), print_me(L)), Out07),
    multiprocessing_create((reconsult('print_me.pl'), print_me(L)), Out08),
    read(Out01, Answer01), close(Out01), write(Answer01), nl,
    read(Out02, Answer02), close(Out02), write(Answer02), nl,
    read(Out03, Answer03), close(Out03), write(Answer03), nl,
    read(Out04, Answer04), close(Out04), write(Answer04), nl,
    read(Out05, Answer05), close(Out05), write(Answer05), nl,
    read(Out06, Answer06), close(Out06), write(Answer06), nl,
    read(Out07, Answer07), close(Out07), write(Answer07), nl,
    read(Out08, Answer08), close(Out08), write(Answer08), nl,
    statistics(walltime, [EndTimer|_]),
    ExecutionTime is EndTimer-StartTimer,
    write(ExecutionTime),nl,
    halt(0).
:-  halt(1).
