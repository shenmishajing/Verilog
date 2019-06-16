`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:21 12/04/2018 
// Design Name: 
// Module Name:    RevCounter 
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
module RevCounter(clk, s, cnt, Rc);
input wire clk, s;
output reg [15:0] cnt=16'b0;
output wire Rc;
assign Rc = (~s & (~|cnt)) | (s & (&cnt));
always @ (posedge clk) begin
    if (s)
        cnt <= cnt + 1;
  //always中被赋值的变量cnt一定为reg量型。
    else
        cnt <= cnt - 1;
end
endmodule