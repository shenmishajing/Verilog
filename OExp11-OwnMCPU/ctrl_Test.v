`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:   16:34:13 05/22/2019
// Design Name:   ctrl
// Module Name:   Z:/Verilog/OExp11-OwnMCPU/ctrl_Test.v
// Project Name:  OExp11-OwnMCPU
// Target Device:
// Tool versions:
// Description:
//
// Verilog Test Fixture created by ISE for module: ctrl
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
////////////////////////////////////////////////////////////////////////////////

module ctrl_Test;

// Inputs
reg clk;
reg reset;
reg [31:0] Inst_in;
reg zero;
reg overflow;
reg MIO_ready;

// Outputs
wire MemRead;
wire MemWrite;
wire [2:0] ALU_operation;
wire [4:0] state_out;
wire CPU_MIO;
wire IorD;
wire IRWrite;
wire [1:0] RegDst;
wire RegWrite;
wire [1:0] MemtoReg;
wire ALUSrcA;
wire [1:0] ALUSrcB;
wire [1:0] PCSource;
wire PCWrite;
wire PCWriteCond;
wire Branch;

// Instantiate the Unit Under Test (UUT)
ctrl uut (
         .clk(clk),
         .reset(reset),
         .Inst_in(Inst_in),
         .zero(zero),
         .overflow(overflow),
         .MIO_ready(MIO_ready),
         .MemRead(MemRead),
         .MemWrite(MemWrite),
         .ALU_operation(ALU_operation),
         .state_out(state_out),
         .CPU_MIO(CPU_MIO),
         .IorD(IorD),
         .IRWrite(IRWrite),
         .RegDst(RegDst),
         .RegWrite(RegWrite),
         .MemtoReg(MemtoReg),
         .ALUSrcA(ALUSrcA),
         .ALUSrcB(ALUSrcB),
         .PCSource(PCSource),
         .PCWrite(PCWrite),
         .PCWriteCond(PCWriteCond),
         .Branch(Branch)
     );

initial begin
    // Initialize Inputs
    clk = 0;
    reset = 0;
    Inst_in = 0;
    zero = 0;
    overflow = 0;
    MIO_ready = 0;
    Inst_in = 32'b00010001011100100000000001010010;

    // Wait 100 ns for global reset to finish
    #80;

    reset=1;
    #10;
    reset=0;
    #10;
    MIO_ready=1;
    // Add stimulus here
end

always begin
    clk=~clk;
    #5;
end

endmodule

