`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2021 03:05:52 PM
// Design Name: 
// Module Name: AluControl
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


module AluControl(
    input[1:0] AluOp, input [3:0] Func, output reg[3:0] Operacioni  
    );
    always@(AluOp)
    begin
    
    case(AluOp)
    2'b00:
    begin     
    assign Operacioni = 4'b0100;
    end
    2'b01:
    begin
    assign Operacioni = 4'b1100;
    end
    2'b10:
    begin
        case(Func)
        4'b1111:
        begin
        assign Operacioni = 4'b0000;
        end
        4'b1110:
        begin
        assign Operacioni = 4'b0010;
        end
        endcase        
     end 
    
    
    endcase
    end     
    
    
endmodule
