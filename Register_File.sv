`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2024 08:24:59 PM
// Design Name: 
// Module Name: Register_File
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


module Register_File(input clk, input logic [4:0] rs1, input logic [4:0] rs2, input logic write_enable, 
input logic [4:0] register_to_write, input logic [31:0] data_to_write,
output logic [31:0] rs1_data, output logic [31:0] rs2_data
    );

    // TODO: Think of assigning all the data to zero at first?????
    
    logic [31:0] registers [0:31]; // 32, 32-bit registers x0-x31
    
    // Read from the register file
    assign rs1_data = registers[rs1];
    assign rs2_data = registers[rs2];
    
    // Write to the register file
    always @(posedge clk) begin
        if (write_enable && register_to_write != 0) begin
            registers[register_to_write] <= data_to_write;
        end     
    end
    
endmodule
