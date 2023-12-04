
% =======================================================================================
% Hanojeve kule
% Potrebno je prebaciti N diskova poredjanih po velicini sa stuba X na stub Z koriscenjem stuba Y.
% Pri tome nije dozvoljeno da veci disk stoji na manjem disku.
% Napisati prolog predikat koji ispisuje korake u premestanju diskova.
% =======================================================================================

hanoj(1, X, _, Z):- write('prebaci sa '),
                    write(X),
                    write(' na '),
                    write(Z),
                    nl.  

hanoj(N, X, Y, Z):- N > 1,
                    M is N - 1,
                    hanoj(M, X, Z, Y),
                    hanoj(1, X, _, Z),
                    hanoj(M, Y, X, Z).