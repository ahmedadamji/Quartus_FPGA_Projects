

module ThreeBitSignedMultiplier(
    
	 input [2:0] a,
	 input [2:0] b,
	 
	 output [5:0] d
	 
);

	wire [4:0] c1;
	wire [4:0] c2;
	wire [4:0] c3;
	wire [4:0] c4;
	wire [4:0] c5;
	wire [4:0] r1;
	wire [4:0] r2;
	wire [4:0] r3;
	wire [4:0] r4;
	wire [4:0] r5;
	//C0

	and(d[0],a[0],b[0]);

	//C1

	and(c1[0],a[1],b[0]);

	ArrayCell cell1(
		.andout(c1[0]),
		.a(a[0]),
		.b(b[1]),
		.c_in(1'b0),
		.sum(d[1]),
		.c_out(r1[0])
	);
	
	//C2

	and(c2[0],a[2],b[0]);

	ArrayCell cell2(
		.andout(c2[0]),
		.a(a[1]),
		.b(b[1]),
		.c_in(r1[0]),
		.sum(c2[1]),
		.c_out(r1[1])
	);
	
	ArrayCell cell3(
		.andout(c2[1]),
		.a(a[0]),
		.b(b[2]),
		.c_in(1'b0),
		.sum(d[2]),
		.c_out(r2[0])
	);
	
	//C3

	and(c3[0],a[2],b[0]);

	ArrayCell cell4(
		.andout(c3[0]),
		.a(a[2]),
		.b(b[1]),
		.c_in(r1[1]),
		.sum(c3[1]),
		.c_out(r1[2])
	);
	
	ArrayCell cell5(
		.andout(c3[1]),
		.a(a[1]),
		.b(b[2]),
		.c_in(r2[0]),
		.sum(c3[2]),
		.c_out(r2[1])
	);
	
	ArrayCell cell6(
		.andout(c3[2]),
		.a(a[0]),
		.b(b[2]),
		.c_in(1'b0),
		.sum(d[3]),
		.c_out(r3[0])
	);
	
	//C4

	and(c4[0],a[2],b[0]);

	ArrayCell cell7(
		.andout(c4[0]),
		.a(a[2]),
		.b(b[1]),
		.c_in(r1[2]),
		.sum(c4[1]),
		.c_out(r1[3])
	);
	
	ArrayCell cell8(
		.andout(c4[1]),
		.a(a[2]),
		.b(b[2]),
		.c_in(r2[1]),
		.sum(c4[2]),
		.c_out(r2[2])
	);
	
	ArrayCell cell9(
		.andout(c4[2]),
		.a(a[1]),
		.b(b[2]),
		.c_in(r3[0]),
		.sum(c4[3]),
		.c_out(r3[1])
	);
	
	ArrayCell cell10(
		.andout(c4[3]),
		.a(a[0]),
		.b(b[2]),
		.c_in(1'b0),
		.sum(d[4]),
		.c_out(r4[0])
	);
	
	
	//C5

	and(c5[0],a[2],b[0]);

	ArrayCell cell11(
		.andout(c5[0]),
		.a(a[2]),
		.b(b[1]),
		.c_in(r1[3]),
		.sum(c5[1]),
		.c_out(r1[4])
	);
	
	ArrayCell cell12(
		.andout(c5[1]),
		.a(a[2]),
		.b(b[2]),
		.c_in(r2[2]),
		.sum(c5[2]),
		.c_out(r2[3])
	);
	
	ArrayCell cell13(
		.andout(c5[2]),
		.a(a[2]),
		.b(b[2]),
		.c_in(r3[1]),
		.sum(c5[3]),
		.c_out(r3[2])
	);
	
	ArrayCell cell14(
		.andout(c5[3]),
		.a(a[1]),
		.b(b[2]),
		.c_in(r4[0]),
		.sum(c5[4]),
		.c_out(r4[1])
	);
	
	ArrayCell cell15(
		.andout(c5[4]),
		.a(a[0]),
		.b(b[2]),
		.c_in(1'b0),
		.sum(d[5]),
		.c_out(r5[0])
	);
	
	endmodule 