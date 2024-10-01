module XnorGate  (
	A,
	B,
	Out
);

	input A;
	input B;
	
	output Out;
	
	xnor(Out, A, B);
	



endmodule