`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:40:23 06/17/2019
// Design Name:   TankBattle_CPU
// Module Name:   Z:/Verilog/Test/Test.v
// Project Name:  Test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TankBattle_CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test;

	// Inputs
	reg rst;
	reg [15:0] SW;
	reg clk_100MHz;
	reg [3:0] BTN_y;
	reg PS2_clk;
	reg PS2_data;

	// Outputs
	wire [11:0] ram_addr;
	wire [31:0] ram_data_in;
	wire [31:0] ram_data_out;
	wire vga_rdn;
	wire [18:0] vga_addr;
	wire read;
	wire [9:0] row;
	wire [10:0] col;
	wire [9:0] h_count;
	wire [9:0] v_count;
	wire [18:0] cpu_vram_addr;
	wire vram;
	wire vram_write;
	wire [18:0] vram_addr;
	wire [11:0] vram_data_in;
	wire [11:0] vram_out;
	wire [13:0] source_addr;
	wire [11:0] source_out;
	wire [7:0] map_addr;
	wire [3:0] map_out;
	wire [31:0] Addr_out;
	wire [31:0] inst;
	wire [31:0] PC;
	wire [31:0] Data_in;
	wire mem_w;
	wire ps2_rd;
	wire data_ram_rd;
	wire GPIOf0000000_rd;
	wire GPIOe0000000_rd;
	wire counter_rd;
	wire vram_rd;
	wire source_rd;
	wire map_rd;
	wire win_rd;
	wire lose_rd;
	wire MIO_ready;
	wire [4:0] state;
	wire [31:0] rdata_A;
	wire [31:0] Data_out;
	wire [31:0] res;
	wire [4:0] reg_Rs_addr_A;
	wire [4:0] reg_Rt_addr_B;
	wire [4:0] reg_Wt_addr;
	wire [31:0] w_reg_data;
	wire Clk_CPU;
	wire [31:0] Div;
	wire HSYNC;
	wire VSYNC;
	wire [3:0] Red;
	wire [3:0] Green;
	wire [3:0] Blue;
	wire [4:0] BTN_x;
	wire CR;
	wire RDY;
	wire readn;
	wire seg_clk;
	wire seg_sout;
	wire SEG_PEN;
	wire seg_clrn;
	wire led_clk;
	wire led_sout;
	wire LED_PEN;
	wire led_clrn;
	wire [7:0] SEGMENT;
	wire [3:0] AN;
	wire [7:0] LED;
	wire Buzzer;

	// Instantiate the Unit Under Test (UUT)
	TankBattle_CPU uut (
		.rst(rst), 
		.SW(SW), 
		.clk_100MHz(clk_100MHz), 
		.BTN_y(BTN_y), 
		.PS2_clk(PS2_clk), 
		.PS2_data(PS2_data), 
		.ram_addr(ram_addr), 
		.ram_data_in(ram_data_in), 
		.ram_data_out(ram_data_out), 
		.vga_rdn(vga_rdn), 
		.vga_addr(vga_addr), 
		.read(read), 
		.row(row), 
		.col(col), 
		.h_count(h_count), 
		.v_count(v_count), 
		.cpu_vram_addr(cpu_vram_addr), 
		.vram(vram), 
		.vram_write(vram_write), 
		.vram_addr(vram_addr), 
		.vram_data_in(vram_data_in), 
		.vram_out(vram_out), 
		.source_addr(source_addr), 
		.source_out(source_out), 
		.map_addr(map_addr), 
		.map_out(map_out), 
		.Addr_out(Addr_out), 
		.inst(inst), 
		.PC(PC), 
		.Data_in(Data_in), 
		.mem_w(mem_w), 
		.ps2_rd(ps2_rd), 
		.data_ram_rd(data_ram_rd), 
		.GPIOf0000000_rd(GPIOf0000000_rd), 
		.GPIOe0000000_rd(GPIOe0000000_rd), 
		.counter_rd(counter_rd), 
		.vram_rd(vram_rd), 
		.source_rd(source_rd), 
		.map_rd(map_rd), 
		.win_rd(win_rd), 
		.lose_rd(lose_rd), 
		.MIO_ready(MIO_ready), 
		.state(state), 
		.rdata_A(rdata_A), 
		.Data_out(Data_out), 
		.res(res), 
		.reg_Rs_addr_A(reg_Rs_addr_A), 
		.reg_Rt_addr_B(reg_Rt_addr_B), 
		.reg_Wt_addr(reg_Wt_addr), 
		.w_reg_data(w_reg_data), 
		.Clk_CPU(Clk_CPU), 
		.Div(Div), 
		.HSYNC(HSYNC), 
		.VSYNC(VSYNC), 
		.Red(Red), 
		.Green(Green), 
		.Blue(Blue), 
		.BTN_x(BTN_x), 
		.CR(CR), 
		.RDY(RDY), 
		.readn(readn), 
		.seg_clk(seg_clk), 
		.seg_sout(seg_sout), 
		.SEG_PEN(SEG_PEN), 
		.seg_clrn(seg_clrn), 
		.led_clk(led_clk), 
		.led_sout(led_sout), 
		.LED_PEN(LED_PEN), 
		.led_clrn(led_clrn), 
		.SEGMENT(SEGMENT), 
		.AN(AN), 
		.LED(LED), 
		.Buzzer(Buzzer)
	);

	initial begin
		// Initialize Inputs
		rst = 1;
		SW = 0;
		clk_100MHz = 0;
		BTN_y = 0;
		PS2_clk = 0;
		PS2_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
        
		// Add stimulus here

	end
      
	always begin
		clk_100MHz = ~clk_100MHz;
		#1;
	end
      
endmodule

