module Register(
input [3:0] in,
input load,
input en,
input clk,
input rst_n,
output [3:0] out
);

wire [3:0] D;
wire [3:0] Q;

DTypeFF4Bit dTypeFF(
.D(D),
.en(en),
.clk(clk),
.rst_n(rst_n),
.Q(Q)
);

Mux2Way4 mux(
.a(in),
.b(Q),
.sel(load),
.out(D)
);

assign out = Q;

endmodule 