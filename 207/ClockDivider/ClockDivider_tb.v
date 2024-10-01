`timescale 1ns/100ps

module ClockDivider_tb;

  reg clk;
  reg [1:0] n;
  reg rst_n;
  wire clkout;

  
  always begin
	  #40;
	  clk<=~clk;
  end
  
  initial begin
		clk<=1'b0;
		rst_n<=1'b0;
		#80
		rst_n<=1'b1;
		n<=2'b11;
		#4000000000;
		$stop;
	end
	
ClockDivider dut(

  clk,
  n,
  rst_n,
  clkout
  
);

  
  
endmodule 