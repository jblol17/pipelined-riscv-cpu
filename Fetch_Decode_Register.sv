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

// TODO: Needs control unit signals
module Fetch_Decode_Register(input clk, input logic [31:0] instruction_f, input logic [31:0] pc_f, input logic [31:0] pc_p_four_f,
input logic [0:0] stall_decode,
output logic [31:0] instruction_d, output logic [31:0] pc_d, output logic [31:0] pc_p_four_d 
    );

    // TODO: I think it's negedge jaja. Add stall logic. 
    always_ff @( negedge clk ) begin
        if (stall_decode == 0) begin
            instruction_d <= instruction_f;
            pc_d = pc_f;
            pc_p_four_d = pc_p_four_f;    
        end
        // ???????
        if (stall_decode == 1) begin
            instruction_d <= 0;
            pc_d = 0;
            pc_p_four_d = 0;
        end
        
    end
    
endmodule
