`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    17:45:24 05/22/2019
// Design Name:
// Module Name:    OExp12_MSOC
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
module TankBattle_CPU(
           input RSTN,
           input[15:0] SW,
           input clk_100MHz,
           input[3:0] BTN_y,
           input RXD,
           input wire PS2_clk,
           input wire PS2_data,
           output wire HSYNC,
           output wire VSYNC,
           output wire [3:0] Red,
           output wire [3:0] Green,
           output wire [3:0] Blue,
           output TXD,
           output[4:0] BTN_x,
           output CR,
           output RDY,
           output readn,
           output seg_clk,
           output seg_sout,
           output SEG_PEN,
           output seg_clrn,
           output led_clk,
           output led_sout,
           output LED_PEN,
           output led_clrn,
           output[7:0] SEGMENT,
           output[3:0] AN,
           output[7:0] LED,
           output Buzzer
       );

wire V5,N0;

assign V5     = 1'b1;
assign Buzzer = 1'b1;
assign N0     = 1'b0;

wire Clk_CPU, mem_w, data_ram_we, vram_we, IO_clk, GPIOE00, GPIOF00, counter0_out, counter1_out, counter2_out, counter_we, MIO_ready, vga_rdn, ps2_ready, ps2_rd;
wire[3:0] BTN_OK, Pulse;
wire[4:0] Key_out, state, map_out;
wire[7:0] point_out, LE_out, blink, key, testkey, map_addr;
wire[11:0] vram_data_in, vram_out, source_out, win_out, lose_out;
wire[11:0] ram_addr;
wire[13:0] source_addr;
wire[18:0] vram_addr, vga_addr, win_addr, lose_addr;
wire[15:0] SW_OK, GPIO;
wire[31:0] inst, PC, Addr_out, Data_in, Data_out, ram_data_in, ram_data_out, CPU2IO, Counter_out, Div, Disp_num, Ai, Bi, key_d;

assign IO_clk = ~Clk_CPU;

assign win_out = 12'h0f0;
assign lose_out = 12'h00f;

Muliti_CPU U1(
               .clk(Clk_CPU),
               .reset(rst),
               .inst_out(inst),
               .INT(counter0_out),
               .PC_out(PC),
               .mem_w(mem_w),
               .Addr_out(Addr_out),
               .Data_in(Data_in),
               .Data_out(Data_out),
               .state(state),
               .CPU_MIO(),
               .MIO_ready(MIO_ready)
           );

MEMBANK U2(
            .clk(clk_100MHz),										//����ͬ��ʱ��100MHz
            .rst(rst),
            .Start(SW_OK[13]),									//������?
            .PROG(SW_OK[14]),									//PROG=1�洢����?
            .clkm(~clk_100MHz), 									//BLOCK MEMʱ��
            .WR(data_ram_we), 										//BLOCK MEMд��?
            .enm(),										//BLOCK MEMʹ��
            .Addr(ram_addr),
            .MDi(ram_data_in),								//�洢��д����?
            .halfPeriod(9'd434),	//����9'd434
            .RXD(RXD),										//���н����ź�
            .TXD(TXD),                    			//���з�����?
            .TxEnd(),   		       				//�������ݽ�?
            .mclk(),									//MEM BANKдʱ?
            .MWR(),									//MEM BANKд��?
            .MEN(),									//MEM BANKʹ��
            .MAddr(),							//MEM BANK���ʵ�ַ
            .MBDi(),							//MEM BANKд������:PROG=ʱΪ�������
            .MDo(ram_data_out),							//MEM BANK��������
            .TESTD()
        );

// RAM_U	 	 U2(
//              .clka(clk_100MHz),
//              .wea(data_ram_we),
//              .addra(ram_addr),
//              .dina(ram_data_in),
//              .douta(ram_data_out)
//          );

VRAM_B U3(
           .addra(vram_addr),
           .wea(vram_we),
           .dina(vram_data_in),
           .clka(clk_100MHz),
           .douta(vram_out)
       );

Source_RAM U31(
               .addra(source_addr),
               .clka(clk_100MHz),
               .douta(source_out)
           );

Map_RAM U32(
            .addra(map_addr),
            .clka(clk_100MHz),
            .douta(map_out)
        );

// Win_RAM U33(
//             .addra(win_addr),
//             .clka(clk_100MHz),
//             .douta(win_out)
//         );

// Lose_RAM U34(
//             .addra(lose_addr),
//             .clka(clk_100MHz),
//             .douta(lose_out)
//         );

MIO_BUS U4(
            .clk(clk_100MHz),
            .rst(rst),
            .BTN(BTN_OK),
            .SW(SW_OK[7:0]),
            .mem_w(mem_w),
            .Cpu_data2bus(Data_out),
            .addr_bus(Addr_out),
            .ram_data_out(ram_data_out),
            .vram_out(vram_out),
            .source_out(source_out),
            .map_out(map_out),
            .win_out(win_out),
            .lose_out(lose_out),
            .counter_out(Counter_out),
            .counter0_out(counter0_out),
            .counter1_out(counter1_out),
            .counter2_out(counter2_out),
            .MIO_ready(MIO_ready),
            .Cpu_data4bus(Data_in),
            .ram_data_in(ram_data_in),
            .ram_addr(ram_addr),
            .data_ram_we(data_ram_we),
            .vram_data_in(vram_data_in),
            .vram_addr(vram_addr),
            .source_addr(source_addr),
            .map_addr(map_addr),
            .win_addr(win_addr),
            .lose_addr(lose_addr),
            .vram_we(vram_we),
            .vga_rdn(vga_rdn),
            .vga_addr(vga_addr),
            .key(key),
            .ps2_ready(ps2_ready),
            .ps2_rd(ps2_rd),
            .GPIOf0000000_we(GPIOF00),
            .GPIOe0000000_we(GPIOE00),
            .counter_we(counter_we),
            .Peripheral_in(CPU2IO)
        );

Multi_8CH32 U5(
                .clk(IO_clk),
                .rst(rst),
                .EN(GPIOE00),
                .Test(SW_OK[7:5]),
                .point_in({Div, Div[31:13], state, N0, N0, N0, N0, N0, N0, N0, N0}),
                .LES(64'b0),
                .Data0(CPU2IO),
                .data1({N0,N0,PC[31:2]}),
                .data2(inst),
                .data3(Counter_out),
                .data4(Addr_out),
                .data5(Data_out),
                .data6(key_d),
                .data7(PC),
                .point_out(point_out),
                .LE_out(LE_out),
                .Disp_num(Disp_num)
            );

SSeg7_Dev U6(
              .clk(clk_100MHz),
              .rst(rst),
              .Start(Div[20]),
              .SW0(SW_OK[0]),
              .flash(Div[25]),
              .Hexs(Disp_num),
              .point(point_out),
              .LES(LE_out),
              .seg_clk(seg_clk),
              .seg_sout(seg_sout),
              .SEG_PEN(SEG_PEN),
              .seg_clrn(seg_clrn)
          );

SPIO U7(
         .clk(IO_clk),
         .rst(rst),
         .Start(Div[20]),
         .EN(GPIOF00),
         .GPIOf0(GPIO),
         .P_Data(CPU2IO),
         .led_clk(led_clk),
         .led_sout(led_sout),
         .led_clrn(led_clrn),
         .LED_PEN(LED_PEN)
     );

clk_div U8(
            .clk(clk_100MHz),
            .rst(rst),
            .SW2(SW_OK[2]),
            .clkdiv(Div),
            .Clk_CPU(Clk_CPU)
        );

SAnti_jitter U9(
                 .clk(clk_100MHz),
                 .RSTN(RSTN),
                 .readn(readn),
                 .Key_y(BTN_y),
                 .Key_x(BTN_x),
                 .SW(SW),
                 .Key_out(Key_out),
                 .Key_ready(RDY),
                 .pulse_out(Pulse),
                 .BTN_OK(BTN_OK),
                 .SW_OK(SW_OK),
                 .CR(CR),
                 .rst(rst)
             );

Counter_x U10(
              .clk(IO_clk),
              .rst(rst),
              .clk0(Div[8]),
              .clk1(Div[9]),
              .clk2(Div[10]),
              .counter_we(counter_we),
              .counter_val(CPU2IO),
              .counter_ch(GPIO[1:0]),
              .counter0_OUT(counter0_out),
              .counter1_OUT(counter1_out),
              .counter2_OUT(counter2_out),
              .counter_out(Counter_out)
          );

VGAIO U12(
          .vga_clk(Div[1]),
          .rst(rst),
          .vga_rdn(vga_rdn),
          .vga_addr(vga_addr),
          .vram_out(vram_out),
          .Blink(Div[24]),
          .Cursor(GPIO[14:2]),
          .HSYNC(HSYNC),
          .VSYNC(VSYNC),
          .R(Red),
          .G(Green),
          .B(Blue)
      );

PS2IO U13(
          .io_read_clk(Clk_CPU),
          .clk(clk_100MHz),
          .rst(rst),
          .key(key),
          .PS2Ready(ps2_ready),
          .RD(ps2_rd),
          .testkey(testkey),
          .Scancode(key_d),
          .PS2_clk(PS2_clk),
          .PS2_data(PS2_data)
      );

SEnter_2_32 M4(
                .clk(clk_100MHz),
                .BTN(BTN_OK[2:0]),
                .Ctrl({SW_OK[7:5],SW_OK[15],SW_OK[0]}),
                .D_ready(RDY),
                .Din(Key_out),
                .readn(readn),
                .Ai(Ai),
                .Bi(Bi),
                .blink(blink)
            );

Seg7_Dev U61(
             .Scan({SW_OK[1],Div[19:18]}),
             .SW0(SW_OK[0]),
             .flash(Div[25]),
             .Hexs(Disp_num),
             .point(point_out),
             .LES(LE_out),
             .SEGMENT(SEGMENT),
             .AN(AN)
         );

PIO U71(
        .clk(IO_clk),
        .rst(rst),
        .EN(GPIOF00),
        .GPIOf0(),
        .PData_in(CPU2IO),
        .LED_out(LED)
    );

endmodule
