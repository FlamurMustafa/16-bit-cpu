`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2021 01:35:05 AM
// Design Name: 
// Module Name: alu1bit_test
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


module alu1bit_test(

    );
    
    reg a, b, ainvert, binvert, cin;
    reg[1:0] aluop;
    wire cout, rez;
    
    
    initial 
    $monitor("a=1%b,b=1%b,ainvert=1%b,binvert=1%b,cin=1%b,aluop=1%b,cout=1%b,rez=1%b", a, b, ainvert, binvert, cin, aluop, cout, rez);
    
    initial 
    begin 
    #0 a = 1'b1; b = 1'b1; ainvert = 1'b1; binvert = 1'b0; cin = 1'b0; aluop = 2'b10;  
    end
    alu_1bit alu(a,b,ainvert, binvert, cin, aluop, cout, rez);
endmodule
