`timescale 10 ns/100 ps

module Task1_tb;

	reg D;
	reg C;
	reg B;
	reg A;
	
   wire [7:0] BCD;

	// Instantiate Device under test
	Task1 dut(
	D,
	C,
	B,
	A,
	BCD
);
	
	integer i;
	
	// Create Stimulus
	initial begin
		for (i=0; i < 16; i = i + 1) // test 16 different times
		begin
		
			// set A to random unsigned four bit values
			{A,B,C,D} = i;
			
			#10;
			
			
		end		
		$stop; //stop the simulation
		
	end

endmodule 