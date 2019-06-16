`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:01 11/06/2018 
// Design Name: 
// Module Name:    CreatNumber 
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
module CreatNumber(
	input wire[3:0] btn,
	input wire[3:0] sw,
	output reg [15:0] num
    );
	 
	 wire [3:0] A,B,C,D;
	 
	 initial num <= 16'b1010_1011_1100_1101;
	 
	 AddSub4b AddSub4b0(.A(num[3:0]), .B(4'b0001), .Ctrl(sw[0]), .S(A));
	 AddSub4b AddSub4b1(.A(num[7:4]), .B(4'b0001), .Ctrl(sw[1]), .S(B));
	 AddSub4b AddSub4b2(.A(num[11:8]), .B(4'b0001), .Ctrl(sw[2]), .S(C));
	 AddSub4b AddSub4b3(.A(num[15:12]), .B(4'b0001), .Ctrl(sw[3]), .S(D));
	 
	 always@(posedge btn[0]) num[ 3: 0] <= A;
	 always@(posedge btn[1]) num[ 7: 4] <= B;
	 always@(posedge btn[2]) num[11: 8] <= C;
	 always@(posedge btn[3]) num[15:12] <= D;


endmodule
