module ClktoSsgd(

  input clk,
  input [1:0] n,
  input rst_n,
  output [13:0] num
  
);

wire clkout;
wire [3:0] count;

ClockDivider a(

  .clk(clk),
  .n(n),
  .rst_n(rst_n),
  .clkout(clkout)
  
);

FourBitBinaryCounter b(

  .clk(clkout),
  .en(1'b1),
  .rst_n(rst_n),
  .J(1'b1),
  .K(1'b1),
  .count(count)
  
);
Task3 c(

  .B3(count[0]),
  .B2(count[1]),
  .B1(count[2]),
  .B0(count[3]),
  .num(num)
);
endmodule 