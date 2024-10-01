module Mux_tb;
reg a;
reg b;
reg s;
wire y;

Mux dut(
.a(a),
.b(b),
.s(s),
.y(y)
);

integer i;
initial begin

for(i=0;i<8;i=i+1)
begin
  {s,a,b} = i;
  #10;
  
  end
  $STOP;
 end
 
 endmodule
  