`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:48:53 12/04/2018
// Design Name:   counter_4bit
// Module Name:   Z:/Projects/Verilog/MyCounter/counter_4bit_TEST.v
// Project Name:  MyCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_4bit_TEST;

	// Inputs
	reg clk;

	// Outputs
	wire Qa;
	wire Qb;
	wire Qc;
	wire Qd;
	wire Rc;

	// Instantiate the Unit Under Test (UUT)
	counter_4bit uut (
		.clk(clk), 
		.Qa(Qa), 
		.Qb(Qb), 
		.Qc(Qc), 
		.Qd(Qd), 
		.Rc(Rc)
	);

	initial forever begin
	clk = 1'b0; #100;
	clk = 1'b1; #100;
end

      
endmodule

