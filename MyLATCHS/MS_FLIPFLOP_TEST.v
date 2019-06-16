`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:44:14 11/27/2018
// Design Name:   MS_FLIPFLOP
// Module Name:   Z:/Projects/Verilog/MyLATCHS/MS_FLIPFLOP_TEST.v
// Project Name:  MyLATCHS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MS_FLIPFLOP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MS_FLIPFLOP_TEST;

	// Inputs
	reg S;
	reg R;
	reg C;

	// Outputs
	wire Q;
	wire Qbar;
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	MS_FLIPFLOP uut (
		.S(S), 
		.R(R), 
		.C(C), 
		.Q(Q), 
		.Qbar(Qbar), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		S = 0;
		R = 0;
		C = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	R=1;S=1; #50;
	R=1;S=0; #50;
	R=1;S=1; #50;
	R=0;S=1; #50;
	R=1;S=1; #50;
	R=0;S=0; #50;
	R=1;S=1; #50;
	
	R=0;S=0; #50;
	R=1; #5;
	R=0; #5;
	S=1; #5;
	S=0; #5;

	end
always begin
	C=0;#20;
	C=1;#20;
end

      
endmodule

