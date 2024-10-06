`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2024 03:19:58 PM
// Design Name: 
// Module Name: Decode_Execute_Register
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
//* Additional Comments: Design Schematic #9
// 
//////////////////////////////////////////////////////////////////////////////////

module Decode_Execute_Register(input clk, input logic [31:0] rs1_data_d, input logic [31:0] rs2_data_d,
input logic [31:0] pc_d, input logic [4:0] rd_d, input logic [31:0] immediate_extend_d, input logic [31:0] pc_p_4_d,

input logic [0:0] register_write_d, input logic [1:0] result_src_d, input logic [0:0] mem_write_enable_d, input logic [0:0] jump_d,
input logic [0:0] branch_d, input logic [4:0] alu_control_d, input logic [0:0] alu_src_d,

input logic [4:0] rs1_d, input logic [4:0] rs2_d,
input logic [0:0] flush_execute,

output logic [31:0] rs1_data_ex, output logic [31:0] rs2_data_ex, output logic [31:0] pc_ex, output logic [4:0] rd_ex,
output logic [31:0] immediate_extend_ex, output logic [31:0] pc_p_4_ex,

output logic [0:0] register_write_ex, output logic [1:0] result_src_ex, output logic [0:0] mem_write_enable_ex, output logic [0:0] jump_ex,
output logic [0:0] branch_ex, output logic [4:0] alu_control_ex, output logic [0:0] alu_src_ex,

output logic [4:0] rs1_ex, output logic [4:0] rs2_ex
);

// TODO: Add stall logic
    always_ff @( negedge clk ) begin
        if (flush_execute == 0) begin
            rs1_data_ex <= rs1_data_d;
            rs2_data_ex <= rs2_data_d;
            pc_ex <= pc_d;
            rd_ex <= rd_d;
            immediate_extend_ex <= immediate_extend_d;
            pc_p_4_ex <= pc_p_4_d;

            register_write_ex <= register_write_d;
            result_src_ex <= result_src_d;
            mem_write_enable_ex <= mem_write_enable_d;
            jump_ex <= jump_d;
            branch_ex <= branch_d;
            alu_control_ex <= alu_control_d;
            alu_src_ex <= alu_src_d;    
        end
        if (flush_execute == 1) begin
            // TODO: Looks like a no op is addi x0, x0, x0
            // ???????????????
            rs1_data_ex <= 0;
            rs2_data_ex <= 0;
            pc_ex <= 0;
            rd_ex <= 0;
            immediate_extend_ex <= 0;
            pc_p_4_ex <= 0;

            register_write_ex <= 0;
            result_src_ex <= 0;
            mem_write_enable_ex <= 0;
            jump_ex <= 0;
            branch_ex <= 0;
            alu_control_ex <= 0;
            alu_src_ex <= 0;    
        end        
    end

endmodule
