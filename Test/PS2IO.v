`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    15:15:20 01/11/2019
// Design Name:
// Module Name:    PS2
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
module PS2IO(
           input wire io_read_clk,
           input wire clk,
           input wire rst,
           input PS2_clk,
           input wire RD,
           input wire PS2_data,
           output wire [7:0] key,
           output wire [7:0] testkey,
           output wire PS2Ready,
           output wire [31:0] Scancode
       );


reg [3:0]num; //循环计数�
reg [7:0]temp_data;
reg ps2clk0,ps2clk1,ps2clk2;//用于检测ps2时钟下降�
reg [9:0]output_data;

wire neg_ps2clk;

reg data_ready;

reg key_expand;
reg data_break;

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        ps2clk0 <= 1'b0;
        ps2clk1 <= 1'b0;
        ps2clk2 <= 1'b0;
    end
    else
    begin
        ps2clk0 <= PS2_clk;
        ps2clk1 <= ps2clk0;
        ps2clk2 <= ps2clk1;
    end
end

assign neg_ps2clk = ~ps2clk1 & ps2clk2;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        num <= 4'b0;
    end else if(num == 4'd11)
        num <= 4'd0;
    else if(neg_ps2clk)
        num <= num + 1'b1;
end

reg negedge_PS2_clk_shift;

always @ (posedge clk) begin
    negedge_PS2_clk_shift <= neg_ps2clk;
end

always @(posedge clk or posedge rst) begin
    if(rst) begin
        temp_data <= 8'd0;
    end else if(negedge_PS2_clk_shift) begin
        case (num)
            4'd2: temp_data[0] <= PS2_data;
            4'd3: temp_data[1] <= PS2_data;
            4'd4: temp_data[2] <= PS2_data;
            4'd5: temp_data[3] <= PS2_data;
            4'd6: temp_data[4] <= PS2_data;
            4'd7: temp_data[5] <= PS2_data;
            4'd8: temp_data[6] <= PS2_data;
            4'd9: temp_data[7] <= PS2_data;
            default : temp_data <= temp_data;
        endcase
    end else
        temp_data <= temp_data;
end


always @(posedge clk or posedge rst) begin
    if(rst) begin
        data_break <= 1'b0;
        output_data <= 10'd0;
        data_ready <= 1'b0;
        key_expand <= 1'b0;
    end else if (num == 4'd11) begin
        if(temp_data == 8'hE0)
            key_expand <= 1'b1;
        else if(temp_data == 8'hF0)
            data_break <= 1'b1;
        else begin
            output_data <= {key_expand,data_break,temp_data};
            data_ready <= 1'b1;
            key_expand <= 1'b0;
            data_break <= 1'b0;
        end
    end else begin
        output_data <= output_data;
        data_ready <= 1'b0;
        key_expand <= key_expand;
        data_break <= data_break;
    end
end

assign key = output_data[7:0];
assign testkey = output_data[7:0];
assign Scancode = {21'b0, output_data};
assign PS2Ready = data_ready;



endmodule
