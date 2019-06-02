module stal 1(temp_req_in,temp_ack_in,temp_data_in,temp_req_out,temp_ack_out,temp_data_out);
  input temp_req_in;
  input [2:0] temp_data_in;
  input temp_ack_in;
  output reg temp_req_out;
  output  reg temp_ack_out;
  output reg [2:0] temp_data_out;
  
  always @(*)
  begin
    #3;
    temp_req_out <= temp_req_in;
    temp_ack_out <= temp_ack_in;
    temp_data_out <= temp_data_in;
    
  end
  
endmodule
  


