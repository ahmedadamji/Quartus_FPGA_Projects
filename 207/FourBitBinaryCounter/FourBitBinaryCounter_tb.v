/* FourBirBinaryCounter_tb.v
* -------------------
* By: Ahmed Adamjee
* Date: 23rd March 2019
*
* Module Description:
* -------------------
* Four Bit Binary Counter's test bench.
*
* Inputs:
* J
* K
* clk
* Outputs:
* [3:0] count
*
*/

`timescale 1ns/100ps

module FourBitBinaryCounter_tb;

  reg clk;
  reg en;
  reg rst_n;
  reg J;
  reg K;
  wire [3:0] count;

  
  always begin
	  #40;
	  clk<=~clk;
  end
  
  initial begin
		clk<=1'b0;
		en<=1'b1;
		rst_n<=1'b0;
		#40;
		rst_n<=1'b1;
		J<=1'b1;
		K<=1'b1;
		#1240;
		$stop;
	end
	
FourBitBinaryCounter dut(
	clk,
	en,
	rst_n,
	J,
	K,
	count
);
  
  
endmodule 