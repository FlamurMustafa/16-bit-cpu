`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2021 03:56:41 PM
// Design Name: 
// Module Name: CPU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CPU(
    input Clock    
    );
    
    reg[15:0] PC_Initial;
    reg[15:0] PCPlus4;
    reg[15:0] PC;
    reg[15:0] PC_Current;
    reg[15:0] BEQ;
    wire[15:0] Intsruction;
    wire[15:0] BEQPC;
    initial
    begin
    assign PC_Initial = 16'd0;
    end
    
    always @(posedge Clock)
    begin 
    PC = BEQPC;
    end
    
    InstructionMemory(PC, Instruction, BEQPC);
    DataPath dp(PC, Clock, RegDest, ALUSrc, MemToReg, RegWrite, MemRead, MemWrite, ALUSrc, RegWrite, AluOp, Instruction);
    ControlUnit CU(Intsruction[15:13], RegDest, ALUSrc, MemToReg, RegWrite, MemRead, MemWrite);
   
    
    
endmodule
