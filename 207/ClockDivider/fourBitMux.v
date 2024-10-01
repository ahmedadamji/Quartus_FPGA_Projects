module fourBitMux(
input [3:0] a,
input [1:0] sel,
output x
);

assign x = a[sel];
endmodule 