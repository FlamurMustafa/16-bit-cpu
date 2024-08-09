`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2021 02:41:51 AM
// Design Name: 
// Module Name: DataMemory_test
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


module Memory_Test();
reg Clock, MemWrite, MemRead;
reg[15:0] Adresa;
reg[15:0] WriteData;
wire[15:0] ReadData;

initial 
begin
#0 Clock=1'b0;
#5 MemWrite=1'b1; Adresa=16'd2; WriteData=16'h12; MemRead=1'b0;
#5 Clock=1'b1;
#5 Clock=1'b0;MemWrite=1'b0;
#5 MemRead=1'b1; Adresa=16'd2;
#5 $stop;
end

DataMemory DM(Adresa, WriteData, Clock, MemWrite, MemRead, ReadData);
endmodule


