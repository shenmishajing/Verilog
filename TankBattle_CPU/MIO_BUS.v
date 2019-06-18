`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    16:24:48 06/09/2017
// Design Name:
// Module Name:    MIO_BUS
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
module MIO_BUS(
           input clk,
           input rst,
           input [3:0] BTN,	// 4
           input [7:0] SW,	// 8
           input vga_rdn,
           input ps2_ready,
           input mem_w,	//  CPU
           input [7:0] key,
           input [31:0] Cpu_data2bus,	//data from CPU
           input [31:0] addr_bus,	   //addr from CPU
           input [18:0] vga_addr,
           input [31:0] ram_data_out,	//  RAM
           input [11:0] vram_out,
           input [11:0] source_out,
           input [3:0] map_out,
           input [11:0] win_out,
           input [11:0] lose_out,
           input [31:0] counter_out,	//
           input counter0_out,	//  0
           input counter1_out,	//  1
           input counter2_out,	//  2

           output MIO_ready,
           output reg [31:0] Cpu_data4bus,	// write to CPU
           output reg [31:0] ram_data_in,	// from CPU write to Memory
           output reg [11:0] ram_addr,	      // Memory Address signals
           output reg [11:0] vram_data_in,
           output wire [18:0] vram_addr,
           output reg [13:0] source_addr,
           output reg [7:0] map_addr,
           output reg [18:0] win_addr,
           output reg [18:0] lose_addr,
           output reg data_ram_we,				// RAM  RAM
           output wire vram_we,
           output reg GPIOf0000000_we,	   // GPIOf0000000_we
           output reg GPIOe0000000_we,	   // GPIOe0000000_we
           output reg counter_we,	         //������
           output reg ps2_rd,
           output reg [31:0] Peripheral_in	//���ⲿ�豸����
       );

wire counter_over;
reg vram, vram_write;
reg [18:0] cpu_vram_addr;

assign MIO_ready = vram ? vga_rdn : 1'b1;

assign vram_we = vga_rdn && vram_write;
assign vram_addr = ~vga_rdn ? vga_addr : cpu_vram_addr;

reg data_ram_rd;
reg GPIOf0000000_rd;
reg GPIOe0000000_rd;
reg counter_rd;
reg vram_rd;
reg source_rd;
reg map_rd;
reg win_rd;
reg lose_rd;


always @(*) begin

    vram = 0;
    data_ram_we = 0;			// ����д�ź�
    vram_write = 0;
    data_ram_rd=0;			// ������ź�
    counter_we = 0;			// ������д�ź�
    GPIOf0000000_we = 0;	// �豸1��PIOд�ź�
    GPIOe0000000_we = 0;	// ��������Counter_xд�ź�
    ps2_rd = 0;
    ram_addr = 12'h0;		// �ڴ�������ַ��RAM_B��ַ
    cpu_vram_addr = 13'h0;
    ram_data_in = 32'h0;	// �ڴ�����ݣ�RAM_B�������
    vram_data_in = 11'h0;
    counter_rd = 0;			// ���������ź�
    GPIOf0000000_rd = 0;	// �豸3��4��SW�ȶ��ź�
    GPIOe0000000_rd = 0;	// �豸2���߶���ʾ��д�ź�
    Peripheral_in = 32'h0;	// �������ߣ�CPU���������д������
    Cpu_data4bus = 32'h0;	// ��ʼ����   // data_ram (00000000 - 00000ffc, actually lower 4KB RAM)

    case (addr_bus[31:28])
        4'h0: begin	// data_ram (00000000 - 0fffffff, actually lower 4KB RAM)
            //(00000000 - 0000ffff, text)
            data_ram_we = mem_w;
            ram_addr = addr_bus[13:2];
            ram_data_in = Cpu_data2bus;
            data_ram_rd = ~mem_w;
            if (~mem_w) begin
                Cpu_data4bus = ram_data_out;	// read from RAM
            end
        end

        4'h1: begin	// Vram (10000000 - 1fffffff, actually lower 4KB * 12bit VRAM)
            vram_write = mem_w;
            vram = 1;
            cpu_vram_addr = addr_bus[20:2];
            vram_data_in = Cpu_data2bus[11:0];
            vram_rd = ~mem_w;
            if (~mem_w) begin
                Cpu_data4bus = vga_rdn ? {20'h0, vram_out} : 32'h0;	//read from Vram
            end
        end

        4'h2: begin	// PS2 (20000000 - 2fffffff)
            ps2_rd = ~mem_w;
            Peripheral_in = Cpu_data2bus;
            if (~mem_w) begin
                Cpu_data4bus = {ps2_ready, 23'h0, key};	//read from PS2
            end
        end

        4'h3: begin	// source (30000000 - 3fffffff)
            source_addr = addr_bus[15:2];
            source_rd = ~mem_w;
            if (~mem_w) begin
                Cpu_data4bus = {20'h0, source_out};	//read from Source
            end
        end

        4'h4: begin	// map (40000000 - 4fffffff)
            map_addr = addr_bus[9:2];
            map_rd = ~mem_w;
            if (~mem_w) begin
                Cpu_data4bus = {28'h0, map_out};	//read from Map
            end
        end

        4'h5: begin	// win (50000000 - 5fffffff)
            win_addr = addr_bus[20:2];
            win_rd = ~mem_w;
            if (~mem_w) begin
                Cpu_data4bus = {20'h0, win_out};	//read from Win
            end
        end

        4'h6: begin	// lose (60000000 - 6fffffff)
            lose_addr = addr_bus[20:2];
            lose_rd = ~mem_w;
            if (~mem_w) begin
                Cpu_data4bus = {20'h0, lose_out};	//read from Lose
            end
        end


        4'he: begin					// 7 Segement LEDs (fffffe00 - fffffeff, 4 7-seg display)
            GPIOe0000000_we = mem_w;
            Peripheral_in = Cpu_data2bus;
            GPIOe0000000_rd = ~mem_w;
            if (~mem_w) begin
                Cpu_data4bus = counter_out;	// read from Counter
            end
        end

        4'hf: begin   				// LED   (ffffff00 - ffffffff0, 8 LEDs & counter, ffffff04-fffffff4)
            if (addr_bus[2]) begin					//ffffff04 for addr of counter
                counter_we = mem_w;
                Peripheral_in = Cpu_data2bus;
                counter_rd = ~mem_w;
                if (~mem_w) begin
                    Cpu_data4bus = counter_out;	// read from Counter
                end
            end else begin					//ffffff00
                GPIOf0000000_we = mem_w;
                Peripheral_in = Cpu_data2bus;
                GPIOf0000000_rd = ~mem_w;
                if (~mem_w) begin
                    Cpu_data4bus = {counter0_out, counter1_out,  counter2_out, 9'h000, BTN, SW};	//read from SW & BTN
                end
            end
        end
    endcase

    // casex ({data_ram_rd, GPIOe0000000_rd, counter_rd, GPIOf0000000_rd, ps2_rd, vram_rd, source_rd, map_rd, win_rd, lose_rd})
    //     10'b1xxxxxxxxx: Cpu_data4bus = ram_data_out;	// read from RAM
    //     10'bx1xxxxxxxx: Cpu_data4bus = counter_out;	// read from Counter
    //     10'bxx1xxxxxxx: Cpu_data4bus = counter_out;	// read from Counter
    //     10'bxxx1xxxxxx: Cpu_data4bus = {counter0_out, counter1_out,  counter2_out, 9'h000, BTN, SW};	//read from SW & BTN
    //     10'bxxxx1xxxxx: Cpu_data4bus = {ps2_ready, 23'h0, key};	//read from PS2
    //     10'bxxxxx1xxxx: Cpu_data4bus = vga_rdn ? {20'h0, vram_out} : 32'h0;	//read from Vram
    //     10'bxxxxxx1xxx: Cpu_data4bus = {20'h0, source_out};	//read from Source
    //     10'bxxxxxxx1xx: Cpu_data4bus = {28'h0, map_out};	//read from Map
    //     10'bxxxxxxxx1x: Cpu_data4bus = {20'h0, win_out};	//read from Win
    //     10'bxxxxxxxxx1: Cpu_data4bus = {20'h0, lose_out};	//read from Lose
    // endcase
end
endmodule
