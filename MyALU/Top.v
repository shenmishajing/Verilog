`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:04 11/20/2018 
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
	input wire [3:0]SW,
	input wire [1:0]SW2,
	output wire [3:0]AN,
	output wire [7:0]SEGMENT
    );

	wire [15:0] num;
	wire [1:0] btn_out;
	wire [3:0] C;
	wire C0;
	wire [31:0] clk_div;

	pbdebounce pbdebounce0(clk_div[17],SW[0],btn_out[0]);
 	pbdebounce pbdebounce1(clk_div[17],SW[1],btn_out[1]);
	clkdiv clkdiv0(clk, 1'b0, clk_div);
	
	CreatNumber CreateNumber0({2'b0, btn_out}, {2'b0, SW[3:2]}, num);

	ALU ALU0(.S(SW2), .A(num[3:0]), .B(num[7:4]), .C(C), .C0(C0));
	disp_num disp_num0(.clk(clk), .rst(0), .Hexs({num[7:0],3'b0,C0,C}), .Point(4'b0), .Les(4'b0), .AN(AN), .Segment(SEGMENT));

endmodule
