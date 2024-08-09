`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2021 12:33:05 AM
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile(
input[2:0] RS,
input[2:0] RT,
input[2:0] RD,
input[15:0] WriteData,
output[15:0] ReadRS,
output[15:0] ReadRT,
input RegWrite,
input Clock);

reg[7:0] Registers[15:0];

 

always @ (posedge Clock)
begin
if(RegWrite)  Registers[RD] <= WriteData;
end

assign ReadRS = Registers[RS];
assign ReadRT = Registers[RT];

endmodule
