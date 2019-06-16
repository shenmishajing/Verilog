`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:26:43 03/05/2019
// Design Name:   ADC32
// Module Name:   Z:/Verilog/Element/ADC32_Test.v
// Project Name:  Element
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ADC32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ADC32_Test;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg C0;

	// Outputs
	wire [31:0] S;
	wire Co;

	// Instantiate the Unit Under Test (UUT)
	ADC32 uut (
		.A(A), 
		.B(B), 
		.C0(C0), 
		.S(S), 
		.Co(Co)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A = -3;
		B = 5;
		C0 = 0;
		#100;
		A = 234;
		B =2349;
		C0 = 0;
		#100;
		A = 3;
		B = 4;
		C0 = 1;
		#100;
		A = 563;
		B = 23;
		C0 = 1;
		#100;
		A = 0;
		B = 0;
		C0 = 1;
		#100;
		
		

	end
      
endmodule

