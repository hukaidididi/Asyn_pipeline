module stage_tb;
  reg rst,req_in,ack_in;
  wire req_out,ack_out;
  reg [2:0] data_in;
  wire [2:0] data_out;
  
  initial begin
    rst=0;
    req_in=1;
    ack_in=0;
    #10;
    rst=1;
    req_in=1;
    ack_in=0;
    data_in=1;
    #100;
  end
  
  stage s(
    .req_in(req_in),
    .ack_in(ack_in),
    .data_in(data_in),
    .rst(rst),
    .req_out(req_out),
    .ack_out(ack_out),
    .data_out(data_out)
  );
  
endmodule
    
  
