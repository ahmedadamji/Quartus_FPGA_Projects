
`timescale 1 ns/100 ps

module FourBitFullAdder_tb;

  //Inputs are created as registers
  reg [3:0] a;
  reg [3:0] b;
  reg c_in;
  
  //Outputs are created as wires
  wire [3:0] sum;
  wire c_out;
  
  //Instantiate device under test
  FourBitFullAdder dut(

  a,
  b,
  c_in,
  sum,
  c_out
);
  integer i;
  integer expected;
  integer actual;
  
  //Create Stimulus
  initial begin
  
    $display("Testing C_IN = 0");
	 
	 c_in = 1'b0;
	 
	 for (i = 0; i < 256; i = i + 1) begin
	 
	 {b,a} = i;
	 
	 #10;
	 
	 expected = a+b+c_in;
	 actual = {c_out,sum};
	 
	 $display("Expected = %d Actual = %d",expected,actual);
	 
	 end
	 
	 $display("Testing C_IN = 1");
	 
	 c_in = 1'b1;
	 
	 for (i = 0; i < 256; i = i + 1) begin
	 
	 {b,a} = i;
	 
	 #10;
	 
	 expected = a+b+c_in;
	 actual = {c_out,sum};
	 
	 $display("Expected = %d Actual = %d",expected,actual);
	 
	 end
	 
	 $stop; //stop the simulation
  
  end
  
 endmodule
	 