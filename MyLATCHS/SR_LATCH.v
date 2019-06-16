`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:46 11/20/2018 
// Design Name: 
// Module Name:    SR_LATCH 
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
module SR_LATCH(
	input wire S, R,
	output wire Q, Qbar
    );
	 
	 assign Q = S ~& Qbar;
	 assign Qbar = Q ~& R;

endmodule
