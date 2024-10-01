/* EightBitFullAdder.v
* -------------------
* By: Ahmed Adamjee
* Date: 3rd February 2019
*
* Module Description:
* -------------------
* A eight bit full adder module
*
* Inputs:
* a [7:0]- The first number to be added
* b [7:0]- The second number to be added
*
* Outputs:
* sum [7:0]- The sum of two input values and carry in
* c_out - Carry out
*
*/

module EightBitFullAdder(

  input [7:0] a,
  input [7:0] b,
  output [7:0] sum,
  output c_out

);

  wire [6:0] w1;
  
  HalfAdder adder1(
  a[0],
  b[0],
  sum[0],
  w1[0]
  
  );
  
  OneBitFullAdder adder2(
  a[1],
  b[1],
  w1[0],
  sum[1],
  w1[1]
  
  );
  
  OneBitFullAdder adder3(
  a[2],
  b[2],
  w1[1],
  sum[2],
  w1[2]
  
  );
  
  OneBitFullAdder adder4(
  a[3],
  b[3],
  w1[2],
  sum[3],
  w1[3]
  
  );
  
  OneBitFullAdder adder5(
  a[4],
  b[4],
  w1[3],
  sum[4],
  w1[4]
  
  );
  
  OneBitFullAdder adder6(
  a[5],
  b[5],
  w1[4],
  sum[5],
  w1[5]
  
  );
  
  OneBitFullAdder adder7(
  a[6],
  b[6],
  w1[5],
  sum[6],
  w1[6]
  
  );
  
  OneBitFullAdder adder8(
  a[7],
  b[7],
  w1[6],
  sum[7],
  c_out
  
  );


  
endmodule