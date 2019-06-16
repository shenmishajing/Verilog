`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    23:30:27 10/22/2018
// Design Name:
// Module Name:    HLD
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
module HLD(
           input wire A,
           input wire B,
           input wire C,
           input wire D,
           output wire GNS,
           output wire YNS,
           output wire RNS,
           output wire GEW,
           output wire YEW,
           output wire REW
    );

   wire                T;

   assign T=B&~C;
   assign GNS=~A&~T;
   assign YNS=~A&D&T;
   assign RNS=A|D&T;

   assign GEW=A&(C|D);
   assign YEW=A&~D&T;
   assign REW=~A|(~D&T);

endmodule
