`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:34 12/25/2018 
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
		input wire [4:0] SW,
		output wire [7:0] LED,
		output wire [3:0] AN,
		output wire [7:0] Segment
    );

		wire clk_1s, s_in;
		wire [1:0] btn_out;
		wire [7:0] num;

		pbdebounce pbdebounce0(clk, SW[0], btn_out[0]);
		pbdebounce pbdebounce1(clk, SW[1], btn_out[1]);

		CreatNumber CreatNumber0({2'b0,btn_out},num);

		counter_1s counter_1s0(clk, clk_1s);
		
		assign s_in = (SW[4] && LED[0]) || (!SW[4] && SW[3]);
		
		ShfitReg8b ShfitReg8b0(.clk(clk_1s), .S(SW[2]), .s_in(s_in), .p_in(num), .Q(LED));
	
		disp_num disp_num0(.clk(clk), .rst(0), .Hexs({num[7:0],LED}), .Point(4'b0), .Les(4'b0), .AN(AN), .Segment(Segment));

endmodule
