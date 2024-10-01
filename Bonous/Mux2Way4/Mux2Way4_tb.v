`timescale 1ns/10ps
module Mux2Way4_tb;
reg [3:0] a;
reg [3:0] b;
reg sel;
wire [3:0] out;

integer i;

initial begin

sel = 1'b0;

for (i = 0; i<255; i = i+1) begin
	{a,b} = i;
	#10;
end

sel = 1'b1;

for (i = 0; i<255; i = i+1) begin
	{a,b} = i;
	#10;
end
$stop;
end

Mux2Way4 dut(
.a(a),
.b(b),
.sel(sel),
.out(out)
);

endmodule 