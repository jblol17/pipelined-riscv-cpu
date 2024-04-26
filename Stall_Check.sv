module stall_check (input logic [0:0] result_src_ex, input logic [4:0] rd_ex, input logic [4:0] rs1_d, input logic [4:0] rs2_d,
output logic [0:0] lw_stall
);

if (result_src_ex & ((rs1_d == rd_ex) | (rs2_d == rd_ex))) begin
    lw_stall = 1;
end
else begin
    lw_stall = 0;
end

endmodule

