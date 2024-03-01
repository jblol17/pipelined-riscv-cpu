`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2024 10:04:05 PM
// Design Name: 
// Module Name: Program_Counter
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


module Program_Counter(input clk,input logic [31:0] pc_in, 
output logic [31:0] pc_out
    );

// Should this be alwaysff? alwayslatch?     
always @(posedge clk) begin
    pc_out <= pc_in;
end
    
endmodule
