see(a, 2, 5).
see(d, 5, 5).
see(e, 5, 2).

on(a, b).
on(b, c).
on(c, table).
on(d, table).
on(e, table).

z(B, 0) :- on(B, table).
z(B, Z) :- on(B, B0), z(B0, Z0), Z is Z0 + 1.