`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2021 12:39:39 AM
// Design Name: 
// Module Name: RegisterFile_test
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


module RegisterFile_test();
reg[4:0] RS, RT, RD;
reg RegWrite, Clock;
reg[15:0] WriteData;
wire[15:0] ReadRS, ReadRT;

initial
begin
#0 Clock=1'b0;
#5 RD=3'd3; WriteData = 16'hb; RegWrite=1'b1;
#5 Clock=1'b1;
#5 Clock=1'b0;RegWrite = 1'b1;
#5 RD=3'd8; WriteData = 16'd15; RegWrite=1'b1;
#5 Clock=1'b1;
#5 Clock=1'b0; RegWrite=0;
#5 RS=3'd3; RT=3'd8;
#5 $stop;


end
RegisterFile RF(RS, RT, RD, WriteData, ReadRS, ReadRT, RegWrite, Clock);
endmodule
