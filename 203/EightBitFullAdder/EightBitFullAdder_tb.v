
`timescale 1 ns/100 ps

module EightBitFullAdder_tb;

  //Inputs are created as registers
  reg [7:0] a;
  reg [7:0] b;
  
  //Outputs are created as wires
  wire [7:0] sum;
  wire c_out;
  
  //Instantiate device under test
  EightBitFullAdder dut(

  a,
  b,
  sum,
  c_out
);
  integer i;
  
  //Create Stimulus
  initial begin
  
	 
	 for (i = 0; i < 65536; i = i + 1) begin
	 
	 {b,a} = i;
	 
	 #10;
	 
	 end
	 
	 
	 $stop; //stop the simulation
  
  end
  
 endmodule
	 