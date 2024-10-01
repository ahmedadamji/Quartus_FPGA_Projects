/* Am.v
* -------------------
* By: Ahmed Adamjee
* Date: 3rd February 2019
*
* Module Description:
* -------------------
* A module for na*b + na*nc + nb*nc
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

module Am(

  input A,
  input B,
  input C,
  output out

);

  wire w1;
  wire w2;
  wire C_n;
  
  not(C_n, C);
  
  and(w1, A, B);
  
  and(w2, B, C_n);
  
  nor(out, w1, w2);


  
endmodule