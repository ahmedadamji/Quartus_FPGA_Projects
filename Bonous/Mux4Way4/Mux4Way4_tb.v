`timescale 1ns/10ps

module Mux4Way4_tb;
reg [3:0] a;
reg [3:0] b;
reg [3:0] c;
reg [3:0] d;
reg [1:0] sel;
wire [3:0] out;

integer i;

initial begin
sel = 2'b00;

for (i = 0; i<25535; i = i+1) begin
	{a,b,c,d} = i;
	#10;
end

sel = 2'b01;

for (i = 0; i<25535; i = i+1) begin
	{a,b,c,d} = i;
	#10;
end

sel = 2'b10;

for (i = 0; i<25535; i = i+1) begin
	{a,b,c,d} = i;
	#10;
end

sel = 2'b11;

for (i = 0; i<25535; i = i+1) begin
	{a,b,c,d} = i;
	#10;
end

$stop;
end

Mux4Way4 dut(
.a(a),
.b(b),
.c(c),
.d(d),
.sel(sel),
.out(out)
);

endmodule 