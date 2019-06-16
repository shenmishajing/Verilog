`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:58:11 07/01/2012 
// Design Name: 
// Module Name:    Device_led 
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
module 		 SPIO(input clk,							//ʱ��
						input rst,                    //��λ
						input Start,                  //����ɨ������
						input EN,                     //PIO/LED��ʾˢ��ʹ��
						input [31:0] P_Data,          //�������룬���ڴ����������
						output reg[1:0] counter_set,  //���ڼ���/��ʱģ����ƣ���ʵ�鲻��
						output [15:0] LED_out,        //�����������
						output wire led_clk,          //������λʱ��
						output wire led_sout,         //�������
						output wire led_clrn,         //LED��ʾ����
						output wire LED_PEN,          //LED��ʾˢ��ʹ��
						output reg[13:0] GPIOf0			//���ã�GPIO			 
						);
						
	reg [15:0] LED;
	
	assign LED_out = LED;
	
	always @(negedge clk or posedge rst) begin
		if (rst) begin
			LED <= 8'h2A;
			counter_set <= 2'b0;
		end else begin
			if (EN) begin
				{GPIOf0, LED, counter_set} <= P_Data;
			end else begin
				LED <= LED;
				counter_set <= counter_set;
			end
		end
	end
	
	LED_P2S LED_P2S(	clk, rst, Start, 
							{~{LED[0], LED[1], LED[2], LED[3], LED[4], LED[5], LED[6], LED[7], LED[8], LED[9], LED[10], LED[11], LED[12], LED[13], LED[14], LED[15]}},
							led_clk, led_clrn, led_sout, LED_PEN);
							
endmodule    