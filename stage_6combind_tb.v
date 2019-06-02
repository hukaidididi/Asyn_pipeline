module stage_6combind_tb;
  reg rst,req_in,ack_in;
  wire req_out,ack_out;
  reg [2:0] data_in;
  wire [2:0] data_out;

  
always @(req_out)
  begin 
    ack_in <= ~ack_in;
  end
  

  initial begin 
    rst=0;
    #10;
    rst=1;
    req_in=0;
    ack_in=0;
    data_in=1;
    #10;
    req_in=0;
    ack_in=1;
    data_in=2;
    #10;
    
req_in=1;
    ack_in=1;
    data_in=3;
    #10;
    req_in=1;
    ack_in=0;
    data_in=4;
    #10;
    req_in=1;
    ack_in=1;
    data_in=5;
    #10;
    req_in=1;
    ack_in=0;
    data_in=6;
    #10;
  end
  stage_6combind sc6(
    .req_in(req_in),
    .ack_in(ack_in),
    .data_in(data_in),
    .rst(rst),
    .req_out(req_out),
    .ack_out(ack_out),
    .data_out(data_out)
  );
endmodule
