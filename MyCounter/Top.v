`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:54:12 12/04/2018 
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
	output wire LED, Segment[7:0], AN[7:0]
    );
	 
	 wire clk_1s, Qa, Qb, Qc, Qd, Rc;
	 
	 counter_1s(clk, clk_1s);
	 
	 counter_4bit(clk_1s, Qa, Qb, Qc, Qd, Rc);
	 
	 assign LED = Rc;

	 disp_num disp_num0(.clk(clk), .rst(0), .Hexs({8'b0, Qa, Qb, Qc, Qd}), .Point(4'b0), .Les(4'b1110), .AN(AN), .Segment(SEGMENT));

endmodule
