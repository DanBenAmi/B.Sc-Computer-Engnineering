//
// Test Bench Module Tom_Dan_2_0_lib.op_done_logic_tb.op_done_logic_tester
//
// Created:
//          by - kessoust.UNKNOWN (L330W513)
//          at - 15:33:24 12/10/2021
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.2 (Build 5)
//
`resetall
`timescale 1ns/10ps

module op_done_logic_tb;

// Local declarations

// Internal signal declarations
logic       clk;
logic       rst;
logic [1:0] Rd_Wr_Id;
logic [3:0] address;
logic       operation_done;


op_done_logic U_0(
   .clk            (clk),
   .rst            (rst),
   .Rd_Wr_Id       (Rd_Wr_Id),
   .address        (address),
   .operation_done (operation_done)
);

op_done_logic_tester U_1(
   .clk            (clk),
   .rst            (rst),
   .Rd_Wr_Id       (Rd_Wr_Id),
   .address        (address),
   .operation_done (operation_done)
);

endmodule // op_done_logic_tb

