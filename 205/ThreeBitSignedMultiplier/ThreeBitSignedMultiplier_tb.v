`timescale 10 ns/100 ps

module ThreeBitSignedMultiplier_tb;

	// Inputs are created as registers
	reg signed [2:0] a;
	reg signed [2:0] b;
	
	// Outputs are created as wires 
	wire signed [5:0] d;

	// Instantiate Device under test
	ThreeBitSignedMultiplier dut(
	  a,
	  b,
	  
     d
	  
	);
	
	integer i;
	integer expected_result;
	integer actual_result;
	
	// Create Stimulus
	initial begin
	
		expected_result = 1'b0;
	   actual_result = 1'b0;
		for (i=0; i < 20; i = i + 1) // test 20 different times
		begin
		
			// set a and b to random unsigned eight bit values
			a = $random()%4;
			b = $random()%4;
			
			#10;
			
			expected_result = a * b;
			actual_result = d;
			
			if(!(expected_result == actual_result))
			begin
					$display("%d x %d = %d.",a,b,d);
		
			end
		end
		
		$stop; //stop the simulation
		
	end

endmodule
