module DMux(
input d,
input s,
output y0,
output y1
);

wire s_n;

not(s_n,s);
and(y0,s_n,d);
and(y1,s,d);

endmodule 