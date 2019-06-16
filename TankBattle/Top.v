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
module Top(
           input wire clk,
           input wire clrn,
           input wire PS2_clk,
           input wire PS2_data,
           output reg hs,
           output reg vs,
           output reg [3:0] r,
           output reg [3:0] g,
           output reg [3:0] b
       );



reg [1:0]clkdiv;

always@(posedge clk) begin
    clkdiv <= clkdiv + 1'b1;
end

// h_count: VGA horizontal counter (0-799)
reg [9:0] h_count; // VGA horizontal counter (0-799): pixels
reg [3:0] H;		 // point in map
reg [4:0] h;		 // point in picture
reg [4:0] hh;		 // point in heart
// v_count: VGA vertical counter (0-524)
reg [9:0] v_count; // VGA vertical   counter (0-524): lines
reg [3:0] V;		 // point in map
reg [4:0] v;		 // point in picture
reg [4:0] vh;		 // point in heart
reg [3:0] n;		 // nth heart
reg [13:0] addr;	 // addr for picture
reg [7:0] ramaddr, upaddr, leftaddr, downaddr, rightaddr;
reg [4:0] health;	//first and second tanke's health

reg change;

// signals, will be latched for outputs
wire  [9:0] row    =  v_count - 10'd35;     // pixel ram row addr
wire  [9:0] col    =  h_count - 10'd143;    // pixel ram col addr
wire        h_sync = (h_count > 10'd95);    //  96 -> 799
wire        v_sync = (v_count > 10'd1);     //   2 -> 524
wire        read   = (h_count > 10'd142) && // 143 -> 782
            (h_count < 10'd783) && //        640 pixels
            (v_count > 10'd34)  && //  35 -> 514
            (v_count < 10'd515);   //        480 lines
reg [11:0] date;
reg [11:0] Cdate;
wire [11:0] win, lose;
wire [15:0] vga_date;
reg [1:0]flag = 0;


reg [2:0]Fir, Sec;
reg [7:0]FLoc, SLoc;
reg [3:0]type;
wire [7:0]out, up, left, down, right;
reg [31:0]cnt;
reg clk_200ms;
wire [9:0]data;
wire ready;
reg [1:0]clkd;




PS2 PS20(.clk(clk), .rst(~clrn), .ps2_clk(PS2_clk), .ps2_data(PS2_data), .data(data), .ready(ready));

source source0(.clka(clk), .addra(addr), .douta(vga_date));


MapCore mapcore0(.clka(clk),.douta(out),.addra(ramaddr));


MapCore mapcore1(.clka(clk),.douta(up),.addra(upaddr));
MapCore mapcore2(.clka(clk),.douta(left),.addra(leftaddr));
MapCore mapcore3(.clka(clk),.douta(down),.addra(downaddr));
MapCore mapcore4(.clka(clk),.douta(right),.addra(rightaddr));


WinCore wincore0(.clka(clk),.douta(win),.addra(row * 640 + col));
LoseCore losecore0(.clka(clk),.douta(lose),.addra(row * 640 + col));

always @(posedge clk) begin
    case (flag)
        2'b00:date <= vga_date[11:0];
        2'b01:date <= Cdate;
        2'b10:date <= win;
        2'b11:date <= lose;
        default:date <= 0;
    endcase
end

initial begin
    h_count <=0;
    H <=0;
    h <=0;
    hh <=0;
    v_count <=0;
    V <=0;
    v <=0;
    vh <=0;
    n <=0;
    health <= 20;

    FLoc <= 8'h60;
    SLoc <= 8'h8;
    type <= 4'd4;

    Fir <= 0;
    Sec <= 0;

end

always @ (posedge clkdiv[1]) begin
    if (!clrn) begin
        h_count <= 10'h0;
        H <= 3'd0;
        h <= 4'd0;
        hh <= 5'd0;
    end else begin

        if ((col > 10'd49) && (col < 10'd440)) begin
            if (h == 5'd29) begin
                h <= 5'd0;
                if (H == 4'd12) begin
                    H <= 4'd0;

                end else begin
                    H <= H + 4'd1;

                end
            end else begin
                h <= h + 5'd1;
            end
        end

        if ((col > 10'd494) && (col < 10'd525) || (col > 10'd539) && (col < 10'd570)) begin
            if (hh == 5'd29) begin
                hh <= 5'd0;
            end else begin
                hh <= hh + 5'd1;
            end
        end

        if (h_count == 10'd799) begin
            h_count <= 10'h0;
        end else begin
            h_count <= h_count + 10'h1;
        end
    end
end

always @ (posedge clkdiv[1] or negedge clrn) begin
    if (!clrn) begin
        v_count <= 10'h0;
        V <= 3'd0;
        v <= 4'd0;
        vh <= 5'd0;
        n <= 4'd0;

    end else if (h_count == 10'd799) begin

        if ((row > 10'd44) && (row < 10'd435)) begin
            if (v == 5'd29) begin
                v <= 5'd0;
                if (V == 4'd12) begin
                    V <= 4'd0;

                end else begin
                    V <= V + 4'd1;

                end
            end else begin
                v <= v + 5'd1;
            end
        end

        if ((row > 10'd74) && (row < 10'd105 + 10 * 30)) begin
            if (vh == 5'd29) begin
                vh <= 5'd0;
                if (n == 4'd9) begin
                    n <= 4'd0;
                end else begin
                    n <= n + 4'd1;
                end
            end else begin
                vh <= vh + 5'd1;
            end
        end

        if (v_count == 10'd524) begin
            v_count <= 10'h0;
        end else begin
            v_count <= v_count + 10'h1;
        end

    end
end

// vga signals
always @ (posedge clk) begin
    hs       <=  h_sync;   // horizontal synchronization
    vs       <=  v_sync;   // vertical   synchronization
    r        <=  read ? date[3:0] : 4'h0; // 4-bit red
    g        <=  read ? date[7:4] : 4'h0; // 4-bit green
    b        <=  read ? date[11:8] : 4'h0; // 4-bit blue
end





// vga signals
always @ (posedge clk) begin
    if (FLoc == 8'h6c) begin
        flag <= 2;
    end else if (health == 0) begin
        flag <= 3;
    end else begin
        if ((row > 10'd44) && (row < 10'd435) && (col > 10'd49) && (col < 10'd440)) begin		//map
            flag <= 0;
            if (V == FLoc[7:4] && H == FLoc[3:0]) begin
                addr <=  h + type * 30 * 30 + v * 30;
            end else begin
                ramaddr <= V * 13 + H;
                addr <=  h + out * 30 * 30 + v * 30;
            end
        end else if ((row > 10'd44) && (row < 10'd435) && (col > 10'd479) && (col < 10'd585))begin		//message
            if ((col > 10'd494) && (col < 10'd525)) begin	//first tanke
                if ((row > 10'd74) && (row < 10'd105)) begin	//first tanke logo
                    flag <= 0;
                    addr <=  vh * 30 + hh + 30 * 30;
                end else if ((row > 10'd104) && (row < 10'd105 + health * 30) && (row < 10'd105 + 10 * 30)) begin	//first tanke health
                    flag <= 0;
                    addr <=  vh * 30 + hh + 30 * 30 * 14;
                end else begin		//default black
                    flag <= 1;
                    Cdate <= 12'h0;
                end
            end else if ((col > 10'd539) && (col < 10'd570)) begin	//second tanke
                if ((row > 10'd74) && (row < 10'd105)) begin	//second tanke logo
                    flag <= 0;
                    addr <=  vh * 30 + hh + 30 * 30 * 13;
                end else if ((row > 10'd104) && (row < 10'd105 + (health - 10) * 30) && (health > 10)) begin	//second tanke health
                    flag <= 0;
                    addr <=  vh * 30 + hh + 30 * 30 * 14;
                end
            end else begin
                flag <= 1;
                Cdate <= 12'h0;
            end
        end else begin
            flag <= 1;
            Cdate <= 12'h444;
        end
    end

    if (cnt < 20_000_000) begin
        cnt <= cnt + 1;
    end else begin
        cnt <= 0;
        clk_200ms <= ~clk_200ms;
        if (clkd < 2'd3) begin
            clkd <= clkd + 1'b1;
        end else begin
            clkd <= 0;
            case(Fir)
                3'd1:begin
                    if (FLoc[7:4] > 0) begin
                        if (up == 8'd0) begin
                            FLoc[7:4] <= FLoc[7:4] - 1;
                            type <= 1;
                        end else if (up == 8'd11) begin
                            FLoc[7:4] <= FLoc[7:4] - 1;
                            type <= 5;
                        end else begin
                            if (type < 5) begin
                                type <= 1;
                            end else begin
                                type <= 5;
                            end
                        end
                    end else begin
                        if (type < 5) begin
                            type <= 1;
                        end else begin
                            type <= 5;
                        end
                    end
                    health <= health - 1;
                end
                3'd2:begin
                    if (FLoc[3:0] > 0) begin
                        if (left == 8'd0) begin
                            FLoc[3:0] <= FLoc[3:0] - 1;
                            type <= 2;
                        end else if (left == 8'd11) begin
                            FLoc[3:0] <= FLoc[3:0] - 1;
                            type <= 6;
                        end else begin
                            if (type < 5) begin
                                type <= 2;
                            end else begin
                                type <= 6;
                            end
                        end
                    end else begin
                        if (type < 5) begin
                            type <= 2;
                        end else begin
                            type <= 6;
                        end
                    end
                    health <= health - 1;
                end
                3'd3:begin
                    if (FLoc[7:4] < 12) begin
                        if (down == 8'd0) begin
                            FLoc[7:4] <= FLoc[7:4] + 1;
                            type <= 3;
                        end else if (down == 8'd11) begin
                            FLoc[7:4] <= FLoc[7:4] + 1;
                            type <= 7;
                        end else begin
                            if (type < 5) begin
                                type <= 3;
                            end else begin
                                type <= 7;
                            end
                        end
                    end else begin
                        if (type < 5) begin
                            type <= 3;
                        end else begin
                            type <= 7;
                        end
                    end
                    health <= health - 1;
                end
                3'd4:begin
                    if (FLoc[3:0] < 12) begin
                        if (right == 8'd0 || right == 8'd13) begin
                            FLoc[3:0] <= FLoc[3:0] + 1;
                            type <= 4;
                        end else if (right == 8'd11) begin
                            FLoc[3:0] <= FLoc[3:0] + 1;
                            type <= 8;
                        end else begin
                            if (type < 5) begin
                                type <= 4;
                            end else begin
                                type <= 8;
                            end
                        end
                    end else begin
                        if (type < 5) begin
                            type <= 4;
                        end else begin
                            type <= 8;
                        end
                    end
                    health <= health - 1;
                end
                3'd5:begin
                    FLoc <= 8'h60;
                    SLoc <= 8'h8;
                    type <= 4'd4;
                    health <= 20;
                end
            endcase
            Fir <= 0;
            Sec <= 0;
        end
    end



    //if (ready) begin
    if (Fir == 3'b0) begin
        case (data)
            10'h1d:Fir <= 3'd1; //��
            10'h1c:Fir <= 3'd2; //��
            10'h1b:Fir <= 3'd3; //��
            10'h23:Fir <= 3'd4; //��
            10'h29:Fir <= 3'd5; //�ؿ�
            default:Fir <= 3'd0;
        endcase
    end
    if (Sec == 3'b0) begin
        case (data)
            10'h43:Sec <= 3'd1; //��
            10'h3b:Sec <= 3'd2; //��
            10'h42:Sec <= 3'd3; //��
            10'h4b:Sec <= 3'd4; //��
            10'h5a:Sec <= 3'd5; //���
            default:Sec <= 3'd0;
        endcase
    end
    //end

    if (FLoc[7:4] > 0) begin
        upaddr <= (FLoc[7:4] - 1) * 13 + FLoc[3:0];
    end else begin
        upaddr <= FLoc[7:4] * 13 + FLoc[3:0];
    end
    if (FLoc[3:0] > 0) begin
        leftaddr <= FLoc[7:4] * 13 + FLoc[3:0] - 1;
    end else begin
        leftaddr <= FLoc[7:4] * 13 + FLoc[3:0];
    end
    if (FLoc[7:4] < 12) begin
        downaddr <= (FLoc[7:4] + 1) * 13 + FLoc[3:0];
    end else begin
        downaddr <= FLoc[7:4] * 13 + FLoc[3:0];
    end
    if (FLoc[3:0] < 12) begin
        rightaddr <= FLoc[7:4] * 13 + FLoc[3:0] + 1;
    end else begin
        rightaddr <= FLoc[7:4] * 13 + FLoc[3:0];
    end
end


endmodule
