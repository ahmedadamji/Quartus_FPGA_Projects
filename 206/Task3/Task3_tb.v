`timescale 10 ns/100 ps

module Task3_tb;

  reg B3;
  reg B2;
  reg B1;
  reg B0;
  wire [13:0] num;

	// Instantiate Device under test
	Task3 dut(
	B3,
	B2,
	B1,
	B0,
	num
);
	
	integer i;
	
	// Create Stimulus
	initial begin
		for (i=0; i < 16; i = i + 1) // test 16 different times
		begin
		
			// set A to random unsigned four bit values
			{B3,B2,B1,B0} = i;
			
			#10;
			
			
		end
		
		$stop; //stop the simulation
		
	end

endmodule 