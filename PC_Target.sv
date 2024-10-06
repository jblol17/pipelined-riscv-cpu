`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2024 10:04:05 PM
// Design Name: 
// Module Name: PC_Target
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
//* Additional Comments: Design Schematic #11
// 
//////////////////////////////////////////////////////////////////////////////////


module PC_Target(input logic [31:0] next_pc, input logic [31:0] immediate_extend,
output logic [31:0] pc_target
    );
    
always_comb begin
    pc_target = next_pc + immediate_extend;
end        
    
endmodule
