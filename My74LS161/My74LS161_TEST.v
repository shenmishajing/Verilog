`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:23:45 12/18/2018
// Design Name:   My74LS161
// Module Name:   Z:/Projects/Verilog/My74LS161/My74LS161_TEST.v
// Project Name:  My74LS161
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: My74LS161
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module My74LS161_TEST;

	// Inputs
	reg CRbar;
	reg LDbar;
	reg CTP;
	reg CTT;
	reg CP;
	reg [3:0] D;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	My74LS161 uut (
		.CRbar(CRbar), 
		.LDbar(LDbar), 
		.CTP(CTP), 
		.CTT(CTT), 
		.CP(CP), 
		.D(D), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		CRbar = 0;
		LDbar = 0;
		CTP = 0;
		CTT = 0;
		CP = 0;
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		CRbar = 1;
		LDbar = 1;
		D = 4'b1100;
		CTT = 0;
		CTP = 0;

		#30 CRbar = 0;
		#20 CRbar = 1;
		#10 LDbar = 0;
		#30 CTT = 1;
		CTP = 1;
		#10 LDbar = 1;

		#510;
		CRbar = 0;
		#20 CRbar = 1;
		#500;


	end
	
always begin
	CP = 0; #20;
	CP = 1; #20;
end
      
endmodule

