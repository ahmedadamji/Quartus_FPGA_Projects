module FourBitFullAdder(
input [3:0] a,
input [3:0] b,
input c_in,
output [3:0] sum,
output c_out
);

wire [3:0] cout;

OneBitFullAdder b0(
.a(a[0]),
.b(b[0]),
.c_in(c_in),
.sum(sum[0]),
.c_out(cout[0])
);

OneBitFullAdder b1(
.a(a[1]),
.b(b[1]),
.c_in(cout[0]),
.sum(sum[1]),
.c_out(cout[1])
);

OneBitFullAdder b2(
.a(a[2]),
.b(b[2]),
.c_in(cout[1]),
.sum(sum[2]),
.c_out(cout[2])
);

OneBitFullAdder b3(
.a(a[3]),
.b(b[3]),
.c_in(cout[2]),
.sum(sum[3]),
.c_out(cout[3])
);

assign c_out = cout[3];

endmodule 