`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2024 08:24:59 PM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
//* Additional Comments: Design Schematic #12
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(input logic [31:0] rs1, input logic [31:0] rs2, input logic [4:0] alu_control,
output logic [31:0] alu_result, output logic zero
    
    );
    
    always_comb begin
        case (alu_control)
            5'b00000: alu_result = rs1 + rs2;
            5'b00001: alu_result = rs1 - rs2;
            5'b00010: alu_result = rs1 & rs2;
            5'b00011: alu_result = rs1 | rs2;
            default:
        endcase
    end
    
    
endmodule
