
module Mux2Way4(
input [3:0] a,
input [3:0] b,
input sel,
output reg [3:0] out
);

	always @(*) begin
		
		case(sel)
			1'b0: out = b;
			1'b1: out = a;
		endcase

	end

endmodule 