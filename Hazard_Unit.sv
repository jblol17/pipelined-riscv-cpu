`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2024 17:20:14 PM
// Design Name: 
// Module Name: Hazard_Unit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Hazard_Unit (input logic [4:0] rs1_ex, input logic [4:0] rs2_ex, input logic [4:0] rd_mem,
input logic [0:0] register_write_mem, input logic [4:0] rd_wb, input logic [0:0] register_write_wb,
input logic [0:0] result_src_ex, input logic [4:0] rd_ex, input logic [4:0] rs1_d, input logic [4:0] rs2_d,
input logic [0:0] pc_src_ex,

output logic [4:0] forward_ae, output logic [4:0] forward_be,
output logic [0:0] stall_fetch, output logic [0:0] stall_decode, output logic [0:0] flush_execute, 
);

//* This is what should be in the hazard module kind of
always_ff @(*) begin
    // Check for forward-solved data hazards
    forward_ae = rs1_forward(rs1_ex, rd_mem, rd_wb, register_write_mem, register_write_wb);
    forward_be = rs2_forward(rs2_ex, rd_mem, rd_wb, register_write_mem, register_write_wb);
    
    // Check for required stalls. Hopefully last resort, as this slows down performance. 
    lw_stall = stall_check(result_src_ex, rd_ex, rs1_d, rs2_d);
    stall_fetch = stall_decode = flush_execute = lw_stall;

    // Check for control hazards. 
    
end
