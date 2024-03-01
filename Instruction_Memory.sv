`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2024 08:24:59 PM
// Design Name: 
// Module Name: Instruction_Memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This comes from a file, so I'll do it like that too instead of hardcoding the instructions I guess. 
// 
// Dependencies: riscvtest.txt (REMEMBER TO MAKE THIS FILE)
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Instruction_Memory (input logic [31:0] pc_out,
output logic [31:0] instruction_out
);

logic [31:0] RAM[63:0];

// Check if this is doable with the Arty 7 100
initial
    $readmemh("riscvtest.txt", RAM);
    
assign instruction_out = RAM[pc_out[31:2]]; // Word aligned

endmodule