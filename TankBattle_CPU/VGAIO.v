`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    14:43:39 01/17/2019
// Design Name:
// Module Name:    Top
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
module VGAIO(
           input wire vga_clk,
           input wire rst,
           input wire Blink,
           input wire [12:0] Cursor,
           input wire [11:0] vram_out,
           output vga_rdn,
           output reg [18:0] vga_addr,
           output reg HSYNC,
           output reg VSYNC,
           output reg [3:0] R,
           output reg [3:0] G,
           output reg [3:0] B
       );

// h_count: VGA horizontal counter (0-799)
reg [9:0] h_count; // VGA horizontal counter (0-799): pixels
// v_count: VGA vertical counter (0-524)
reg [9:0] v_count; // VGA vertical   counter (0-524): lines

// signals, will be latched for outputs
wire  [9:0] row    =  v_count - 10'd31;     // pixel ram row addr
wire  [10:0] col    =  h_count - 10'd144;    // pixel ram col addr
wire        h_sync = (h_count > 10'd96);    //  96 -> 799
wire        v_sync = (v_count <= 10'd2);     //   2 -> 524

// h [143, 783) 640 pixels
// v [35, 515) 480 lines
wire        read   = (col > 10'd0) && (col < 10'd640) && (row > 10'd0) && (row < 10'd480);
assign vga_rdn = !read;

always @ (posedge vga_clk or posedge rst) begin
    if (rst) begin
        h_count <= 10'h0;
        v_count <= 10'h0;
    end else begin
        if (h_count == 10'd799) begin
            h_count <= 10'h0;
            if (v_count == 10'd524) begin
                v_count <= 10'h0;
            end else begin
                v_count <= v_count + 10'h1;
            end
        end else begin
            h_count <= h_count + 10'h1;
        end
    end
end

// vga signals
always @ (*) begin
    if (read) begin
        vga_addr <= row * 640 + col;
    end else begin
        vga_addr <= 20'b0;
    end

    HSYNC       <=  h_sync;   // horizontal synchronization
    VSYNC       <=  v_sync;   // vertical   synchronization
    R        <=  read ? vram_out[3:0] : 4'h0; // 4-bit red
    G        <=  read ? vram_out[7:4] : 4'h0; // 4-bit green
    B        <=  read ? vram_out[11:8] : 4'h0; // 4-bit blue
end

endmodule
