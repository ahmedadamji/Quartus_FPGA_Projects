`timescale 1ns/10ps

module Register_tb;
reg [3:0] in;
reg load;
reg en;
reg clk;
reg rst_n;
wire [3:0] out;

always begin
#10;
clk <= ~clk;
end

initial begin
clk <= 1'b0;
rst_n <= 1'b0;
en <= 1'b1;
in <= 4'b0000;
load <= 1'b1;
#20;
rst_n <= 1'b1;
load <= 1'b0;
in <= 4'b1111;
#80;
in <= 4'b1001;
load <= 1'b1;
#50;
$stop;
end

Register dut(
.in(in),
.load(load),
.en(en),
.clk(clk),
.rst_n(rst_n),
.out(out)
);

endmodule 