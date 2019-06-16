`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:34:24 12/11/2018 
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
module Top(input wire clk,
			input wire [15:0] SW,
			input wire [3:0] BTN_Y,
			output wire BTN_X,
			output wire[3:0] AN,
			output wire[7:0] SEGMENT
    );
	
	reg [3:0] num;
	wire [2:0] btn_out;
	reg [3:0] A = 0, B = 0;
	wire [3:0] A1, B1, A2, B2, C2, C, Result;
	
	assign BTN_X=0;
	
	pbdebounce pbdebounce0(clk, BTN_Y[0], btn_out[0]);
	pbdebounce pbdebounce1(clk, BTN_Y[1], btn_out[1]);
	pbdebounce pbdebounce2(clk, BTN_Y[2], btn_out[2]);
	
	AddSub4b AddSub4b0(.A(A),.B(4'b0001),.Ctrl(SW[0]),.S(A1));
	AddSub4b AddSub4b1(.A(B),.B(4'b0001),.Ctrl(SW[1]),.S(B1));
	
	Mux4to14b Mux4to14b0(.I0(A),.I1(B),.I2(num[3:0]),
                    .I3(4'b0),.s(SW[8:7]),.o(Result));
						  
	assign A2 = (SW[15]==1'b0)?A1:Result;
	assign B2 = (SW[15]==1'b0)?B1:Result;
	assign C2 = (SW[15]==1'b0)?C:Result;
	
	always@(posedge btn_out[0]) A = A2;
	always@(posedge btn_out[1]) B = B2;
	always@(posedge btn_out[2]) num[3:0] = C2;
	
	ALU ALU0(.A(A),.B(B),.S(SW[6:5]),.C(C));
	
	disp_num disp_num0(.clk(clk), .rst(0), .Hexs({A, B, C, num[3:0]}), .Point(4'b0), .Les(4'b0), .AN(AN), .Segment(SEGMENT));


endmodule
