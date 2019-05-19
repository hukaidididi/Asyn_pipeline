module stage(req_in,ack_in,data_in,rst,req_out,ack_out,data_out);
  input req_in;
  input ack_in;
  input [2:0] data_in;
  input rst;
  output req_out;
  output ack_out;
  output [2:0] data_out;
  wire z;
  
  muller_C mC(
    .a(req_in),
    .b(~ack_in),
    .rst(rst),
    .z(z)
  );

  assign req_out=z;
  assign ack_out=z;
  
  
  cp_latch cl(
    .c(z),
    .p(ack_in),
    .rst(rst),
    .data_in(data_in),
    .data_out(data_out)
  );
endmodule