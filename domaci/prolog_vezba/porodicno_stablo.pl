% =====================================================================
% Primer sa porodicnim stablom (skripta Vestacka inteligencija - MATF)
% =====================================================================

% musko(kron).
% musko(posejdon).
% musko(zevs).
% musko(jasion).
% musko(triton).
% musko(apolon).
% musko(pluton).
% zensko(reja).
% zensko(amfitrita).
% zensko(leto).
% zensko(demetra).
% zensko(artemida).
% roditelj(kron,posejdon).
% roditelj(reja,posejdon).
% roditelj(kron,zevs).
% roditelj(reja,zevs).
% roditelj(kron,demetra).
% roditelj(reja,demetra).
% roditelj(posejdon,triton).
% roditelj(amfitrita,triton).
% roditelj(zevs,apolon).
% roditelj(leto,apolon).
% roditelj(zevs,artemida).
% roditelj(leto,artemida).
% roditelj(jasion,pluton).
% roditelj(demetra,pluton).

musko(risto).
musko(naum).
musko(vladimir).
musko(vladeta).
musko(branko).
musko(stefan).
musko(aleksandar).
zensko(zora).
zensko(snezana).
zensko(juliska).
zensko(svetlana).
zensko(angelina).
zensko(nina).
zensko(ana).
zensko(milica).

roditelj(risto, naum).
roditelj(zora, naum).
roditelj(naum, vladimir).
roditelj(snezana, vladimir).
roditelj(naum, nina).
roditelj(snezana, nina).
roditelj(juliska, snezana).
roditelj(risto, svetlana).
roditelj(zora, svetlana).
roditelj(risto, angelina).
roditelj(zora, angelina).
roditelj(svetlana, ana).
roditelj(svetlana, milica).
roditelj(branko, ana).
roditelj(branko, milica).
roditelj(vladeta, aleksandar).
roditelj(angelina, aleksandar).
roditelj(vladeta, stefan).
roditelj(angelina, stefan).

deda(X, Y) :- musko(X), roditelj(Z, Y), roditelj(X, Z).
baba(X, Y) :- zensko(X), roditelj(Z, Y), roditelj(X, Z).
predak(X, Y) :- roditelj(X, Y).
predak(X, Y) :- roditelj(X, Z), predak(Z, Y).
majka(X, Y) :- zensko(X), roditelj(X, Y).
otac(X, Y) :- musko(X), roditelj(X, Y).
brat(X, Y) :- musko(X), roditelj(Z, X), roditelj(Z, Y), X\==Y.
sestra(X, Y) :- zensko(X), roditelj(Z, X), roditelj(Z, Y), X\==Y.
tetka(X, Y) :- roditelj(Z, Y), sestra(X, Z).
stric(X, Y) :- otac(Z, Y), brat(X, Z).
ujak(X, Y) :- majka(Z, Y), brat(X, Z).

bratodstrica(X, Y) :- musko(X), otac(Z,X), stric(Z,Y).
sestraodstrica(X, Y) :- zensko(X), otac(Z,X), stric(Z,Y).
bratodujaka(X, Y) :- musko(X), otac(Z,X), ujak(Z,Y).
sestraodujaka(X, Y) :- zensko(X), otac(Z,X), ujak(Z,Y).
bratodtetke(X, Y) :- musko(X), majka(Z,X), tetka(Z,Y).
sestraodtetke(X, Y) :- zensko(X), majka(Z,X), tetka(Z,Y).