`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:08:30 11/20/2018
// Design Name:   AddSub4b
// Module Name:   Z:/Projects/Verilog/MyALU/AddSub4b_Test.v
// Project Name:  MyALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AddSub4b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AddSub4b_Test;

	// Inputs
	reg Ctrl;
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire C0;
	wire [3:0] S;

	// Instantiate the Unit Under Test (UUT)
	AddSub4b uut (
		.Ctrl(Ctrl), 
		.A(A), 
		.B(B), 
		.C0(C0), 
		.S(S)
	);
	
	integer i, j, k;
	initial begin
		// Initialize Inputs
		Ctrl = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		for (i = 0;i < 16;i = i + 1)begin
			for(j = 0;j < 16;j = j + 1)begin
				for(k = 0;k < 2;k = k +1)begin
					A = i;
					B = j;
					Ctrl = k;
					#50;
				end
			end
		end
		
	end
      
endmodule

