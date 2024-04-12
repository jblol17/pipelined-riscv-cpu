`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2024 17:20:14 PM
// Design Name: 
// Module Name: Hazard_Unit
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

module Hazard_Unit (input logic [4:0] rs1_ex, input logic [4:0] rs2_ex, input logic [4:0] rd_mem,
input logic [0:0] register_write_mem, input logic [4:0] rd_wb, input logic [0:0] register_write_wb,

output logic [4:0] forward_ae, output logic [4:0] forward_be
);

//* This is what should be in the hazard module kind of
always_ff @(*) begin
    // Check for forward-solved data hazards
    forward_ae = rs1_forward(rs1_ex, rd_mem, rd_wb, register_write_mem, register_write_wb);
    forward_be = rs2_forward(rs2_ex, rd_mem, rd_wb, register_write_mem, register_write_wb);
    
    // TODO: Check for required stalls. Hopefully last resort, as this slows down performance. 
    stall_check();

    // Check for control hazards. 
    
end



// function int check_rs1_forwarding (input int rs1_ex, rd_mem, rd_wb, register_write_mem);
//     ;
//     // Check if rs1 needs to be forwarded
//     if ( ((rs1_ex == rd_mem) & (register_write_mem == 1)) & (rs1_ex != 0) ) begin  // forward from memory stage
//         return forward_ae = 2'b10;
//      end 
//      if ( ((rs1_ex == rd_wb) & (register_write_wb == 1)) & (rs1_ex != 0) ) begin   // forward from the writeback stage 
//          return forward_ae = 2'b01;
//      end 
//      else begin
//         return forward_ae = 2'b00;
//      end
    
// endfunction

// function int check_rs2_forwarding (input int rs2_ex, rd_mem, rd_wb, register_write_wb);
//     ;
//     // Check if rs2 needs to be forwarded
//     if ( ((rs2_ex == rd_mem) & (register_write_mem == 1)) & (rs2_ex != 0) ) begin  // forward from memory stage
//         return forward_be = 2'b10;
//      end 
//      if ( ((rs2_ex == rd_wb) & (register_write_wb == 1)) & (rs2_ex != 0) ) begin   // forward from the writeback stage 
//         return forward_be = 2'b01;
//      end 
//      else begin
//         return forward_be = 2'b00;
//      end
    
// endfunction