module cp_latch_tb;
  reg c,p;
  reg [2:0] data_in;
  wire [2:0] data_out;
  reg rst;
  
  initial begin
    rst=0;
    #10;
    rst=1;
    c=0;
    p=0;
    data_in=1;
    #10;
    c=1;
    p=0;
    data_in=2;
    #10;
    c=0;
    p=1;
    data_in=3;
    #10;
    c=1;
    p=1;
    data_in=4;
  end
  cp_latch cl(
    .c(c),
    .p(p),
    .rst(rst),
    .data_in(data_in),
    .data_out(data_out)
  );
endmodule
