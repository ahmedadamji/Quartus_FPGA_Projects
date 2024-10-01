module Mux4Way16(
input [15:0]a,
input [15:0]b,
input [15:0]c,
input [15:0]d,
input [1:0]s,
output [15:0]y
);

wire [15:0]w1;
wire [15:0]w2;

Mux16 ab(
.a(a),
.b(b),
.s(s[0]),
.y(w1)
);

Mux16 cd(
.a(c),
.b(d),
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