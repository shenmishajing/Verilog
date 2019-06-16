// Verilog test fixture created from schematic Z:\Projects\Verilog\MUX4to1b4\Mux4to14b.sch - Tue Nov 06 14:53:33 2018

`timescale 1ns / 1ps

module Mux4to14b_Mux4to14b_sch_tb();

// Inputs
   reg [1:0] s;
   reg [3:0] I0;
   reg [3:0] I1;
   reg [3:0] I2;
   reg [3:0] I3;

// Output
   wire [3:0] o;

// Bidirs

// Instantiate the UUT
   Mux4to14b UUT (
		.s(s), 
		.o(o), 
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3)
   );
// Initialize Inputs
		integer i;
       initial begin
		s = 0;
		I0 = 0;
		I1 = 1;
		I2 = 2;
		I3 = 3;
		for (i=0;i<4;i=i+1)begin
			s=i;
			#50;
		end
		end
endmodule
