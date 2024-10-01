/* JKTypeFF.v
* -------------------
* By: Ahmed Adamjee
* Date: 23rd March 2019
*
* Module Description:
* -------------------
* JK Type Flip-Flop.
*
* Inputs:
* J
* K
* clk
* Output:
* Q
*
*/

module JKTypeFF(

  input clk,
  input en,
  input rst_n,
  input J,
  input K,
  output reg Q
);

  
  always @(posedge clk or negedge rst_n) begin
	
	if(!rst_n) begin
	
		  Q = 1'b0;
			
	end else if (en) begin
			
			case({K,J})
			2'b00 : Q = Q;
			2'b01 : Q = 1'b1;
			2'b10 : Q = 1'b0;
			2'b11 : Q = !Q;
			
			endcase
			
	end
		
	end
	
endmodule 