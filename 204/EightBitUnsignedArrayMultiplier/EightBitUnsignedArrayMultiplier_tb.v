`timescale 1 ns/100 ps

module EightBitUnsignedArrayMultiplier_tb;

	// Inputs are created as registers
	reg [7:0] multiplicand;
	reg [7:0] multiplier;
	reg [7:0] c_in;
	
	// Outputs are created as wires 
	wire [15:0] mul;

	// Instantiate Device under test
	EightBitUnsignedArrayMultiplier dut(
	multiplicand,
	multiplier,
	c_in,
	mul
	);
	
	integer i;
	integer expected_result;
	integer actual_result;
	
	// Create Stimulus
	initial begin
	
		for (i=0; i < 100; i = i + 1) // test 100 different times
		begin
		
			// set a and b to random unsigned eight bit values
			multiplicand = $urandom()%255;
			multiplier = $urandom()%255;
			
			#10;
			
			expected_result = multiplicand * multiplier;
			actual_result = {mul};
			
			if(!(expected_result == actual_result))
			begin
					$display("incorrect result at %d and %d.",multiplicand,multiplier);
		
			end
		end
		
		$stop; //stop the simulation
		
	end

endmodule
