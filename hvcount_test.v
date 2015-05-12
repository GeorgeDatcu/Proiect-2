`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:03:52 04/30/2015
// Design Name:   hvcount
// Module Name:   E:/Folder nou/abc/hvcount_test.v
// Project Name:  abc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hvcount
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hvcount_test;

	// Inputs
	reg CLKt;
	reg RST;
	reg [9:0] hC;
	reg [9:0] vC;

	// Outputs
	wire [9:0] HCOUNT;
	wire [9:0] VCOUNT;

	// Instantiate the Unit Under Test (UUT)
	hvcount uut (
		.CLKt(CLKt), 
		.RST(RST), 
		.hC(hC), 
		.vC(vC), 
		.HCOUNT(HCOUNT), 
		.VCOUNT(VCOUNT)
	);
	
	initial begin
	CLKt = 0;
	forever #1 CLKt= !CLKt;
	end
	initial begin
	hC <= 0;
	forever #1 hC <= HCOUNT;
	end
	initial begin
	vC <=0;
	forever #1 vC <= VCOUNT;
	end
	      
endmodule

