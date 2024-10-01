`timescale 10 ns/100 ps

module Task2_tb;

	reg A;
	reg B;
	reg C;
	reg D;
	
   wire [6:0] ssgd;

	// Instantiate Device under test
	Task2 dut(
	A,
	B,
	C,
	D,
	ssgd
);
	
	integer i;
	
	// Create Stimulus
	initial begin
		for (i=0; i < 10; i = i + 1) // test 16 different times
		begin
		
			// set A to random unsigned four bit values
			{A,B,C,D} = i;
			
			#10;
			
			
		end
		
		$stop; //stop the simulation
		
	end

endmodule 