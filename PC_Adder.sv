`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2024 10:04:05 PM
// Design Name: 
// Module Name: PC_Adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
//* Additional Comments: Design Schematic #4
// 
//////////////////////////////////////////////////////////////////////////////////


module PC_Adder(input logic [31:0] pc_in,
output logic [31:0] pc_out
    );
    
always @(pc_out) begin
    pc_out <= pc_in + 32;
end

endmodule
