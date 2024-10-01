/* Task1.v
* -------------------
* By: Ahmed Adamjee
* Date: 18th March 2019
*
* Module Description:
* -------------------
* Task 1.
*
* Inputs:
* A MSB
* B
* C
* D LSB
* Outputs:
* BCD
*
*/

module Task1(

  input A,  //LSB
  input B,
  input C,
  input D,  //MSB
  output [7:0] BCD
);

  
  assign BCD[0] = D;
  assign BCD[1] = ((~A)&C)|(A&B&(~C));
  assign BCD[2] = ((~A)&B)|(B&C);
  assign BCD[3] = A&(~B)&(~C);
  assign BCD[4] = (A&B)|(A&C);
  assign BCD[5] = 1'b0;
  assign BCD[6] = 1'b0;
  assign BCD[7] = 1'b0;
  
endmodule 