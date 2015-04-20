`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:42:20 04/20/2015
// Design Name:   scandecoder
// Module Name:   E:/Folder nou/abc/scan.v
// Project Name:  abc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: scandecoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module scan;

	// Inputs
	reg clock;
	reg [8:0] CODE;

	// Outputs
	wire [5:0] DATA;

	// Instantiate the Unit Under Test (UUT)
	scandecoder uut (
		.clock(clock), 
		.CODE(CODE), 
		.DATA(DATA)
	);

	initial begin
		clock = 0;
		forever #1 clock = !clock;

	end
	
	initial begin
	
	CODE = 8'b00011100;
	#20 CODE = 8'b00011011;
	
	end
      
endmodule

