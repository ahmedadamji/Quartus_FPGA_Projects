module NandGate  (
	A,
	B,
	Out
);

	input A;
	input B;
	
	output Out;
	
	nand(Out, A, B);
	



endmodule