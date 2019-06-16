`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:12 12/04/2018 
// Design Name: 
// Module Name:    Top 
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
module Top(
		input wire clk,
		input wire SW,
		output wire LED,
		output wire [3:0]AN,
		output wire [7:0]SEGMENT
	);
	
	wire [15:0] cnt;

	RevCounter m0(clk_1s, SW, cnt, LED);
	
	clk_100ms m1(clk,clk_1s);
	
	disp_num disp_num0(.clk(clk), .rst(0), .Hexs(cnt), .Point(4'b0), .Les(4'b0), .AN(AN), .Segment(SEGMENT));
	
endmodule