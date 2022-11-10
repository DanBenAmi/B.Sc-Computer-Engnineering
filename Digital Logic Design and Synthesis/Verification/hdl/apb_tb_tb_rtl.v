//
// Test Bench Module Tom_Dan_2_0_lib.apb_tb.apb_tester
//
// Created:
//          by - danbenam.UNKNOWN (L330W513)
//          at - 14:01:19 11/20/2021
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.2 (Build 5)
//
`resetall
`timescale 1ns/10ps

module apb_tb;

// Local declarations
parameter AMBA_WORD = 32;
parameter AMBA_ADDR_WIDTH = 20;
parameter DATA_WIDTH = 32;

// Internal signal declarations
logic       clk =1'b0;
logic       pwrite=1'b0;
logic       psel=1'b0;
logic       penable=1'b0;
logic       [1:0]Rd_Wr_Id;


always //generate clk (what is the clock frequency & duty cycle in this simulation?)
 #1 clk <= ~clk;
 
 
apb #(32,20,32) U_0(
   .clk      (clk),
   .pwrite   (pwrite),
   .psel     (psel),
   .penable  (penable),
   .Rd_Wr_Id (Rd_Wr_Id)
);


initial begin
  
  #10.2ns;  //asyncrounsly de-assert asrtn
  @(posedge clk) pwrite <= 1;
  #10; // keep low for 10 ticks
  @(posedge clk) penable <= 1; //assert with clk rising edge
  #10;
  @(posedge clk) penable <= 0;
  #10; // keep low for 10 ticks
  @(posedge clk) psel <= 1; //assert with clk rising edge
  #1;
  @(posedge clk) penable <= 1;
  #1; // keep low for 10 ticks
  @(posedge clk) begin penable <= 0; //assert with clk rising edge
   psel <= 0;
  end
  #30; // keep low for 10 ticks
  @(posedge clk) begin psel <= 1; //assert with clk rising edge
   pwrite <= 0;
 end
  #1;
  @(posedge clk) penable <= 1;
  #1; // keep low for 10 ticks
 @(posedge clk) begin penable <= 0; //assert with clk rising edge
   psel <= 0;
  end
  #10;
  
end







endmodule // apb_tb

