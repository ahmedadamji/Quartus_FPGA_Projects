module Mux8Way16(
input [15:0]a,
input [15:0]b,
input [15:0]c,
input [15:0]d,
input [15:0]e,
input [15:0]f,
input [15:0]g,
input [15:0]h,
input [1:0]s,
output [15:0]y
);

wire [15:0]w1;
wire [15:0]w2;

Mux4Way16 abcd(
.a(a),
.b(b),
.c(c),
.d(d),
.s(s[0]),
.y(w1)
);

Mux4Way16 efgh(
.a(e),
.b(f),
.c(g),
.d(h),
.s(s[0]),
.y(w2)
);

Mux16 out(
.a(w1),
.b(w2),
.s(s[1]),
.y(y)
);

endmodule 