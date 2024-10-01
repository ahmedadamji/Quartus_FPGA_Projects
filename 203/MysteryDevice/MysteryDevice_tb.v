
`timescale 1 ns/100 ps

module MysteryDevice_tb;

  //Inputs are created as registers
  reg a;
  reg b;
  reg c;
  reg d;
  reg e;
  reg f;
  
  //Outputs are created as wires
  wire x;
  
  //Instantiate device under test
  MysteryDevice dut(

  a,
  b,
  c,
  d,
  e,
  f,
  x
);
  integer i;
  
  //Create Stimulus
  initial begin
  
	 
	 for (i = 0; i < 64; i = i + 1) begin
	 
	 {a,b,c,d,e,f} = i;
	 
	 #10;
	 
	 end
	 
	 
	 $stop; //stop the simulation
  
  end
  
 endmodule
	 