`timescale 1ns/100ps

module ClockDivider_tb;

  reg clk;
  reg [3:0] n;
  reg en;
  wire clkout;

  
  always begin
	  #40;
	  clk<=~clk;
  end
  
  initial begin
		clk<=1'b0;
		en<=1'b1;
		n<=4'b1010;
		#4000;
		$stop;
	end
	
ClockDivider dut(

  clk,
  n,
  en,
  //rst_n,
  clkout
  
);

  
  
endmodule 