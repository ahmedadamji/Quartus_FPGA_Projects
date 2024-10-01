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
* [1:0] n
* Outputs:
* clkout
*
*/

module ClockDivider(

  input clk,
  input [1:0] n,
  input rst_n,
  output clkout
  
);

  
  wire [24:0] Q_ntoD;
  wire [3:0] muxin;

  DtypeFF a(
  .clk(clk),
  .en(1'b1),
  .D(Q_ntoD[0]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[0])
  );
  
  DtypeFF b(
  .clk(Q_ntoD[0]),
  .en(1'b1),
  .D(Q_ntoD[1]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[1])
  );
  
  DtypeFF c(
  .clk(Q_ntoD[1]),
  .en(1'b1),
  .D(Q_ntoD[2]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[2])
  );
  
  DtypeFF d(
  .clk(Q_ntoD[2]),
  .en(1'b1),
  .D(Q_ntoD[3]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[3])
  );
  
  DtypeFF e(
  .clk(Q_ntoD[3]),
  .en(1'b1),
  .D(Q_ntoD[4]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[4])
  );
  
  DtypeFF f(
  .clk(Q_ntoD[4]),
  .en(1'b1),
  .D(Q_ntoD[5]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[5])
  );
  
  DtypeFF g(
  .clk(Q_ntoD[5]),
  .en(1'b1),
  .D(Q_ntoD[6]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[6])
  );
  
  DtypeFF h(
  .clk(Q_ntoD[6]),
  .en(1'b1),
  .D(Q_ntoD[7]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[7])
  );
  
  DtypeFF i(
  .clk(Q_ntoD[7]),
  .en(1'b1),
  .D(Q_ntoD[8]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[8])
  );
  
  DtypeFF j(
  .clk(Q_ntoD[8]),
  .en(1'b1),
  .D(Q_ntoD[9]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[9])
  );
  
  DtypeFF k(
  .clk(Q_ntoD[9]),
  .en(1'b1),
  .D(Q_ntoD[10]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[10])
  );
  
  DtypeFF l(
  .clk(Q_ntoD[10]),
  .en(1'b1),
  .D(Q_ntoD[11]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[11])
  );
  
  DtypeFF m(
  .clk(Q_ntoD[11]),
  .en(1'b1),
  .D(Q_ntoD[12]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[12])
  );
  
  DtypeFF nn(
  .clk(Q_ntoD[12]),
  .en(1'b1),
  .D(Q_ntoD[13]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[13])
  );
  
  DtypeFF o(
  .clk(Q_ntoD[13]),
  .en(1'b1),
  .D(Q_ntoD[14]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[14])
  );
  
  DtypeFF p(
  .clk(Q_ntoD[14]),
  .en(1'b1),
  .D(Q_ntoD[15]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[15])
  );
  
  DtypeFF q(
  .clk(Q_ntoD[15]),
  .en(1'b1),
  .D(Q_ntoD[16]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[16])
  );
  
  DtypeFF r(
  .clk(Q_ntoD[16]),
  .en(1'b1),
  .D(Q_ntoD[17]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[17])
  );
  
  DtypeFF s(
  .clk(Q_ntoD[17]),
  .en(1'b1),
  .D(Q_ntoD[18]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[18])
  );
  
  DtypeFF t(
  .clk(Q_ntoD[18]),
  .en(1'b1),
  .D(Q_ntoD[19]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[19])
  );
  
  DtypeFF u(
  .clk(Q_ntoD[19]),
  .en(1'b1),
  .D(Q_ntoD[20]),
  .rst_n(rst_n),
  .Q(),
  .Q_n(Q_ntoD[20])
  );
  
  DtypeFF v(
  .clk(Q_ntoD[20]),
  .en(1'b1),
  .D(Q_ntoD[21]),
  .rst_n(rst_n),
  .Q(muxin[0]),
  .Q_n(Q_ntoD[21])
  );
  
  DtypeFF w(
  .clk(Q_ntoD[21]),
  .en(1'b1),
  .D(Q_ntoD[22]),
  .rst_n(rst_n),
  .Q(muxin[1]),
  .Q_n(Q_ntoD[22])
  );
  
  DtypeFF x(
  .clk(Q_ntoD[22]),
  .en(1'b1),
  .D(Q_ntoD[23]),
  .rst_n(rst_n),
  .Q(muxin[2]),
  .Q_n(Q_ntoD[23])
  );
  
  DtypeFF y(
  .clk(Q_ntoD[23]),
  .en(1'b1),
  .D(Q_ntoD[24]),
  .rst_n(rst_n),
  .Q(muxin[3]),
  .Q_n(Q_ntoD[24])
  );
  
  fourBitMux select(
  .a(muxin),
  .sel(n),
  .x(clkout)
  );
  
  
endmodule 