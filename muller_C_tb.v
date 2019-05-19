module muller_C_tb;
  reg a,b,rst;
  wire z;
  initial begin
    rst=0;
    #10;
    rst=1;
    a=0;
    b=0;
    #10;
    a=0;
    b=1;
    #10;
    a=1;
    b=0;
    #10;
    a=1;
    b=1;
    #10;
    a=0;
    b=0;
  end
  muller_C mC(
    .rst(rst),
    .a(a),
    .b(b),
    .z(z)
  );
endmodule
