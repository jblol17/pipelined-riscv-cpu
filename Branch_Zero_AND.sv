`timescale 1ns / 1ps


module Branch_Zero_AND(input logic [0:0] alu_zero, input logic [0:0] branch_ex,
output logic [0:0] result);

always_comb
    result = alu_zero && branch_ex;

endmodule