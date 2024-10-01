/* FourBirBinaryCounter.v
* -------------------
* By: Ahmed Adamjee
* Date: 23rd March 2019
*
* Module Description:
* -------------------
* Four Bit Binary Counter.
*
* Inputs:
* J
* K
* clk
* Outputs:
* [3:0] count
*
*/

module FourBitBinaryCounter(

  input clk,
  input en,
  input rst_n,
  input J,
  input K,
  output [3:0] count
  
);

  
  wire and1;
  wire and2;
  wire Q0;
  wire Q1;
  wire Q2;
  wire Q3;
  
  
  JKTypeFF a(
  .clk(clk),
  .en(en),
  .rst_n(rst_n),
  .J(J),
  .K(K),
  .Q(Q0)
  );
  
  JKTypeFF b(
  .clk(clk),
  .en(en),
  .rst_n(rst_n),
  .J(Q0),
  .K(Q0),
  .Q(Q1)
  );
  
  assign and1 = (Q1&Q0);
  
  JKTypeFF c(
  .clk(clk),
  .en(en),
  .rst_n(rst_n),
  .J(and1),
  .K(and1),
  .Q(Q2)
  );
  
  assign and2 = (and1&Q2);
  
  JKTypeFF d(
  .clk(clk),
  .en(en),
  .rst_n(rst_n),
  .J(and2),
  .K(and2),
  .Q(Q3)
  );
  
  assign count[0] = Q0;
  assign count[1] = Q1;
  assign count[2] = Q2;
  assign count[3] = Q3;
  
endmodule 