//
// Test Bench Module Tom_Dan_2_0_lib.encoder_tb.encoder_tester
//
// Created:
//          by - danbenam.UNKNOWN (L330W513)
//          at - 18:43:11 11/18/2021
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.2 (Build 5)
//
`resetall
`timescale 1ns/10ps

module encoder_tb;

// Local declarations
parameter AMBA_WORD = 32;
parameter AMBA_ADDR_WIDTH = 20;
parameter DATA_WIDTH = 32;

 
// Internal signal declarations
logic                    clk = 1'b0;
logic [DATA_WIDTH - 1:0] DATA_IN;
logic [1:0]              Codeword_Width = 2'b0;
logic [DATA_WIDTH - 1:0] CodeWord;


always //generate clk (what is the clock frequency & duty cycle in this simulation?)
 #1 clk <= ~clk;

encoder #(AMBA_WORD,AMBA_ADDR_WIDTH,DATA_WIDTH) U_0(
   .clk            (clk),
   .DATA_IN        (DATA_IN),
   .Codeword_Width (Codeword_Width),
   .CodeWord      (CodeWord)
);

initial begin
  
  #10.2ns;  //asyncrounsly de-assert asrtn
  Codeword_Width <= 1;
  #10; // keep low for 10 ticks
  @(posedge clk) DATA_IN <= 11'b10000110101; //assert with clk rising edge
  #50;
  Codeword_Width <= 2;
  #10; // keep low for 10 ticks
  @(posedge clk) DATA_IN <= 26'haaaaaaa; //assert with clk rising edge
  #10;
  
end


endmodule // encoder_tb

