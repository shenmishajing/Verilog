`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:40:16 12/25/2018
// Design Name:   ShfitReg8b
// Module Name:   Z:/Projects/Verilog/ShfitReg8b/ShfitReg8b_TEST.v
// Project Name:  ShfitReg8b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ShfitReg8b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ShfitReg8b_TEST;

	// Inputs
	reg clk;
	reg S;
	reg s_in;
	reg [7:0] p_in;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	ShfitReg8b uut (
		.clk(clk), 
		.S(S), 
		.s_in(s_in), 
		.p_in(p_in), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		S = 0;
		s_in = 0;
		p_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		S = 0;
		s_in = 1;
		p_in =0;
		#200;
		S = 1;
		s_in = 0;
		p_in = 8'b0101_0101;
		#500;
	end
	
	always begin
		clk = 0; #20;
		clk = 1; #20;
	end

      
endmodule

