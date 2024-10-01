module Comparator(

		input [3:0] n,
		input [3:0] a,
		output c
		
	);

	assign c  = (n&&a);
endmodule