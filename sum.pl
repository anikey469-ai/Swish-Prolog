sum(0, 0).
sum(N, S) :-
    N > 0,
    N1 is N - 1,
    sum(N1, S1),
    S is N + S1.
product(0, 1).
product(N, P) :-
    N > 0,
    N1 is N - 1,
    product(N1, P1),
    P is N * P1.