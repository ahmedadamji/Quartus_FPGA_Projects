`timescale 10 ns/100 ps

module Task2_tb;

	// Inputs are created as registers
	reg A;
	reg B;
	reg C;
	reg D;
	
	// Outputs are created as wires 
	wire X;
	wire Y;

	// Instantiate Device under test
	Task2 dut(

  A,
  B,
  C,
  D,
  X,
  Y
);
	
	integer i;
	
	// Create Stimulus
	initial begin
	
		for (i=0; i < 16; i = i + 1) // test 20 different times
		begin
		
			// set a and b to random unsigned eight bit values
			{A,B,C,D} = i;
			
			#10;
			
			
		end
		
		$stop; //stop the simulation
		
	end

endmodule
