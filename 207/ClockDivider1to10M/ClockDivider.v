/* ClockDivider.v
* -------------------
* By: Ahmed Adamjee
* Date: 25th March 2019
*
* Module Description:
* -------------------
* ClockDivider.
*
* Inputs:
* clkin
* n
* en
* Outputs:
* clkout
*
*/

module ClockDivider(

  input clk,
  input [3:0] n,
  input en,
  output clkout
  
);

  
  wire [3:0] count;
  wire connect;
  
  FourBitBinaryCounter system(
  .clk(clk),
  .en(en),
  .rst_n(connect),
  .count(count)
  );

  Comparator set(
  .n(n),
  .a(count),
  .c(connect)
  );
  
  JKTypeFF minclk(
  .clk(connect),
  .en(en),
  .rst_n(1'b1),
  .J(1'b1),
  .K(1'b1),
  .Q(clkout)
  );
  
  
endmodule 