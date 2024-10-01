/* Task1.v
* -------------------
* By: Ahmed Adamjee
* Date: 18th March 2019
*
* Module Description:
* -------------------
* Task 3
*
* Inputs:
* BCD
*
* Outputs:
* ssgd
*
*/

module Task3(

  input B3,
  input B2,
  input B1,
  input B0,
  output [13:0] num
);

  wire [7:0] BCD;
  wire [6:0] ssgd0;
  wire [6:0] ssgd1;
  
  Task1 bintobcd(
  B3,
  B2,
  B1,
  B0,
  BCD
  );
  
  Task2 bcdtossgd0(
  BCD[3],
  BCD[2],
  BCD[1],
  BCD[0],
  ssgd0
  );
  assign num[6:0] = ~ssgd0;
  
  Task2 bcdtossgd1(
  BCD[7],
  BCD[6],
  BCD[5],
  BCD[4],
  ssgd1
  );
   assign num[13:7] = ~ssgd1;
  
endmodule 