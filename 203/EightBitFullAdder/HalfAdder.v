/* HalfAdder.v
* -------------------
* By: Ahmed Adamjee
* Date: 3rd February 2019
*
* Module Description:
* -------------------
* A half adder module
*
* Inputs:
* a - The first number to be added
* b - The second number to be added
*
* Outputs:
* sum - The sum of two input values
* c_out - Carry out
*
*/

module HalfAdder(

  input A,
  input B,
  output sum,
  output c_out

);

  //sum
  xor(sum, A, B);
  
  //carry
  and(c_out, A, B);


  
endmodule