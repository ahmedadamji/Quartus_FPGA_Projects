module AU(
input [3:0] a,
input [3:0] b,
input f0,
output [3:0] out
);

FourBitFullAdder add(
.a(a),
.b(b),
.c_in(f0),
.sum(out),
.c_out()
);

endmodule