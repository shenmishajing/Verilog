////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HLD_synthesis.v
// /___/   /\     Timestamp: Mon Oct 22 23:54:32 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim HLD.ngc HLD_synthesis.v 
// Device	: xc7k160t-1-ffg676
// Input file	: HLD.ngc
// Output file	: \\mac\sharefiles\Projects\Verilog\HLD\netgen\synthesis\HLD_synthesis.v
// # of Modules	: 1
// Design Name	: HLD
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module HLD (
  A, B, C, D, GNS, YNS, RNS, GEW, YEW, REW
);
  input A;
  input B;
  input C;
  input D;
  output GNS;
  output YNS;
  output RNS;
  output GEW;
  output YEW;
  output REW;
  wire A_IBUF_0;
  wire B_IBUF_1;
  wire C_IBUF_2;
  wire D_IBUF_3;
  wire RNS_OBUF_4;
  wire GEW_OBUF_5;
  wire YEW_OBUF_6;
  wire YNS_OBUF_7;
  wire GNS_OBUF_8;
  wire REW_OBUF_9;
  LUT3 #(
    .INIT ( 8'hA8 ))
  GEW1 (
    .I0(A_IBUF_0),
    .I1(C_IBUF_2),
    .I2(D_IBUF_3),
    .O(GEW_OBUF_5)
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  RNS1 (
    .I0(A_IBUF_0),
    .I1(D_IBUF_3),
    .I2(B_IBUF_1),
    .I3(C_IBUF_2),
    .O(RNS_OBUF_4)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  YEW1 (
    .I0(A_IBUF_0),
    .I1(D_IBUF_3),
    .I2(B_IBUF_1),
    .I3(C_IBUF_2),
    .O(YEW_OBUF_6)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  YNS1 (
    .I0(D_IBUF_3),
    .I1(A_IBUF_0),
    .I2(B_IBUF_1),
    .I3(C_IBUF_2),
    .O(YNS_OBUF_7)
  );
  LUT3 #(
    .INIT ( 8'h51 ))
  GNS1 (
    .I0(A_IBUF_0),
    .I1(B_IBUF_1),
    .I2(C_IBUF_2),
    .O(GNS_OBUF_8)
  );
  LUT4 #(
    .INIT ( 16'h5575 ))
  REW1 (
    .I0(A_IBUF_0),
    .I1(C_IBUF_2),
    .I2(B_IBUF_1),
    .I3(D_IBUF_3),
    .O(REW_OBUF_9)
  );
  IBUF   A_IBUF (
    .I(A),
    .O(A_IBUF_0)
  );
  IBUF   B_IBUF (
    .I(B),
    .O(B_IBUF_1)
  );
  IBUF   C_IBUF (
    .I(C),
    .O(C_IBUF_2)
  );
  IBUF   D_IBUF (
    .I(D),
    .O(D_IBUF_3)
  );
  OBUF   GNS_OBUF (
    .I(GNS_OBUF_8),
    .O(GNS)
  );
  OBUF   YNS_OBUF (
    .I(YNS_OBUF_7),
    .O(YNS)
  );
  OBUF   RNS_OBUF (
    .I(RNS_OBUF_4),
    .O(RNS)
  );
  OBUF   GEW_OBUF (
    .I(GEW_OBUF_5),
    .O(GEW)
  );
  OBUF   YEW_OBUF (
    .I(YEW_OBUF_6),
    .O(YEW)
  );
  OBUF   REW_OBUF (
    .I(REW_OBUF_9),
    .O(REW)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

