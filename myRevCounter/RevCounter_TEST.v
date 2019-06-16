`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:19:25 12/04/2018
// Design Name:   RevCounter
// Module Name:   Z:/Projects/Verilog/myRevCounter/RevCounter_TEST.v
// Project Name:  myRevCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RevCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RevCounter_TEST;

	// Inputs
	reg clk;
	reg s;

	// Outputs
	wire [15:0] cnt;
	wire Rc;

	// Instantiate the Unit Under Test (UUT)
	RevCounter uut (
		.clk(clk), 
		.s(s), 
		.cnt(cnt), 
		.Rc(Rc)
	);
	
	initial begin
		s=0;#1000;
		s=1;
	end
	
	initial forever begin

	clk = 1'b0; #5;
	clk = 1'b1; #5;
end

      
endmodule

