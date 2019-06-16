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
module SCPU_ctrl_more( input[5:0]OPcode,						//OPcode
					   input[5:0]Fun,							//Function
						input MIO_ready,						//CPU Wait
						input zero,

						output reg RegDst,
						output reg ALUSrc_B,
						output reg [1:0]DatatoReg,
						output reg Jal,
						output reg [1:0]Branch,
						output reg RegWrite,
						output reg [2:0]ALU_Control,
						output reg mem_w,
						output reg CPU_MIO
					  );

	`define CPU_ctrl_signals {RegDst,ALUSrc_B,DatatoReg,Jal,Branch,RegWrite,ALU_Control,mem_w,CPU_MIO}
	always @* begin
        case(OPcode)
            6'b000000: 					//ALU
               case(Fun)
                  6'b100000: begin `CPU_ctrl_signals <= 13'b1000000101000;   end 	//add
                  6'b100010: begin `CPU_ctrl_signals <= 13'b1000000111000;   end 	//sub
                  6'b100100: begin `CPU_ctrl_signals <= 13'b1000000100000;   end 	//and
                  6'b100101: begin `CPU_ctrl_signals <= 13'b1000000100100;   end 	//or
                  6'b100110: begin `CPU_ctrl_signals <= 13'b1000000101100;   end 	//xor
                  6'b100111: begin `CPU_ctrl_signals <= 13'b1000000110000;   end 	//nor
                  6'b101010: begin `CPU_ctrl_signals <= 13'b1000000111100;   end 	//slt
                  6'b000010: begin `CPU_ctrl_signals <= 13'b1100000110100;   end 	//srl rt?rs? format: 000000 rt 00000 rd shamt 000010
                  6'b001000: begin `CPU_ctrl_signals <= 13'b1000011000000;   end 	//jr
                  6'b001001: begin `CPU_ctrl_signals <= 13'b1011111100000;   end 	//jalr fun code?
                  // 6'b100010: begin `CPU_ctrl_signals <= 13'b1000000000000;   end 	//eret
                  default:   begin `CPU_ctrl_signals <= 13'b1000000000000;   end
               endcase
            6'b001000: begin `CPU_ctrl_signals <= 13'b0100000101000;   end		//addi
            6'b001100: begin `CPU_ctrl_signals <= 13'b0100000100000;   end		//andi
            6'b001101: begin `CPU_ctrl_signals <= 13'b0100000100100;   end		//ori
            6'b001110: begin `CPU_ctrl_signals <= 13'b0100000101100;   end		//xori
            6'b001111: begin `CPU_ctrl_signals <= 13'b0110000100000;   end		//lui
            6'b100011: begin `CPU_ctrl_signals <= 13'b0101000101000;   end		//lw
            6'b101011: begin `CPU_ctrl_signals <= 13'b0101000001010;   end		//sw
            6'b000100: begin if (zero) begin `CPU_ctrl_signals <= 13'b0000001011000; end else begin `CPU_ctrl_signals <= 13'b0000000011000; end  end		//beq
            6'b000101: begin if (zero) begin `CPU_ctrl_signals <= 13'b0000000011000; end else begin `CPU_ctrl_signals <= 13'b0000001011000; end  end		//bne
            6'b001010: begin `CPU_ctrl_signals <= 13'b0100000111100;   end		//slti
            6'b000010: begin `CPU_ctrl_signals <= 13'b0000010000000;   end		//j
            6'b000011: begin `CPU_ctrl_signals <= 13'b0011110100000;   end		//jal
            default:   begin `CPU_ctrl_signals <= 13'b0000000000000;  end
		endcase
	end

endmodule

