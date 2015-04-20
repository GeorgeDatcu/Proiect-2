`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:20:06 04/19/2015
// Design Name:   deserializer_v2
// Module Name:   E:/Folder nou/abc/deser.v
// Project Name:  abc
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: deserializer_v2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module deser;

	reg clock;
	reg PS2_DATA;
	reg PS2_CLK;

	wire DONE;
	wire [8:0] CODE;

	deserializer_v2 uut (
		.clock(clock), 
		.PS2_DATA(PS2_DATA), 
		.PS2_CLK(PS2_CLK), 
		.DONE(DONE), 
		.CODE(CODE)
	);

	initial begin
	clock = 0;
	forever 	#2 clock=!clock;
	end

	initial begin
	PS2_CLK = 1;
	forever #1 PS2_CLK=!PS2_CLK;
   end

	initial begin
	   // TASTA A
		PS2_DATA = 0;
		#22;
		#2 PS2_DATA = 0;
		#2 PS2_DATA = 0;
		#2 PS2_DATA = 0;
		#2 PS2_DATA = 0;
		#2 PS2_DATA = 1;
		#2 PS2_DATA = 1;
		#2 PS2_DATA = 1;
		#2 PS2_DATA = 0;
		#2 PS2_DATA = 0;	
		#2 PS2_DATA = 0;
		#2 PS2_DATA = 1;
		
		// TASTA S
		#22;
		#2 PS2_DATA = 0;
		#2 PS2_DATA = 0;
		#2 PS2_DATA = 0;
		#2 PS2_DATA = 0;
		#2 PS2_DATA = 1;
		#2 PS2_DATA = 1;
		#2 PS2_DATA = 0;
		#2 PS2_DATA = 1;
		#2 PS2_DATA = 1;	
		#2 PS2_DATA = 1;
		#2 PS2_DATA = 1;

	end
      
endmodule

