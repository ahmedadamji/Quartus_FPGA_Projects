`timescale 1ns/10ps

module DTypeFF4Bit_tb;
reg [3:0] D;
reg en;
reg clk;
reg rst_n;
wire [3:0] Q;

always begin
#10;
clk = ~clk;
end

initial begin
clk = 1'b0;
rst_n = 1'b0;
en = 1'b1;
#20;
rst_n = 1'b1;
D = 4'b1101;
#20;
D = 4'b1111;
#20;
D = 4'b0010;
$stop;
end

DTypeFF4Bit dut(
.D(D),
.en(en),
.clk(clk),
.rst_n(rst_n),
.Q(Q)
);

endmodule 