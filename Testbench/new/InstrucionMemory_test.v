`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2021 01:16:59 AM
// Design Name: 
// Module Name: InstrucionMemory_test
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


module InstrucionMemory_test(

    );
    reg[15:0] PC;
    wire[15:0] Instruction;
    
    initial
    begin
    #0 PC = 16'd2;
    end
    
    InstructionMemory IM(PC, Instruction); 
endmodule
