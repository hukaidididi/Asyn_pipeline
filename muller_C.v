module muller_C(a,b,rst,z);
  input a;
  input b;
  input rst;
  output reg z;
  always@(*)
  begin
    if(!rst)
      z<=0;
    else
      z<=(a^b)?z:a; 
  end
endmodule