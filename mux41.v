module mux41 (out, i0, i1, i2, i3, s0, s1);
output out;
input i0, i1, i2, i3;//all port declarations are implicitly wire (net)
input s0, s1;

//internal wire declarations
wire s1n, s0n;
wire y0, y1, y2, y3;

//instantiate lower level modules, here gates
and a0(y0, i0, s1n, s0n);
and a1(y1, i1, s1n, s0);
and a2(y2, i2, s1, s0n);
and a3(y3, i3, s1, s0);

or o0(out, y0, y1, y2, y3);

not n0(s0n, s0);
not n1(s1n, s1);

endmodule