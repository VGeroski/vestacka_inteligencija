% =======================================================================================
% Logicki zadatak
% 
% Ko laze taj krade.
% Ko krade i uhvacen je u kradi taj ide u zatvor.
% Al Kapone laze.
% Al Kapone je uhvacen u kradi.
% Laki Luciano laze.
% Napisati PROLOG program koji opisuje navedene cinjenice i pravila. Koje odgovore PROLOG daje na upite
% ”da li Al Kapone ide u zatvor” i ”da li Laki Luciano ide u zatvor”.
% =======================================================================================

laze(alKapone).
uhvacen_u_kradji(alKapone).
laze(lakiLuciano).

krade(X) :- laze(X).
zatvor(X) :- krade(X), uhvacen_u_kradji(X).