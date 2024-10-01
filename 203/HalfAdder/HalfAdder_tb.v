
`timescale 1 ns/100 ps

module HalfAdder_tb;

  //Inputs are created as registers
  reg a;
  reg b;
  
  //Outputs are created as wires
  wire sum;
  wire c_out;
  
  //Instantiate device under test
  HalfAdder dut(

  a,
  b,
  sum,
  c_out
);
  integer i;
  
  //Create Stimulus
  initial begin
  
	 
	 for (i = 0; i < 4; i = i + 1) begin
	 
	 {b,a} = i;
	 
	 #10;
	 
	 end
	 
	 
	 $stop; //stop the simulation
  
  end
  
 endmodule
	 