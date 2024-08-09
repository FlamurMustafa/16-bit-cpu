`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2021 08:33:44 PM
// Design Name: 
// Module Name: pcAdder
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


module pcAdder(
    input[15:0] PC, output[15:0] result
    );
    
    wire[15:0] carryOut;
    
    Mbledhesi_1bit m0(PC[0], 1, 0,  carryOut[0], result[0],);
    Mbledhesi_1bit m1(PC[1], 0, carryOut[0], result[1], carryOut[1] );
    Mbledhesi_1bit m2(PC[2], 0, carryOut[1]. result[2], carryOut[2]);
    Mbledhesi_1bit m3(PC[3], 0, carryOut[2]. result[3], carryOut[3]);
    Mbledhesi_1bit m4(PC[4], 0, carryOut[3]. result[4], carryOut[4]);
    Mbledhesi_1bit m5(PC[5], 0, carryOut[4]. result[5], carryOut[5]);
    Mbledhesi_1bit m6(PC[6], 0, carryOut[5]. result[6], carryOut[6]);
    Mbledhesi_1bit m7(PC[7], 0, carryOut[6]. result[7], carryOut[7]);
    Mbledhesi_1bit m8(PC[8], 0, carryOut[7]. result[8], carryOut[8]);
    Mbledhesi_1bit m9(PC[9], 0, carryOut[8]. result[9], carryOut[9]);
    Mbledhesi_1bit m10(PC[10], 0, carryOut[9]. result[10], carryOut[10]);
    Mbledhesi_1bit m12(PC[11], 0, carryOut[10]. result[11], carryOut[11]);
    Mbledhesi_1bit m13(PC[12], 0, carryOut[11]. result[12], carryOut[12]);
    Mbledhesi_1bit m14(PC[13], 0, carryOut[12]. result[13], carryOut[13]);
    Mbledhesi_1bit m15(PC[14], 0, carryOut[13]. result[14], carryOut[14]);
    
    
    
    
    
    
endmodule
