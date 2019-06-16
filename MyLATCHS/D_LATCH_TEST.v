`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:21:15 11/27/2018
// Design Name:   D_LATCH
// Module Name:   Z:/Projects/Verilog/MyLATCHS/D_LATCH_TEST.v
// Project Name:  MyLATCHS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_LATCH
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_LATCH_TEST;

	// Inputs
	reg D;
	reg C;

	// Outputs
	wire Q;
	wire Qbar;

	// Instantiate the Unit Under Test (UUT)
	D_LATCH uut (
		.D(D), 
		.C(C), 
		.Q(Q), 
		.Qbar(Qbar)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		C = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

C=1;D=1; #50;
D=0; #50;
C=0;D=1; #50;
D=0; #50;
C=1; D=1; #10;
D=0; #10;
D=1; #10;
D=0; #10;
D=1; #10;
C=0;D=1; #50;
D=0; #50;

	end
      
endmodule

