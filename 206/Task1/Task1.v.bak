/* Task1.v
* -------------------
* By: Ahmed Adamjee
* Date: 11th March 2019
*
* Module Description:
* -------------------
* Task 1.
*
* Inputs:
* SW0
* SW1
* SW2
* SW3
* SW4
* SW5
* SW6
* SW7
*
* Outputs:
* LEDR0
* LEDR1
* LEDR2
* LEDR3
*
*/

module Task1(

  input SW0,
  input SW1,
  input SW2,
  input SW3,
  input SW4,
  input SW5,
  input SW6,
  input SW7,
  output LEDR0,
  output LEDR1,
  output LEDR2,
  output LEDR3
);

  
  and(LEDR0, SW0, SW1);
  or(LEDR1, SW2, SW3);
  xor(LEDR2, SW4, SW5);
  nand(LEDR3, SW6, SW7);
  
  
endmodule