module Mux(
input a,
input b,
input s,
output y
);

wire w1;
wire w2;
wire s_n;

not(s_n,s);
and(w1,s_n,a);
and(w2,s,b);
or(y,w1,w2);

endmodule 