`timescale 1ns / 1ps



module PC_Source_OR (input logic [0:0] branch_AND_result, input logic [0:0] jump_ex,
output result);

always_comb
    result = branch_AND_result || jump_ex;

endmodule