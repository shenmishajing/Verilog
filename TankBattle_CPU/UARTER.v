`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:36 03/06/2016 
// Design Name: 
// Module Name:    UARTER 
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
module 	  UARTER#(parameter COUNTER_MSB = 9,				//������λ�Ĵ�������
						 parameter WIDTH = 8,						//����λ��
						 parameter DEPTH_BITS = 7)					//���г���
						(input clk,										//����ͬ��ʱ��100MHz
						 input rst,  
						 input Start,									//��������
						 input rd,										//���ն��ж��ź�
						 input [COUNTER_MSB-1:0] halfPeriod,	//����9'd434
						 input [31:0] Tx_Data,						//��������
						 input RXD, 									//���н����ź�
						 				 
						 
						 output TXD,                    			//���з����ź�
						 output TxEnd,          					//�������ݽ���
						 output [WIDTH-1:0]Rx_Do,					//�������ݻ�����
						 output ready,
						 output [31:0]TESTD
						 );
						 

endmodule
