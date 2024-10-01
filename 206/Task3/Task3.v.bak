/* Task1.v
* -------------------
* By: Ahmed Adamjee
* Date: 18th March 2019
*
* Module Description:
* -------------------
* Task 2
*
* Inputs:
* BCD
*
* Outputs:
* ssgd
*
*/

module Task2(

  input A,
  input B,
  input C,
  input D,
  output [6:0] ssgd
);

  
  assign ssgd[0] = (A)|(B&D)|(C)|(~B&~D);
  assign ssgd[1] = (~B)|(~C&~D)|(C&D);
  assign ssgd[2] = (B)|(~C)|(D);
  assign ssgd[3] = (~B&~D)|(C&~D)|(B&~C&D)|(~B&C)|A;
  assign ssgd[4] = (~B&~D)|(C&~D);
  assign ssgd[5] = (A)|(~C&~D)|(B&~C)|(B&~D);
  assign ssgd[6] = (A)|(B&~C)|(C&~B)|(C&~D);
  
endmodule 