`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:52:43 11/20/2018
// Design Name:   ALU
// Module Name:   Z:/Projects/Verilog/MyALU/ALU_Test.v
// Project Name:  MyALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Test;

	// Inputs
	reg [1:0] S;
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire C0;
	wire [3:0] C;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.S(S), 
		.A(A), 
		.B(B), 
		.C0(C0), 
		.C(C)
	);

integer i, j, k;

	initial begin
		// Initialize Inputs
		S = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (i = 0; i < 16; i = i + 1) begin
			for (j = 0; j < 16; j = j + 1) begin
				for (k = 0; k < 4; k = k + 1) begin
					A = i;
					B = j;
					S = k;
					#50;
				end
			end
		end

	end
      
endmodule

