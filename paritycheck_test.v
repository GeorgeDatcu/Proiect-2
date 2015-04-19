`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:54:45 04/20/2015
// Design Name:   paritycheck
// Module Name:   E:/Folder nou/abc/parity.v
// Project Name:  abc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: paritycheck
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module parity;

	// Inputs
	reg clock;
	reg DONE;
	reg [8:0] CODE;

	// Instantiate the Unit Under Test (UUT)
	paritycheck uut (
		.clock(clock), 
		.DONE(DONE),
		.CODE
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		forever #1 clock = !clock;
	end
	
	initial begin
	
		DONE = 0;
		CODE = 8'b0001_1100;
		
		#5 DONE = 1;
		#5 DONE = 0;
			CODE = 8'b0001_1011;
		#20 DONE = 1;
	
		// Add stimulus here

	end
      
endmodule

