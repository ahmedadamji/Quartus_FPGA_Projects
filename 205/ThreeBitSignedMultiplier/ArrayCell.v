/* ArrayCell.v
* -------------------
* By: Ahmed Adamjee
* Date: 16th February 2019
*
* Module Description:
* -------------------
* A Array Cell to aid the Multiplication in the latter Hierarchy.
*
* Inputs:
* andout
* a
* b
* c_in - Carry In
*
* Outputs:
* sum - The sum of two input values and carry in
* c_out - Carry out
*
*/

module ArrayCell(

  input andout,
  input a,
  input b,
  input c_in,
  output sum,
  output c_out

);

  
  and(ab, b, a);
  
  OneBitFullAdder adder1(
  andout,
  ab,
  c_in,
  sum,
  c_out
  
  );
 

  
endmodule