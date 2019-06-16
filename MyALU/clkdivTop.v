`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:01 11/20/2018 
// Design Name: 
// Module Name:    clkdivTop 
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
module clkdivTop(
	input wire clk,
	output reg[31:0] clkdiv=0
    );

	always @(posedge clk) //clkdiv[0] 第1个L->h,第2个H->L
		begin clkdiv <=clkdiv + 1'b1;end


endmodule
