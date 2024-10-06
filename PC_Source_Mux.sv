`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2024 10:04:05 PM
// Design Name: 
// Module Name: PC_Source_Mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
//* Additional Comments: Design Schematic #1
// 
//////////////////////////////////////////////////////////////////////////////////


module PC_Source_Mux(input logic [0:0] pc_select, input logic [31:0] next_pc, input logic [31:0] branch_pc,
output logic [31:0] pc_source
    );

always_comb begin
    if (pc_select) pc_source = branch_pc;
    else pc_source = next_pc;
end        
    
endmodule
