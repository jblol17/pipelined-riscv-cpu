module RS1_Data_Execute_Mux (input logic [31:0] rs1_data_ex, input logic [31:0] data_to_write, input logic [31:0] address_to_write_into,
output logic [31:0] src_AE
);