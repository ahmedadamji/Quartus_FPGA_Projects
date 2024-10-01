/* EightBitUnsignedArrayMultiplier.v
* -------------------
* By: Ahmed Adamjee
* Date: 16th February 2019
*
* Module Description:
* -------------------
* An Eight Bit Array Multiplier for unsigned integers.
*
* Inputs:
* multiplicand [7:0]- The first number to be multiplied
* multiplier [7:0]- The second number to be multiplied
* c_in - Carry In
*
* Outputs:
* mul [7:0]- The result of multiplicand * multiplier
*
*/

module EightBitUnsignedArrayMultiplier(

  input [7:0] multiplicand,
  input [7:0] multiplier,
  input c_in,
  output [15:0] mul

);

  
  wire [7:0] c1;
  wire [7:0] c2;
  wire [7:0] c3;
  wire [7:0] c4;
  wire [7:0] c5;
  wire [7:0] c6;
  wire [7:0] c7;
  wire [7:0] c8;
  wire [7:0] c9;
  wire [7:0] c10;
  wire [7:0] c11;
  wire [7:0] c12;
  wire [7:0] c13;
  wire [7:0] c14;
  wire [7:0] r1;
  wire [7:0] r2;
  wire [7:0] r3;
  wire [7:0] r4;
  wire [7:0] r5;
  wire [7:0] r6;
  wire [7:0] r7;
  
  and(mul[0], multiplier[0], multiplicand[0]);
  
  and(c1[0], multiplier[0], multiplicand[1]);
  
  ArrayCell cell1(
  c1[0],
  multiplicand[0],
  multiplier[1],
  1'b0,
  mul[1],
  r1[0]
  
  );
  
  and(c2[0], multiplier[0], multiplicand[2]);
  
  ArrayCell cell2(
  c2[0],
  multiplicand[1],
  multiplier[1],
  r1[0],
  c2[1],
  r1[1]
  
  );
  
  ArrayCell cell3(
  c2[1],
  multiplicand[0],
  multiplier[2],
  1'b0,
  mul[2],
  r2[0]
  
  );
  
  and(c3[0], multiplier[0], multiplicand[3]);
  
  ArrayCell cell4(
  c3[0],
  multiplicand[2],
  multiplier[1],
  r1[1],
  c3[1],
  r1[2]
  
  );
  
  ArrayCell cell5(
  c3[1],
  multiplicand[1],
  multiplier[2],
  r2[0],
  c3[2],
  r2[1]
  
  );
  
  ArrayCell cell6(
  c3[2],
  multiplicand[0],
  multiplier[3],
  1'b0,
  mul[3],
  r3[0]
  
  );
  
  and(c4[0], multiplier[0], multiplicand[4]);
  
  ArrayCell cell7(
  c4[0],
  multiplicand[3],
  multiplier[1],
  r1[2],
  c4[1],
  r1[3]
  
  );
  
  ArrayCell cell8(
  c4[1],
  multiplicand[2],
  multiplier[2],
  r2[1],
  c4[2],
  r2[2]
  
  );
  
  ArrayCell cell9(
  c4[2],
  multiplicand[1],
  multiplier[3],
  r3[0],
  c4[3],
  r3[1]
  
  );
  
  ArrayCell cell10(
  c4[3],
  multiplicand[0],
  multiplier[4],
  1'b0,
  mul[4],
  r4[0]
  
  );
  
  and(c5[0], multiplier[0], multiplicand[5]);
  
  ArrayCell cell11(
  c5[0],
  multiplicand[4],
  multiplier[1],
  r1[3],
  c5[1],
  r1[4]
  
  );
  
  ArrayCell cell12(
  c5[1],
  multiplicand[3],
  multiplier[2],
  r2[2],
  c5[2],
  r2[3]
  
  );
  
  ArrayCell cell13(
  c5[2],
  multiplicand[2],
  multiplier[3],
  r3[1],
  c5[3],
  r3[2]
  
  );
  
  ArrayCell cell14(
  c5[3],
  multiplicand[1],
  multiplier[4],
  r4[0],
  c5[4],
  r4[1]
  
  );
  
  ArrayCell cell15(
  c5[4],
  multiplicand[0],
  multiplier[5],
  1'b0,
  mul[5],
  r5[0]
  
  );
  
  and(c6[0], multiplier[0], multiplicand[6]);
  
  ArrayCell cell16(
  c6[0],
  multiplicand[5],
  multiplier[1],
  r1[4],
  c6[1],
  r1[5]
  
  );
  
  ArrayCell cell17(
  c6[1],
  multiplicand[4],
  multiplier[2],
  r2[3],
  c6[2],
  r2[4]
  
  );
  
  ArrayCell cell18(
  c6[2],
  multiplicand[3],
  multiplier[3],
  r3[2],
  c6[3],
  r3[3]
  
  );
  
  ArrayCell cell19(
  c6[3],
  multiplicand[2],
  multiplier[4],
  r4[1],
  c6[4],
  r4[2]
  
  );
  
  ArrayCell cell20(
  c6[4],
  multiplicand[1],
  multiplier[5],
  r5[0],
  c6[5],
  r5[1]
  
  );
  
  ArrayCell cell21(
  c6[5],
  multiplicand[0],
  multiplier[6],
  1'b0,
  mul[6],
  r6[0]
  
  );
  
  and(c7[0], multiplier[0], multiplicand[7]);
  
  ArrayCell cell22(
  c7[0],
  multiplicand[6],
  multiplier[1],
  r1[5],
  c7[1],
  r1[6]
  
  );
  
  ArrayCell cell23(
  c7[1],
  multiplicand[5],
  multiplier[2],
  r2[4],
  c7[2],
  r2[5]
  
  );
  
  ArrayCell cell24(
  c7[2],
  multiplicand[4],
  multiplier[3],
  r3[3],
  c7[3],
  r3[4]
  
  );
  
  ArrayCell cell25(
  c7[3],
  multiplicand[3],
  multiplier[4],
  r4[2],
  c7[4],
  r4[3]
  
  );
  
  ArrayCell cell26(
  c7[4],
  multiplicand[2],
  multiplier[5],
  r5[1],
  c7[5],
  r5[2]
  
  );
  
  ArrayCell cell27(
  c7[5],
  multiplicand[1],
  multiplier[6],
  r6[0],
  c7[6],
  r6[1]
  
  );
  
  ArrayCell cell28(
  c7[6],
  multiplicand[0],
  multiplier[7],
  1'b0,
  mul[7],
  r7[0]
  
  );
  
  // Column 8
  
  ArrayCell cell29(
  1'b0,
  multiplicand[7],
  multiplier[1],
  r1[6],
  c8[0],
  r1[7]
  
  );
  
  ArrayCell cell30(
  c8[0],
  multiplicand[6],
  multiplier[2],
  r2[5],
  c8[1],
  r2[6]
  
  );
  
  ArrayCell cell31(
  c8[1],
  multiplicand[5],
  multiplier[3],
  r3[4],
  c8[2],
  r3[5]
  
  );
  
  ArrayCell cell32(
  c8[2],
  multiplicand[4],
  multiplier[4],
  r4[3],
  c8[3],
  r4[4]
  
  );
  
  ArrayCell cell33(
  c8[3],
  multiplicand[3],
  multiplier[5],
  r5[2],
  c8[4],
  r5[3]
  
  );
  
  ArrayCell cell34(
  c8[4],
  multiplicand[2],
  multiplier[6],
  r6[1],
  c8[5],
  r6[2]
  
  );
  
  ArrayCell cell35(
  c8[5],
  multiplicand[1],
  multiplier[7],
  r7[0],
  mul[8],
  r7[1]
  
  );
  
  // Column 9
  
  ArrayCell cell36(
  r1[7],
  multiplicand[7],
  multiplier[2],
  r2[6],
  c9[0],
  r2[7]
  
  );
  
  ArrayCell cell37(
  c9[0],
  multiplicand[6],
  multiplier[3],
  r3[5],
  c9[1],
  r3[6]
  
  );
  
  ArrayCell cell38(
  c9[1],
  multiplicand[5],
  multiplier[4],
  r4[4],
  c9[2],
  r4[5]
  
  );
  
  ArrayCell cell39(
  c9[2],
  multiplicand[4],
  multiplier[5],
  r5[3],
  c9[3],
  r5[4]
  
  );
  
  ArrayCell cell40(
  c9[3],
  multiplicand[3],
  multiplier[6],
  r6[2],
  c9[4],
  r6[3]
  
  );
  
  ArrayCell cell41(
  c9[4],
  multiplicand[2],
  multiplier[7],
  r7[1],
  mul[9],
  r7[2]
  
  );
  
  //Column 10
  
  ArrayCell cell42(
  r2[7],
  multiplicand[7],
  multiplier[3],
  r3[6],
  c10[0],
  r3[7]
  
  );
  
  ArrayCell cell43(
  c10[0],
  multiplicand[6],
  multiplier[4],
  r4[5],
  c10[1],
  r4[6]
  
  );
  
  ArrayCell cell44(
  c10[1],
  multiplicand[5],
  multiplier[5],
  r5[4],
  c10[2],
  r5[5]
  
  );
  
  ArrayCell cell45(
  c10[2],
  multiplicand[4],
  multiplier[6],
  r6[3],
  c10[3],
  r6[4]
  
  );
  
  ArrayCell cell46(
  c10[3],
  multiplicand[3],
  multiplier[7],
  r7[2],
  mul[10],
  r7[3]
  
  );
  
  // Column 11
  
  ArrayCell cell47(
  r3[7],
  multiplicand[7],
  multiplier[4],
  r4[6],
  c11[0],
  r4[7]
  
  );
  
  ArrayCell cell48(
  c11[0],
  multiplicand[6],
  multiplier[5],
  r5[5],
  c11[1],
  r5[6]
  
  );
  
  ArrayCell cell49(
  c11[1],
  multiplicand[5],
  multiplier[6],
  r6[4],
  c11[2],
  r6[5]
  
  );
  
  ArrayCell cell50(
  c11[2],
  multiplicand[4],
  multiplier[7],
  r7[3],
  mul[11],
  r7[4]
  
  );
  
  // Column 12
  
  ArrayCell cell51(
  r4[7],
  multiplicand[7],
  multiplier[5],
  r5[6],
  c12[0],
  r5[7]
  
  );
  
  ArrayCell cell52(
  c12[0],
  multiplicand[6],
  multiplier[6],
  r6[5],
  c12[1],
  r6[6]
  
  );
  
  ArrayCell cell53(
  c12[1],
  multiplicand[5],
  multiplier[7],
  r7[4],
  mul[12],
  r7[5]
  
  );
  
  // Column 13
  
  ArrayCell cell54(
  r5[7],
  multiplicand[7],
  multiplier[6],
  r6[6],
  c13[0],
  r6[7]
  
  );
  
  ArrayCell cell55(
  c13[0],
  multiplicand[6],
  multiplier[7],
  r7[5],
  mul[13],
  r7[6]
  
  );
  
  // Column 14
  
  ArrayCell cell56(
  r6[7],
  multiplicand[7],
  multiplier[7],
  r7[6],
  mul[14],
  mul[15]
  
  );

  
endmodule