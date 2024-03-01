`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2024 10:30:14 PM
// Design Name: 
// Module Name: Data_Memory_Result_Mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Chooses where to read data from OR write data to.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Data_Memory_Result_Mux(input logic [0:0] result_src, input logic [31:0] alu_result, input logic [31:0] memory_result,
output logic [31:0] result_output
    );
    
always_comb begin
    if (result_src) result_output = alu_result;
    else result_output = memory_result;    
end

endmodule
