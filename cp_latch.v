module cp_latch(c,p,rst,data_in,data_out);
  input c;
  input p;
  input rst;
  input [2:0] data_in;
  output reg [2:0] data_out;
  
  always@(*)
  begin 
    if(!rst)
      data_out<=3'b000;
    else
      data_out<=(c^p)?data_out:data_in;
  end
endmodule