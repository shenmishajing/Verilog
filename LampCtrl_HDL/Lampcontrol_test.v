// Verilog test fixture created from schematic Z:\Projects\Verilog\LampCtrl_HDL\Lampcontrol.sch - Tue Oct 16 14:54:18 2018

`timescale 1ns / 1ps

module Lampcontrol_Lampcontrol_sch_tb();

// Inputs
   reg S3;
   reg S2;
   reg S1;

// Output
   wire F;

// Bidirs

// Instantiate the UUT
   Lampcontrol UUT (
		.F(F), 
		.S3(S3), 
		.S2(S2), 
		.S1(S1)
   );
// Initialize Inputs
	initial begin
	S3=0;S2=0; S1=0;#50;
	           S1=1; #50;
		 S2=1;S1=0; #50;
              S1=1; #50;
    S3=1;S2=0;S1=0; #50;
              S1=1; #50; 
         S2=1;S1=0; #50;
		      S1=1; #50;
	end
endmodule