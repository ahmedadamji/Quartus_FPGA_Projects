module ALU(
input [3:0] aorb,
input sela,
input selb,
input rst_n,
input clk,
input en,
input [3:0] f,
output [3:0] y
);

wire [3:0] a;
wire [3:0] b;
wire [3:0] a_n;
wire [3:0] b_n;
wire [3:0] auout;
wire [3:0] luout;
wire [3:0] muxa;
wire [3:0] muxb;

assign a_n = ~a;
assign b_n = ~b;

Register rega(
.in(aorb),
.load(~sela),
.en(en),
.clk(clk),
.rst_n(rst_n),
.out(a)
);

Register regb(
.in(aorb),
.load(~selb),
.en(en),
.clk(clk),
.rst_n(rst_n),
.out(b)
);

Mux2Way4 aora_n(
.a(a_n),
.b(a),
.sel(f[3]),
.out(muxa)
);

Mux2Way4 borb_n(
.a(b_n),
.b(b),
.sel(f[2]),
.out(muxb)
);


AU arithmitic(
.a(muxa),
.b(muxb),
.f0(f[0]),
.out(auout)
);

LU logic(
.a(muxa),
.b(muxb),
.f0(f[0]),
.f3(f[3]),
.out(luout)
);

Mux2Way4 auorlu(
.a(luout),
.b(auout),
.sel(f[1]),
.out(y)
);


endmodule 