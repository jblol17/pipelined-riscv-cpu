`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2024 08:24:59 PM
// Design Name: 
// Module Name: Extend
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

module Extend(input logic [2:0] immediate_source, input logic [31:0] instruction, 
output logic [31:0] immediate_extend
);

/*
    000 I-type (immediates like addi, lw, jalr), 
    001 S-type (stores like sw, sb), 
    010 B-type (branches like beq, bne), 
    011 U-type (upper immediates like lui, auipc), 
    100 J-type (jump types like jal)
*/

always_comb begin
    case (immediate_source)
        3'b000: immediate_extend = { {20{instruction[31]}}, instruction[31:20]};
        3'b001: immediate_extend = { {20{instruction[31]}}, instruction[31:25], instruction[11:7]}; 
        3'b010: immediate_extend = { {20{instruction[31]}}, instruction[7], instruction[30:25], instruction[11:8], 1'b0}; // plus the three immediate sections of branch type instructions plus the extra 0 (by definition).
        3'b011: immediate_extend = { {20{instruction[31]}}, instruction[31:12]}; 
        3'b100: immediate_extend = { {20{instruction[31]}}, instruction[19:12], instruction[20], instruction[30:21]};
        default: immediate_extend = 32'bx;
    endcase
end 

endmodule