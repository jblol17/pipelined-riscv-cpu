`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2024 03:19:58 PM
// Design Name: 
// Module Name: Fetch_Decode_Register
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


module Fetch_Decode_Register(input clk, input logic [31:0] instruction_out, input logic [31:0] pc, input logic [31:0] pc_p_four,
output logic [31:0] instruction_d, output logic [31:0] pc_d, output logic [31:0] pc_p_four_d 
    );
    
    always @(negedge clk) begin
        
    end
    
endmodule
