`timescale 1ns/1ps

module rs1_forward(input logic [4:0] rs1_ex, input logic [4:0] rd_mem, input logic [4:0] rd_wb, input logic [0:0] register_write_mem, input logic [0:0] register_write_wb,
output logic [4:0] forward_ae
);

if ( ((rs1_ex == rd_mem) & (register_write_mem == 1)) & (rs1_ex != 0) ) begin  // forward from memory stage
    forward_ae = 2'b10;
 end
if ( ((rs1_ex == rd_wb) & (register_write_wb == 1)) & (rs1_ex != 0) ) begin   // forward from the writeback stage 
    forward_ae = 2'b01;
end
else begin  // no forwarding
    forward_ae = 2'b00;
end

endmodule