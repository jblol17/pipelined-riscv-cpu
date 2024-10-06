`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2024 10:30:14 PM
// Design Name: 
// Module Name: ALU_Mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Choosing 2nd ALU source, rs2 or immediate.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
//* Additional Comments: Design Schematic #10
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_Mux(input logic [0:0] alu_source, input logic [31:0] immediate_extend, input logic [31:0] source_register_two,
output logic [31:0] alu_source_out
    );
    
always_comb begin
    if (alu_source) alu_source_out = source_register_two;
    else alu_source_out = immediate_extend;
end        
    
endmodule
