`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:16:51 03/04/2019
// Design Name:   MUX2T1_32
// Module Name:   Z:/Verilog/Element/MUX2T1_32_Test.v
// Project Name:  Element
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX2T1_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX2T1_32_Test;

	// Inputs
	reg [31:0] I0;
	reg [31:0] I1;
	reg s;

	// Outputs
	wire [31:0] o;

	// Instantiate the Unit Under Test (UUT)
	MUX2T1_32 uut (
		.I0(I0), 
		.I1(I1), 
		.s(s), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		I0 = 0;
		I1 = -1;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		s = 1;

	end
      
endmodule

