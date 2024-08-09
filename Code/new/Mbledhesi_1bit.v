`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2021 01:24:56 AM
// Design Name: 
// Module Name: Mbledhesi_1bit
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


module Mbledhesi_1bit(
    input hyrja1,
    input hyrja2,
    input cin,
    output cout,
    output shuma
    );
    
    assign shuma = cin^hyrja1^hyrja2;
    assign cout = cin&hyrja1 | cin&hyrja2 | hyrja1&hyrja2;
    
endmodule

