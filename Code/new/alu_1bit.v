`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2021 01:26:08 AM
// Design Name: 
// Module Name: alu_1bit
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


module alu_1bit(
    input a,b,ainvert,binvert,cin,
    input [1:0] aluop,
    output zero, cout, res   
    );
    
    wire joA, joB, mA, mB, dhe, ose, mbledhja;
    
    assign joA = ~a;    
    assign job = ~b;
    
    mux2to1 muxA(a, joA, ainvert, mA);
    mux2to1 muxB(b, joB, binvert, mB);
    
    assign dhe = a&b;
    assign ose = a|b;
    
        
    Mbledhesi_1bit shuma(mA,mB, cin, cout, mbledhesi);
    
    mux3to1 asd(dhe, ose, mbledhesi, aluop, res);
    
    
endmodule
