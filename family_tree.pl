% Family Tree Knowledge Base

% Gender Facts
gender(john, male).
gender(mary, female).
gender(alex, male).
gender(susan, female).
gender(david, male).
gender(lisa, female).
gender(tom, male).

% Parent Facts
parent(john, alex).
parent(mary, alex).

parent(john, susan).
parent(mary, susan).

parent(alex, david).
parent(lisa, david).

parent(alex, tom).
parent(lisa, tom).

% Father Rule
father(F, C) :-
    parent(F, C),
    gender(F, male).

% Mother Rule
mother(M, C) :-
    parent(M, C),
    gender(M, female).

% Sibling Rule
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Grandparent Rule
grandparent(G, C) :-
    parent(G, P),
    parent(P, C).