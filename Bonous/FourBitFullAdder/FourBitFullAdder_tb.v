`timescale 1ns/10ps

module FourBitFullAdder_tb;
reg [3:0] a;
reg [3:0] b;
reg c_in;
wire [3:0] sum;
wire c_out;

integer i;

	initial begin
	c_in = 1'b0;
		for(i = 0; i <= 255; i = i + 1)
		begin
			{a,b} = i;
			#10;
		end
		$stop;
	end


FourBitFullAdder dut(
.a(a),
.b(b),
.c_in(c_in),
.sum(sum),
.c_out(c_out)
);

endmodule 