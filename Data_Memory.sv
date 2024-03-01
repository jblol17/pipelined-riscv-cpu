`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2024 08:24:59 PM
// Design Name: 
// Module Name: Data_Memory
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

module Data_Memory(input clk, input logic write_enable, input logic [31:0] address_to_write_into, input logic [31:0] data_to_write,
output logic [31:0] read_data
);

logic [31:0] RAM[63:0]; // 32, 64-bit RAM memory spaces?

assign read_data = RAM[address_to_write_into[31:2]]; // word aligned, look more into this.

always_ff @(posedge clk) begin
    if (write_enable) RAM[address_to_write_into[31:2]] <= data_to_write;
end  

endmodule