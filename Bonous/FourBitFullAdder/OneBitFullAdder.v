module OneBitFullAdder(
input a,
input b,
input c_in,
output sum,
output c_out
);

assign sum = (a^b^c_in);
assign c_out = (c_in&(a^b))|(a&b);

endmodule 