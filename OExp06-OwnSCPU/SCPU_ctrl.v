`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:12:36 05/26/2014 
// Design Name: 
// Module Name:    SCPU_ctrl 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SCPU_ctrl( input[5:0]OPcode,						//OPcode
					   input[5:0]Fun,							//Function						
						input MIO_ready,						//CPU Wait
						
						output RegDst,
						output ALUSrc_B,
						output MemtoReg,
						output Jump,
						output Branch,
						output RegWrite,
						output mem_w,
						output [2:0]ALU_Control,
						output CPU_MIO
					  );
					  
					  wire R_format, LW, SW, Beq;
					  wire [1:0] ALUop;
					  assign R_format = ~(OPcode[0] | OPcode[1] | OPcode[2] | OPcode[3] | OPcode[4] | OPcode[5]);
					  assign LW = OPcode[0] & OPcode[1] & ~OPcode[2] & ~OPcode[3] & OPcode[5];
					  assign SW = OPcode[0] & OPcode[1] & ~OPcode[2] & OPcode[3] & OPcode[5];
					  assign Beq = ~OPcode[0] & ~OPcode[1] & OPcode[2] & ~OPcode[3] & ~OPcode[5];
					  
					  assign RegDst = R_format;
					  assign ALUSrc_B = LW | SW;
					  assign MemtoReg = LW;
					  assign Jump = ~OPcode[0] & OPcode[1] & ~OPcode[2] & ~OPcode[3] & ~OPcode[5];
					  assign Branch = Beq;
					  assign RegWrite = R_format | LW;
					  assign mem_w = SW;
					  assign ALUop[0] = Beq;
					  assign ALUop[1] = R_format;
					  assign CPU_MIO = 1'b0;
					  
					  wire t1, t2, t3;
					  assign t1 = ALUop[1] & Fun[1];
					  assign t2 = Fun[0] & ~Fun[1];
					  assign t3 = t2 | Fun[3];
					  
					  assign ALU_Control[0] = t3 & ALUop[1];
					  assign ALU_Control[1] = ~(Fun[2] & ALUop[1]);
					  assign ALU_Control[2] = t1 | ALUop[0];

endmodule

