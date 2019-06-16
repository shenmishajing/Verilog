// Verilog test fixture created from schematic Z:\Projects\Verilog\D_74LS138_SCH\D_74LS138.sch - Tue Oct 23 15:09:28 2018

`timescale 1ns / 1ps

`define auto_init

module D_74LS138_D_74LS138_sch_tb();

// Inputs
   reg A;
   reg B;
   reg C;
   reg G;
   reg G2A;
   reg G2B;

// Output
   wire [7:0] Y;

// Bidirs

// Instantiate the UUT
   D_74LS138 UUT (
		.Y(Y), 
		.A(A), 
		.B(B), 
		.C(C), 
		.G(G), 
		.G2A(G2A), 
		.G2B(G2B)
   );
// Initialize Inputs
   `ifdef auto_init
   integer i,j;
	initial begin
		C = 0;
		B = 0;
		A = 0;
		for (j=0; j<=7;j=j+1) begin
			{G2B,G2A,G} = j;
			for (i=0; i<=7;i=i+1) begin
				{C,B,A} = i;
				#50;
			end
		end
	end
   `endif
endmodule
