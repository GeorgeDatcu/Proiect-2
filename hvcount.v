`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:38:04 04/29/2015 
// Design Name: 
// Module Name:    hvcount 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module hvcount(
   input CLKt,
   input RST,
	output reg [10:0]HCOUNT
   );

	always@(posedge CLKt)
	begin
	
		if(RST)
			HCOUNT<=0;
		else begin
			if(HCOUNT == 1039)
				HCOUNT <= 0;
			else HCOUNT <= HCOUNT + 1;
			end
	end	//In specificatiile standardului VESA, frecventa sistemului este de 50MHz => T=1/50*10^6=0,02us
	// 20,8us/0,02us = 1040 => fiecare pixel se parcurge la o perioada de ceas.
	

endmodule
