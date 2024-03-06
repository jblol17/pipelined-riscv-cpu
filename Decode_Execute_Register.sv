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
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// TODO: Needs control unit signals
module Decode_Execute_Register(input clk, input logic [31:0] rs1_data_d, input logic [31:0] rs2_data_d,
input logic [31:0] pc_d, input logic [4:0] rd_d, input logic [31:0] immediate_extend_d, input logic [31:0] pc_p_4_d,

output logic [31:0] rs1_data_ex, output logic [31:0] rs2_data_ex, output logic [31:0] pc_ex, output logic [4:0] rd_ex,
output logic [31:0] immediate_extend_ex, output logic [31:0] pc_p_4_ex
    );
    always_ff @( negedge clk ) begin
        rs1_data_ex <= rs1_data_d;
        rs2_data_ex <= rs2_data_d;
        pc_ex <= pc_d;
        rd_ex <= rd_d;
        immediate_extend_ex <= immediate_extend_d;
        pc_p_4_ex <= pc_p_4_d;
    end

endmodule
