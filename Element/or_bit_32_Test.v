`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:30:43 03/04/2019
// Design Name:   or_bit_32
// Module Name:   Z:/Verilog/Element/or_bit_32_Test.v
// Project Name:  Element
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: or_bit_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module or_bit_32_Test;

	// Inputs
	reg [31:0] A;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	or_bit_32 uut (
		.A(A), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		A = 1;
		#100;
		A = 123;
		#100;
		A = 4;
		#100;
		A = 0;
		#100;
		A = 2;
		#100;

	end
      
endmodule

