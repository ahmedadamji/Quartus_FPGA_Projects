
`timescale 1 ns/100 ps

module OneBitFullAdder_tb;

  //Inputs are created as registers
  reg a;
  reg b;
  reg c_in;
  
  //Outputs are created as wires
  wire sum;
  wire c_out;
  
  //Instantiate device under test
  OneBitFullAdder dut(

  a,
  b,
  c_in,
  sum,
  c_out
);
  integer i;
  
  //Create Stimulus
  initial begin
  
    c_in = 1'b0;
	 
	 for (i = 0; i < 4; i = i + 1) begin
	 
	 {b,a} = i;
	 
	 #10;
	 
	 end
	 
	 $stop; //stop the simulation
  
  end
  
 endmodule
	 