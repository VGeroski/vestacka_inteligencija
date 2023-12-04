female(pam).
male(tom).
male(bob).
female(liz).
female(pat).
female(ann).
male(jim).
parent(tom, bob).
parent(pam, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

mother(X, Y):-parent(X, Y), female(X). 