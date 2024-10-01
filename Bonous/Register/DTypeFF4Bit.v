module DTypeFF4Bit(
input [3:0] D,
input en,
input clk,
input rst_n,
output reg [3:0] Q
);

	always @(posedge clk or negedge rst_n) begin
	
		if(!rst_n) begin
			Q <= 4'b0000;
		end
		
		else if(en) begin
			Q <= D;
		end
		
	end
	
endmodule 