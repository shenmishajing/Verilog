`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:12:01 03/19/2019
// Design Name:   Regs
// Module Name:   Z:/Verilog/ALU_NEW/Regs_Test.v
// Project Name:  ALU_NEW
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Regs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Regs_Test;

	// Inputs
	reg clk;
	reg rst;
	reg we;
	reg [4:0] reg_Rs_addr_A;
	reg [4:0] reg_Rt_addr_B;
	reg [4:0] reg_Wt_addr;
	reg [31:0] wdata;

	// Outputs
	wire [31:0] rdata_A;
	wire [31:0] rdata_B;

	// Instantiate the Unit Under Test (UUT)
	Regs uut (
		.clk(clk), 
		.rst(rst), 
		.we(we), 
		.reg_Rs_addr_A(reg_Rs_addr_A), 
		.reg_Rt_addr_B(reg_Rt_addr_B), 
		.reg_Wt_addr(reg_Wt_addr), 
		.wdata(wdata), 
		.rdata_A(rdata_A), 
		.rdata_B(rdata_B)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		we = 0;
		reg_Rs_addr_A = 0;
		reg_Rt_addr_B = 0;
		reg_Wt_addr = 0;
		wdata = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		rst = 1;
		#50;
		rst = 0;
		we = 1;
		reg_Rs_addr_A = 0;
		reg_Rt_addr_B = 0;
		reg_Wt_addr = 5;
		wdata = 32'hA5A5A5A5;
		#20;
		we = 1;
		reg_Rs_addr_A = 0;
		reg_Rt_addr_B = 0;
		reg_Wt_addr = 6;
		wdata = 32'h55AA55AA;
		#20;
		we = 1;
		reg_Rs_addr_A = 0;
		reg_Rt_addr_B = 0;
		reg_Wt_addr = 0;
		wdata = 32'hAAAA5555;
		#20;
		we = 0;
		reg_Rs_addr_A = 5;
		reg_Rt_addr_B = 6;
		reg_Wt_addr = 0;
		wdata = 0;
		#20;
		

	end
	
	always begin
		clk = 0; #10;
		clk = 1; #10;
	end
      
endmodule

