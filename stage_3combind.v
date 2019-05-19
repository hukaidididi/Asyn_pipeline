module stage_3combind(req_in,ack_in,data_in,rst,req_out,ack_out,data_out);
  input req_in;
  input ack_in;
  input [2:0] data_in;
  input rst;
  output req_out;
  output ack_out;
  output [2:0] data_out;
  wire temp_ack1,temp_req1,temp_ack2,temp_req2;
  wire [2:0] temp_data1,temp_data2;
  
  stage s11(
    .req_in(req_in),
    .ack_in(temp_ack1),
    .data_in(data_in),
    .rst(rst),
    .req_out(temp_req1),
    .ack_out(ack_out),
    .data_out(temp_data1)
  );
  
  
  stage s22(
    .req_in(temp_req1),
    .ack_in(temp_ack2),
    .data_in(temp_data1),
    .rst(rst),
    .req_out(temp_req2),
    .ack_out(temp_ack1),
    .data_out(temp_data2)
  );
  
  stage s33(
    .req_in(temp_req2),
    .ack_in(ack_in),
    .data_in(temp_data2),
    .rst(rst),
    .req_out(req_out),
    .ack_out(temp_ack2),
    .data_out(data_out)
  );
endmodule