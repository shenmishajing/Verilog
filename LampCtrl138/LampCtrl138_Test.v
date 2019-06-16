// Verilog test fixture created from schematic Z:\Projects\Verilog\LampCtrl138\LampCtrl138.sch - Tue Oct 23 15:52:01 2018

`timescale 1ns / 1ps

`define auto_init

module LampCtrl138_LampCtrl138_sch_tb();

// Inputs
   reg S1;
   reg S3;
   reg S2;

// Output
   wire F;

// Bidirs

// Instantiate the UUT
   LampCtrl138 UUT (
		.S1(S1), 
		.S3(S3), 
		.S2(S2), 
		.F(F)
   );
// Initialize Inputs
   `ifdef auto_init
       integer i;
	initial begin
		for(i=0;i<=8;i=i+1)begin
			{S3,S2,S1} = i;
			#50;
		end
	end
   `endif
endmodule
