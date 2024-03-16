`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2024 03:19:58 PM
// Design Name: 
// Module Name: Execute_Mem_Register
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

// TODO: Needs control unit signals
module Execute_Mem_Register(input clk, input logic [31:0] alu_result_ex, input logic [31:0] rs2_data_ex, input logic [4:0] rd_ex,
input logic [31:0] pc_p_4_ex,

input logic [0:0] register_write_ex, input logic [1:0] result_src_ex, input logic [0:0] mem_write_enable_ex,

output logic [31:0] alu_result_mem, output logic [31:0] rs2_data_mem, output logic [4:0] rd_mem, output logic [31:0] pc_p_4_mem,

output logic [0:0] register_write_mem, output logic [1:0] result_src_mem, output logic [0:0] mem_write_enable_mem 
    );

    always_ff @( negedge clk ) begin 
        alu_result_mem <= alu_result_ex;
        rs2_data_mem <= rs2_data_ex;
        rd_mem <= rd_ex;
        pc_p_4_mem <= pc_p_4_ex;

        register_write_mem <= register_write_ex;
        result_src_mem <= result_src_ex;
        mem_write_enable_mem <= mem_write_enable_ex;
    end

endmodule
