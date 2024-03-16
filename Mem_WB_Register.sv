`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2024 03:19:58 PM
// Design Name: 
// Module Name: Mem_WB_Register
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


module Mem_WB_Register(input clk, input logic [31:0] alu_result_mem, input logic [31:0] read_data_mem, input logic [4:0] rd_mem, input logic [31:0] pc_p_4_mem,
input logic [0:0] register_write_mem, input logic [1:0] result_src_mem,

output logic [31:0] alu_result_wb, output logic [31:0] read_data_wb, output logic [4:0] rd_wb, output logic [31:0] pc_p_4_wb,
output logic [0:0] register_write_wb, output logic [1:0] result_src_wb
    );


    always_ff @( negedge clk ) begin
        alu_result_wb <= alu_result_mem;
        read_data_wb <= read_data_mem;
        rd_wb <= rd_mem;
        pc_p_4_wb <= pc_p_4_mem;
        
        register_write_wb <= register_write_mem;
        result_src_wb <= result_src_mem;
    end
endmodule
