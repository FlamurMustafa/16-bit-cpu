`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2021 03:20:19 PM
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
    input[2:0] OPCODE,
    output reg RegDst, AluSrc, MemToReg, RegWrite, MemRead, MemWrite, Branch,
    output reg [1:0] AluOp    
    );
    always@(OPCODE)
    begin
    case(OPCODE)
    //and
    
    //and, or
    3'b111:
    begin
            assign RegDst = 1'b1;
            assign AluSrc = 1'b0;
            assign MemToReg = 1'b0;
            assign RegWrite = 1'b1;
            assign MemWrite = 1'b0;
            assign MemRead = 1'b0;
            assign AluOp = 2'b10;
            assign Branch = 1'b0;
    end
    //addi
    
    
    //slli
   
    
    //ror
    3'b000: // 
    begin
         assign RegDst = 1'b0;
         assign AluSrc = 1'b1;
         assign MemToReg = 1'b1;
         assign RegWrite = 1'b1;
         assign MemRead = 1'b1;
         assign MemWrite = 1'b0;
         assign AluOp = 2'b00;
         assign Branch = 1'b0;
    end
    
    3'b001://sw
    begin
        assign RegDst = 1'b0;
        assign AluSrc = 1'b1;
        assign MemToReg = 1'b0;
        assign RegWrite = 1'b0;
        assign MemWrite = 1'b1;
        assign MemRead = 1'b0;
        assign AluOp = 2'b00;
        assign Branch = 1'b0;
        
    end
    3'b011:   //beq        
    begin
        assign RegDst = 1'b0;
        assign AluSrc = 1'b0;
        assign MemToReg = 1'b0;
        assign RegWrite = 1'b0;
        assign MemWrite = 1'b0;
        assign MemRead = 1'b0;
        assign AluOp = 2'b01;
        assign Branch = 1'b1;
     end
        
        
    
    endcase
    end
endmodule
