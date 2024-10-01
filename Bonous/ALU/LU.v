module LU(
input [3:0] a,
input [3:0] b,
input f0,
input f3,
output [3:0] out
);

wire [1:0] muxsel;
wire [3:0] aandb;
wire [3:0] aorb;
wire [3:0] axorb;
wire [3:0] mov;

assign aandb = a&b;
assign aorb = a|b;
assign axorb = a^b;
assign mov = b;

assign muxsel[0] = f0;
assign muxsel[1] = f3;

Mux4Way4 luMux(
.a(mov),
.b(axorb),
.c(aorb),
.d(aandb),
.sel(muxsel),
.out(out)
);

endmodule 