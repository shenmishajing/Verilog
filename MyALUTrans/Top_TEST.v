`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:22:42 12/11/2018
// Design Name:   Top
// Module Name:   Z:/Projects/Verilog/MyALUTrans/Top_TEST.v
// Project Name:  MyALUTrans
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Top_TEST;

	// Inputs
	reg clk;
	reg [15:0] SW;
	reg [3:0] BTN_Y;

	// Outputs
	wire BTN_X;
	wire [3:0] AN;
	wire [7:0] SEGMENT;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk(clk), 
		.SW(SW), 
		.BTN_Y(BTN_Y), 
		.BTN_X(BTN_X), 
		.AN(AN), 
		.SEGMENT(SEGMENT)
	);

integer i, j, k;
	initial begin
		// Initialize Inputs
		clk = 0;
		SW = 0;
		BTN_Y = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		for(i = 0; i < 16; i = i + 1) begin
			BTN_Y[0] = 1; #10;
			BTN_Y[0] = 0; #10;
		end

	end
	
	always begin
		clk = 0; #10;
		clk = 1; #10;
	end
      
endmodule

