
module Mux4Way4(
input [3:0] a,
input [3:0] b,
input [3:0] c,
input [3:0] d,
input [1:0] sel,
output reg [3:0] out
);

	always @(*) begin
		
		case(sel)
			2'b00: out = d;
			2'b01: out = c;
			2'b10: out = b;
			2'b11: out = a;
		endcase

	end

endmodule 