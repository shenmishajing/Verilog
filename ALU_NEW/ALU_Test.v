// Verilog test fixture created from schematic Z:\Verilog\ALU_NEW\ALU.sch - Tue Mar 19 20:32:09 2019

`timescale 1ns / 1ps

module ALU_ALU_sch_tb();

// Inputs
   reg [31:0] A;
   reg [31:0] B;
   reg [2:0] ALU_operation;

// Output
   wire [31:0] res;
   wire zero;
   wire overflow;

// Bidirs

// Instantiate the UUT
   ALU UUT (
		.A(A), 
		.B(B), 
		.ALU_operation(ALU_operation), 
		.res(res), 
		.zero(zero), 
		.overflow(overflow)
   );
// Initialize Inputs
   initial begin
		A = 0;
		B = 0;
		ALU_operation = 0;
		A=32'hA5A5A5A5;
	B=32'h5A5A5A5A;
	ALU_operation =3'b111;
	#100;
	ALU_operation =3'b110;
	#100;
	ALU_operation =3'b101;
	#100;
	ALU_operation =3'b100;
	#100;
	ALU_operation =3'b011;
	#100;
	ALU_operation =3'b010;
	#100;
	ALU_operation =3'b001;
	#100;
	ALU_operation =3'b000;
	#100;
	A=32'h01234567;
	B=32'h76543210;
	ALU_operation =3'b111;


	end
endmodule
