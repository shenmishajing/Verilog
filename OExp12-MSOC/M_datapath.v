`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    20:07:00 05/14/2019
// Design Name:
// Module Name:    M_datapath
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
module 	   M_datapath(input clk,
                      input reset,
                      input MIO_ready,		//�ⲿ����=1
                      input IorD,
                      input IRWrite,
                      input[1:0] RegDst,	//Ԥ����2λ
                      input RegWrite,
                      input[1:0]MemtoReg,	//Ԥ����2λ
                      input ALUSrcA,
                      input[1:0]ALUSrcB,
                      input[1:0]PCSource,	//4ѡ1����
                      input PCWrite,
                      input PCWriteCond,
                      input Branch,
                      input[2:0]ALU_operation,

                      output[31:0]PC_Current,
                      input[31:0]data2CPU,
                      output[31:0]Inst,
                      output[31:0]data_out,
                      output[31:0]M_addr,
                      output zero,
                      output overflow
                     );
wire N0=1'b0,V5=1'b1;
wire[31:0] rdata_A,ALU_Out,MDR,w_reg_data,Alu_A,Alu_B,res,PC_Next;
wire[4:0] reg_Rs_addr_A = Inst[25:21];   		//REG Source 1  rs
wire[4:0] reg_Rt_addr_B = Inst[20:16];   		//REG Source 2 or Destination rt
wire[4:0] reg_rd_addr = Inst[15:11];	       	//REG Destination rd
wire[4:0] reg_Wt_addr;
wire[15:0] imm = Inst[15:0]; 	       			//Immediate
wire[31:0] imm_32 = {{16{imm[15]}},imm}; 	    //Immediate

Regs    regs(.clk(clk),
             .rst(reset),
             .R_addr_A(reg_Rs_addr_A),  //Inst(25:21)
             .R_addr_B(reg_Rt_addr_B), 	//Inst(20:16)
             .Wt_addr(reg_Wt_addr), 	//����MUX1���������
             .Wt_data(w_reg_data),		//����MUX2���������
             .L_S(RegWrite), 	       	//���Կ�����
             .rdata_A(rdata_A), 		//��MUX4
             .rdata_B(data_out)			//��MUX3//data_out(31:0)
            );

// reg write data port
MUX4T1_32    	   MUX2(.I0(ALU_Out), 		//ALU OP
                      .I1(MDR), 			//LW
                      .I2({imm, 16'h0000}), 	// not use
                      .I3(PC_Current),	// not use
                      .s(MemtoReg),
                      .o(w_reg_data)
                     );

// reg write addr port
MUX4T1_5      MUX1(.I0(reg_Rt_addr_B), 	//reg addr=IR[21:16]
                   .I1(reg_rd_addr), 	//reg addr=IR[15:11], LW or lui
                   .I2(5'b11111),		// not use
                   .I3(5'b00000),		// not use
                   .s(RegDst),
                   .o(reg_Wt_addr)
                  );

ALU   x_ALU(.A(Alu_A),
            .B(Alu_B),
            .ALU_operation(ALU_operation),
            .res(res),
            .zero(zero),
            .overflow(overflow)
           );

MUX2T1_32    MUX4 (.I0(PC_Current), 	// PC
                   .I1(rdata_A), 		// reg out A
                   .s(ALUSrcA),
                   .o(Alu_A)
                  );

MUX4T1_32      MUX3(.I0(data_out), 		//reg out B
                    .I1(32'h00000004), 			//4 for PC+4, //4
                    .I2(imm_32),		//����չimm//Imm_32(31:0)
                    .I3({imm_32[29:0],N0,N0}),		//����չoffset//Imm_32(29:0),N0,N0
                    .s(ALUSrcB),
                    .o(Alu_B)
                   );

REG32	     ALUOut(.clk(clk),
                  .rst(N0),
                  .CE(V5),
                  .D(res),
                  .Q(ALU_Out)
                 );

REG32	       IR(.clk(clk),
                .rst(reset),
                .CE(IRWrite),
                .D(data2CPU),
                .Q(Inst)
               );

REG32	       MDRR(.clk(clk),
                  .rst(N0),
                  .CE(V5),
                  .D(data2CPU),
                  .Q(MDR)
                 );

MUX2T1_32      MUX5 (.I0(PC_Current), 	//IF
                     .I1(ALU_Out),  	//access memory
                     .s(IorD),
                     .o(M_addr)
                    );

MUX4T1_32      MUX6(.I0(res), 		//reg out B
                    .I1(ALU_Out), 			//4 for PC+4, //4
                    .I2({PC_Current[31:28],Inst[25:0],N0,N0}),		//����չoffset//Imm_32(29:0),N0,N0
                    .I3(rdata_A),		//����չimm//Imm_32(31:0)
                    .s(PCSource),
                    .o(PC_Next)
                   );

REG32	PC(.clk(clk),
         .rst(reset),
         .CE(MIO_ready&(PCWrite|(PCWriteCond&(Branch^~zero)))),
         .D(PC_Next),
         .Q(PC_Current)
        );


endmodule

