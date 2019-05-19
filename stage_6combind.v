module stage_6combind(req_in,ack_in,data_in,rst,req_out,ack_out,data_out);
  input req_in;
  input ack_in;
  input [2:0] data_in;
  input rst;
  output req_out;
  output ack_out;
  output [2:0] data_out;
  wire temp_ack,temp_req;
  wire [2:0] temp_data;
  
  stage_3combind a1(
    .req_in(req_in),
    .ack_in(temp_ack),
    .data_in(data_in),
    .rst(rst),
    .req_out(temp_req),
    .ack_out(ack_out),
    .data_out(temp_data)
  );
  
  stage_3combind a2(
    .req_in(temp_req),
    .ack_in(ack_in),
    .data_in(temp_data),
    .rst(rst),
    .req_out(req_out),
    .ack_out(temp_ack),
    .data_out(data_out)
  );
endmodule
