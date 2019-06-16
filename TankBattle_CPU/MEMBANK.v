`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    15:38:46 03/17/2019
// Design Name:
// Module Name:    MEMBANK
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
module 	 MEMBANK#(parameter COUNTER_MSB = 9,				//������λ�Ĵ�������
                  parameter WIDTH = 8,						//����λ��
                  parameter DEPTH_BITS = 7,					//���г���
                  parameter ADDR_WIDTH = 12)				//�洢���������
         (input clk,										//����ͬ��ʱ��100MHz
          input rst,
          input Start,									//��������
          input PROG,									//PROG=1�洢�����
          input clkm, 									//BLOCK MEMʱ��
          input WR, 										//BLOCK MEMд�ź�
          input enm,										//BLOCK MEMʹ��
          input [ADDR_WIDTH-1:0]Addr,
          input [31:0] MDi,								//�洢��д������

          // input rd,										//���ն��ж��ź�
          input [COUNTER_MSB-1:0] halfPeriod,	//����9'd434
          // input [7:0] Tx_Data,						//��������
          input RXD,										//���н����ź�

          output TXD,                    			//���з����ź�
          output TxEnd,   		       				//�������ݽ���
          output mclk,									//MEM BANKдʱ��
          output MWR,									//MEM BANKд�ź�
          output MEN,									//MEM BANKʹ��
          output [11:0]MAddr,							//MEM BANK���ʵ�ַ
          output [31:0]MBDi,							//MEM BANKд������:PROG=ʱΪ�������
          output [31:0]MDo,							//MEM BANK��������
          output [31:0]TESTD
         );

wire[7:0]Rx_Do;													//RXD��������

UARTER	//#(.COUNTER_MSB(9),									//������λ�Ĵ�������
       //.WIDTH(8),											//����λ��
       //.DEPTH_BITS(7))										//���г���
       MEM(.clk(clk),											//����ͬ��ʱ��100MHz
           .rst(rst),
           .Start(wd),										//��������####
           .rd(rd),												//���ն��ж��ź�
           .halfPeriod(halfPeriod),						//����9'd434
           .Tx_Data(MBDi),								   //��������####
           .RXD(RXD),											//���н����ź�

           .TXD(TXD),                    				//���з����ź�
           .Rx_Do(Rx_Do),										//�������ݻ�����
           .TxEnd(TxEnd),          						//�������ݽ���
           .ready(ready),
           .TESTD(TESTD)	);


BYTE2WORD		//#(.ADDR_WIDTH(12))
           U103(.clk(clk),
                .rst(rst),
                .clkm(clkm),
                .WR(WR),
                .enm(enm),
                .Addr(Addr),
                .MMDi((PROG == 1'b1 && Start == 1'b1) ? MDo : MDi), // ֻ���ڶ�д���ض�1��ʱ���MDo
                .progEn(PROG),								//MEMBANK��̿���
                .readEn(Start),
                .ByteEn(ready),							//�������������Ч
                .Byte(Rx_Do), 								//�����������
                .BRD(rd),									//���ж��ź�
                .BWD(wd), 									//###
                .MAddr(MAddr), 							//MEM BLOCK���ʵ�ַ
                .MMDo(MBDi), 								//MEM BANKд���ݣ�MDi��������
                .mclk(mclk),								//BLOCK Memoryʱ��
                .MWR(MWR), 									//MEM BANK д�ź�
                .MEN(MEN)		);							//MEM BANK ʹ��


//assign MDo = 32'h 123456789;
RAM_U	 	 U105(.clka(mclk),
              .wea(MWR),
              .addra(MAddr),
              .dina(MBDi),
              .douta(MDo)
             );


endmodule
