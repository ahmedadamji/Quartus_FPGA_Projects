module Mux16(
input [15:0]a,
input [15:0]b,
input s,
output [15:0]y
);

    Mux bit0(
	 .a(a[0]),
    .b(b[0]),
    .s(s),
    .y(y[0])
	 );
	 
	 Mux bit1(
	 .a(a[1]),
    .b(b[1]),
    .s(s),
    .y(y[1])
	 );
	 
	 Mux bit2(
	 .a(a[2]),
    .b(b[2]),
    .s(s),
    .y(y[2])
	 );
	 
	 Mux bit3(
	 .a(a[3]),
    .b(b[3]),
    .s(s),
    .y(y[3])
	 );
	 
	 Mux bit4(
	 .a(a[4]),
    .b(b[4]),
    .s(s),
    .y(y[4])
	 );
	 
	 Mux bit5(
	 .a(a[5]),
    .b(b[5]),
    .s(s),
    .y(y[5])
	 );
	 
	 Mux bit6(
	 .a(a[6]),
    .b(b[6]),
    .s(s),
    .y(y[6])
	 );
	 
	 Mux bit7(
	 .a(a[7]),
    .b(b[7]),
    .s(s),
    .y(y[7])
	 );
	 
	 Mux bit8(
	 .a(a[8]),
    .b(b[8]),
    .s(s),
    .y(y[8])
	 );
	 
	 Mux bit9(
	 .a(a[9]),
    .b(b[9]),
    .s(s),
    .y(y[9])
	 );
	 
	 Mux bit10(
	 .a(a[10]),
    .b(b[10]),
    .s(s),
    .y(y[10])
	 );
	 
	 Mux bit11(
	 .a(a[11]),
    .b(b[11]),
    .s(s),
    .y(y[11])
	 );
	 
	 Mux bit12(
	 .a(a[12]),
    .b(b[12]),
    .s(s),
    .y(y[12])
	 );
	 
	 Mux bit13(
	 .a(a[13]),
    .b(b[13]),
    .s(s),
    .y(y[13])
	 );
	 
	 Mux bit14(
	 .a(a[14]),
    .b(b[14]),
    .s(s),
    .y(y[14])
	 );
	 
	 Mux bit15(
	 .a(a[15]),
    .b(b[15]),
    .s(s),
    .y(y[15])
	 );
	 
	 
endmodule 