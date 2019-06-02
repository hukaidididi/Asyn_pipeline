module stall_tb;
  reg temp_req_in,temp_ack_in,temp_data_in;
  wire temp_req_out,temp_ack_out,temp_data_out;
  
  initial begin
    temp_req_in=1;
    temp_ack_in=1;
    
temp_data_in=0;
  
end
  
stall_3_1 ha(

     .temp_req_in(temp_req_in),
    .temp_ack_in(temp_ack_in),
    .temp_data_in(temp_data_in),
    .temp_req_out(temp_req_out),
    .temp_ack_out(temp_ack_out),
    .temp_data_out(temp_data_out)
  
);
  
  

endmodule 
