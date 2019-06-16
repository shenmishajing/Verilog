`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:24:10 03/05/2019
// Design Name:   Ext_32
// Module Name:   Z:/Verilog/Element/Ext_32_Test.v
// Project Name:  Element
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ext_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ext_32_Test;

	// Inputs
	reg [15:0] imm_16;

	// Outputs
	wire [31:0] Imm_32;

	// Instantiate the Unit Under Test (UUT)
	Ext_32 uut (
		.imm_16(imm_16), 
		.Imm_32(Imm_32)
	);

	initial begin
		// Initialize Inputs
		imm_16 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		imm_16 = 4;
		#100;
		imm_16 = 23;
		#100;
		imm_16 = -3;
		#100;
		imm_16 = -25;
		#100;

	end
      
endmodule

