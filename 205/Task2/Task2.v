/* Task2.v
* -------------------
* By: Ahmed Adamjee
* Date: 11th March 2019
*
* Module Description:
* -------------------
* Task 2.
*
* Inputs:
* A
* B
* C
* D
*
* Outputs:
* X
* Y
*
*/

module Task2(

  input A,
  input B,
  input C,
  input D,
  output X,
  output Y
);

  wire B_n;
  wire AD;
  wire AD_n;
  wire B_nplsC;
  wire B_nC;
  wire BplsC;
  wire AD_nBplsC;
  
  not(B_n,B);
  or(B_nplsC, B_n, C);
  and(X, A, B_nplsC);
  and(B_nC, B_n, C);
  and(AD, A, D);
  not(AD_n,AD);
  or(BplsC, B, C);
  and(AD_nBplsC, AD_n, BplsC);
  or(Y, B_nC, AD_nBplsC);
  
  
endmodule