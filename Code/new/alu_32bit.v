`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2021 02:57:22 PM
// Design Name: 
// Module Name: alu_32bit
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



module alu_32bit(
    input[15:0] A, B,
    input [1:0] aluOp,
    input AInvert, BNgate,
    output CarryOut, Zero,
    output[15:0] Result
    );
    
    wire[15:0] Cout;
    
    alu_1bit ALU0(A[0], B[0], AInvert, BNgate, BNgate, aluOp, Cout[0], Result);
    alu_1bit ALU1(A[1], B[1], AInvert, BNgate, Cout[0], aluOp, Cout[1], Result);
    alu_1bit ALU2(A[2], B[2], AInvert, BNgate, Cout[1], aluOp, Cout[2], Result);
    alu_1bit ALU3(A[3], B[3], AInvert, BNgate, Cout[2], aluOp, Cout[3], Result);
    alu_1bit ALU4(A[4], B[4], AInvert, BNgate, Cout[3], aluOp, Cout[4], Result);
    alu_1bit ALU5(A[5], B[5], AInvert, BNgate, Cout[4], aluOp, Cout[5], Result);
    alu_1bit ALU6(A[6], B[6], AInvert, BNgate, Cout[5], aluOp, Cout[6], Result);
    alu_1bit ALU7(A[7], B[7], AInvert, BNgate, Cout[6], aluOp, Cout[7], Result);
    alu_1bit ALU8(A[8], B[8], AInvert, BNgate, Cout[7], aluOp, Cout[8], Result);
    alu_1bit ALU9(A[9], B[9], AInvert, BNgate, Cout[8], aluOp, Cout[9], Result);
    alu_1bit ALU10(A[10], B[10], AInvert, BNgate, Cout[9], aluOp, Cout[10], Result);
    alu_1bit ALU11(A[11], B[11], AInvert, BNgate, Cout[10], aluOp, Cout[11], Result);
    alu_1bit ALU12(A[12], B[12], AInvert, BNgate, Cout[11], aluOp, Cout[12], Result);
    alu_1bit ALU13(A[13], B[13], AInvert, BNgate, Cout[12], aluOp, Cout[13], Result);
    alu_1bit ALU14(A[14], B[14], AInvert, BNgate, Cout[13], aluOp, Cout[14], Result);
    alu_1bit ALU15(A[15], B[15], AInvert, BNgate, Cout[14], aluOp, Cout[15], Result);
    
    assign Zero = ~(Result[0]|Result[1]|Result[2]|Result[3]|Result[4]|Result[5]|Result[6]|Result[7]|
    Result[8]|Result[0]|Result[10]|Result[11]|Result[12]|Result[13]|Result[14]|Result[15]);
        
endmodule
