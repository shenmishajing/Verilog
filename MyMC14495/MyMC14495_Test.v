// Verilog test fixture created from schematic Z:\Projects\Verilog\MyMC14495\MyMC14495.sch - Tue Oct 30 14:50:06 2018

`timescale 1ns / 1ps
`define auto_init
module MyMC14495_MyMC14495_sch_tb();

// Inputs
   reg D3;
   reg D0;
   reg LE;
   reg point;
   reg D2;
   reg D1;

// Output
   wire P;
   wire g;
   wire f;
   wire e;
   wire d;
   wire c;
   wire b;
   wire a;

// Bidirs

// Instantiate the UUT
   MyMC14495 UUT (
		.D3(D3), 
		.D0(D0), 
		.LE(LE), 
		.point(point), 
		.P(P), 
		.g(g), 
		.f(f), 
		.e(e), 
		.d(d), 
		.c(c), 
		.b(b), 
		.a(a), 
		.D2(D2), 
		.D1(D1)
   );
// Initialize Inputs
   `ifdef auto_init
	integer i;
       initial begin
		D3 = 0;
		D0 = 0;
		LE = 0;
		point = 0;
		D2 = 0;
		D1 = 0;
		
		for(i=0;i<=15;i=i+1)begin
			#50;
			{D3,D2,D1,D0}=i;
			point=i;
		end
		
		#50;
		LE=1;
		  end
   `endif
endmodule
