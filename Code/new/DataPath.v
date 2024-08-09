`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2021 02:36:53 PM
// Design Name: 
// Module Name: DataPath
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


module DataPath(
input PC,
input Clock,
input RegDest, ALUSrc, MemToReg, RegWrite, MemRead, MemWrite,
input [1:0] AluOp,
input Branch,
input[15:0] Instruction
    );
    
    wire[2:0] OpCode;
    wire[2:0] RS, RT, RD;
    wire[3:0] Funct;
    wire[6:0] Immediate;
    wire[15:0] Immediate16;
    wire[2:0] PercaktoDestinacionin;
    wire[15:0] PercaktoHyrjenB;
    wire[15:0] AluOut;
    wire[15:0] DMOut;
    wire[15:0] WriteDataToReg;
    wire Zero, CarryOut;
    wire[3:0] AluControlOut;
    wire[15:0] ReadRS, ReadRT;
    wire ZeroAndBranch; 
    wire ImmediataShifted;
    
    assign OpCode = Instruction[15:13];
    assign RS = Instruction[12:10];    
    assign RT = Instruction[9:7];
    assign RD = Instruction[6:4];
    assign Funct = Instruction[3:0];
    assign Immediate = Instruction[6:0];
    
    
    mux2to1 mDestOfSecReg(RT, RD, RegDest, PercaktoDestinacionin);
    mux2to1 mOutForWriteToReg(AluOut,DMOut,MemToReg, WriteDataToReg);
    
    RegisterFile RF(RS, RT, PercaktoDestinacionin, WriteDataToReg, ReadRS, ReadRT, RegWrite, Clock);
    
    assign Immediate16 = {{9{Immediate[6]}},Immediate[6:0]};
    
    mux2to1 mAlu(ReadRt, Immediate16, AluSrc, PercaktoHyrjenB);
    
    AluControl a(AluOp, Funct, AluControlOut);
    
    alu_32bit alu(ReadRS, PercaktoHyrjenB, AluControlOut[2:1], 0, AluControlOut[3], CarryOut, Zero, AluOut);
    
    DataMemory dM(AluControlOut, ReadRT, Clock, MemWrite, MemRead, DMOut);
    
    
    
endmodule
