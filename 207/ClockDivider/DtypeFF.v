/* DTypeFF.v
* -------------------
* By: Ahmed Adamjee
* Date: 23rd March 2019
*
* Module Description:
* -------------------
* D Type Flip-Flop.
*
* Inputs:
* D
* en
* rst_n
* clk
* Output:
* Q
* Q_n
*
*/

module DtypeFF(

  input clk,
  input en,
  input D,
  input rst_n,
  output reg Q,
  output Q_n
);

  
  always @(posedge clk or negedge rst_n) begin
  
	if(!rst_n) begin
		Q = 1'b0;
		end else if(en) begin
			Q<=D;
		end
			
	end
	
	assign Q_n = ~Q;
	
endmodule 