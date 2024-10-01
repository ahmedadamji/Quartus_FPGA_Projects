/* Cm.v
* -------------------
* By: Ahmed Adamjee
* Date: 3rd February 2019
*
* Module Description:
* -------------------
* A module for practice
*
* Inputs:
* a
* b
* c
*
* Outputs:
* out
*
*/

module Cm(

  input A,
  input B,
  input C,
  output out

);

  wire w1;
  wire w2;
  wire w3;
  wire A_n;
  wire B_n;
  wire C_n;
  
  not(A_n, A);
  not(B_n, B);
  not(C_n, C);
  
  nand(w1, A_n, B_n);
  
  and(w2, A, B, C);
  
  and(w3, A, C_n, w1);
  
  or(out, w2, w3);


  
endmodule