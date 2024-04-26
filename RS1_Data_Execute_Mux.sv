module RS1_Data_Execute_Mux (input logic [31:0] rs1_data_ex, input logic [31:0] data_to_write, input logic [31:0] address_to_write_into,
output logic [31:0] src_AE
);

// TODO: I think this module is not needed anymore to be honest. Here would be the logic that is in the 'rs1_forward' and 'rs2_forward' modules lmao. 
always_comb begin
    
end