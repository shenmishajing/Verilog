`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:42 11/27/2018 
// Design Name: 
// Module Name:    D_LATCH 
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
module D_LATCH(
	input wire D, C,
	output wire Q, Qbar
    );
	 
	 CSR_LATCH CSR_LATCH0(
		.S(D),
		.R(~D),
		.C(C),
		.Q(Q),
		.Qbar(Qbar)
	 );


endmodule
