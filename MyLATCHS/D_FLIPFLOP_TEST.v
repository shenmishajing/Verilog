// Verilog test fixture created from schematic Z:\Projects\Verilog\MyLATCHS\D_FLIPFLOP.sch - Tue Nov 27 15:02:55 2018

`timescale 1ns / 1ps

module D_FLIPFLOP_D_FLIPFLOP_sch_tb();

// Inputs
   reg Cp;
   reg Sbar;
   reg D;
   reg Rbar;

// Output
   wire Q;
   wire Qbar;

// Bidirs

// Instantiate the UUT
   D_FLIPFLOP UUT (
		.Q(Q), 
		.Qbar(Qbar), 
		.Cp(Cp), 
		.Sbar(Sbar), 
		.D(D), 
		.Rbar(Rbar)
   );
// Initialize Inputs
integer i;
initial begin

Sbar=1;Rbar=1;

for (i=0;i<2;i=i+1)begin
	D=i;
	#100;
end

for (i=0;i<7;i=i+1)begin
	{Sbar,Rbar,D}=i;
	#25;
end

Sbar=0;Rbar=0;


	 
end

always begin
	Cp=0; #50;
	Cp=1; #50;
end

endmodule
