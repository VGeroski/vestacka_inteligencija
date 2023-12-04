% =======================================================================================
% Bojenje grafa
% Posmatra se karta i na njoj Srbija i njeni susedi.
% Potrebno je naci bojenje karte takvo da svaka zemlja bude obojena zutom, zelenom ili plavom bojom,
% a da susedne zemlje budu obojene razlicitim bojama.  
% =======================================================================================

bojenje(Srb, Cg, Mak, Hrv, Slo, Bih, Madj, Bug, Rum):-
sused(Srb, Cg),
sused(Srb, Mak),
sused(Srb, Hrv),
sused(Srb, Bih),
sused(Srb, Madj),
sused(Srb, Bug),
sused(Srb, Rum),
sused(Cg, Hrv),
sused(Cg, Bih),
sused(Hrv, Slo),
sused(Hrv, Bih),
sused(Hrv, Madj),
sused(Madj, Rum),
sused(Rum, Bug).

boja(zuta).
boja(plava).
boja(crvena).

sused(X,Y):-boja(X), boja(Y), X\==Y.