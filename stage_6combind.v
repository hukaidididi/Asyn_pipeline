module stage_6combind(req_in,ack_in,data_in,rst,req_out,ack_out,data_out);
  input req_in;
  input ack_in;
  input [2:0] data_in;
  input rst;
  output req_out;
  output ack_out;
  output [2:0] data_out;
  wire req_in_wire,ack_in_wire,req_out_wire,ack_out_wire;
  wire [2:0] data_in_wire,data_out_wire;
  
  stage_3combind a1(
    .req_in(req_in),
    .ack_in(ack_out_wire),
    .data_in(data_in),
    .rst(rst),
    .req_out(req_in_wire),
    .ack_out(ack_out),
    .data_out(data_in_wire)
  );
  
  stall_3_1 s31(
    .temp_req_in(req_in_wire),
    .temp_ack_in(ack_in_wire),
    .temp_data_in(data_in_wire),
    .temp_req_out(req_out_wire),
    .temp_ack_out(ack_out_wire),
    .temp_data_out(data_out_wire)
  );
  
  stage_3combind a2(
    .req_in(req_out_wire),
    .ack_in(ack_in),
    .data_in(data_out_wire),
    .rst(rst),
    .req_out(req_out),
    .ack_out(ack_in_wire),
    .data_out(data_out)
  );
endmodule

