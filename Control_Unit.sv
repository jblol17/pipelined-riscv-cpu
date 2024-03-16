`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2024 10:30:14 PM
// Design Name: 
// Module Name: Control_Unit
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


module Control_Unit(input logic [6:0] opcode, input logic [2:0] funct3, input logic [6:0] funct7, input logic [0:0] zero,
output logic [0:0] pc_select, output logic [0:0] result_src, output logic [0:0] mem_write_enable, output logic [4:0] alu_control,
output logic [1:0] imm_src, output logic [0:0] reg_write_enable
    );

// opcode values
parameter OP_LUI = 7'b0110111;
parameter OP_AUIPC = 7'b0010111;
parameter OP_JAL = 7'b1101111;
parameter OP_JALR = 7'b1100111;
parameter OP_BRANCH = 7'b1100011;
parameter OP_LBYTE = 7'b0000011;
parameter OP_STORE = 7'b0100011;
parameter OP_IMM = 7'b0010011;
parameter OP_ALU = 7'b0110011;
parameter OP_FENCE = 7'b0001111;
parameter OP_ECALL = 7'b1110011;

// Case for instructions. RV32I
always_comb 
    case (opcode) 
        OP_LUI:

        OP_AUIPC:

        OP_JAL:

        OP_JALR:

        OP_BRANCH:

        OP_LBYTE:

        OP_STORE:

        OP_IMM:

        OP_ALU:

        OP_FENCE:

        OP_ECALL:

        default: 
    endcase


endmodule
