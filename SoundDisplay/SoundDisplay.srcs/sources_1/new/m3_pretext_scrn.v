`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2020 03:36:58
// Design Name: 
// Module Name: m3_pretext_scrn
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


module m3_pretext_scrn(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)              pixels = 16'hF800;
//        m3 pretext
        else if ((x >= 6   && x < 6+2) && (y >= 17   && y < 17+6))      pixels = 16'hFFFF;   
        else if ((x >= 6+2 && x < 6+4) && (y >= 17+4 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 6+4 && x < 6+6) && (y >= 17   && y < 17+6))      pixels = 16'hFFFF;   
        else if ((x >= 13 && x < 13+2)   && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 13+4 && x < 13+6) && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 13 && x < 13+6)   && (y >= 17 && y < 17+2))      pixels = 16'hFFFF;   
        else if ((x >= 13 && x < 13+6)   && (y >= 17+8 && y < 17+10))   pixels = 16'hFFFF;   
        else if ((x >= 20 && x < 20+2)   && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 20+4 && x < 20+6) && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 20 && x < 20+6)   && (y >= 17+8 && y < 17+10))   pixels = 16'hFFFF;   
        else if ((x >= 30 && x < 30+2)   && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 30+3 && x < 30+4) && (y >= 17 && y < 17+6))      pixels = 16'hFFFF;   
        else if ((x >= 30+5 && x < 30+6) && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 30 && x < 30+6)   && (y >= 17 && y < 17+2))      pixels = 16'hFFFF;   
        else if ((x >= 37 && x < 37+2)   && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 37 && x < 37+6)   && (y >= 17 && y < 17+2))      pixels = 16'hFFFF;   
        else if ((x >= 37 && x < 37+4)   && (y >= 17+4 && y < 17+6))    pixels = 16'hFFFF;   
        else if ((x >= 37 && x < 37+6)   && (y >= 17+8 && y < 17+10))   pixels = 16'hFFFF;   
        else if ((x >= 44+2 && x < 44+4) && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 44 && x < 44+6)   && (y >= 17 && y < 17+2))      pixels = 16'hFFFF;   
        else if ((x >= 54 && x < 54+2)   && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 54+4 && x < 54+6) && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 54 && x < 54+6)   && (y >= 17 && y < 17+2))      pixels = 16'hFFFF;   
        else if ((x >= 54 && x < 54+6)   && (y >= 17+6 && y < 17+8))    pixels = 16'hFFFF;   
        else if ((x >= 61 && x < 61+2)   && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 61+4 && x < 61+6) && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 61 && x < 61+6)   && (y >= 17 && y < 17+2))      pixels = 16'hFFFF;   
        else if ((x >= 71 && x < 71+2)   && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 71+4 && x < 71+6) && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 71 && x < 71+6)   && (y >= 17 && y < 17+2))      pixels = 16'hFFFF;   
        else if ((x >= 71 && x < 71+6)   && (y >= 17+8 && y < 17+10))   pixels = 16'hFFFF;   
        else if ((x >= 78 && x < 78+2)   && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 78 && x < 78+6)   && (y >= 17+8 && y < 17+10))   pixels = 16'hFFFF;   
        else if ((x >= 85 && x < 85+2)   && (y >= 17 && y < 17+10))     pixels = 16'hFFFF;   
        else if ((x >= 85+4 && x < 85+6) && (y >= 17+2 && y < 17+8))    pixels = 16'hFFFF;   
        else if ((x >= 85 && x < 85+4)   && (y >= 17 && y < 17+2))      pixels = 16'hFFFF;   
        else if ((x >= 85 && x < 85+4)   && (y >= 17+8 && y < 17+10))   pixels = 16'hFFFF;   
        else if ((x >= 13 && x < 13+2)   && (y >= 37 && y < 37+10))     pixels = 16'hFFFF;   
        else if ((x >= 13 && x < 13+6)   && (y >= 37 && y < 37+2))      pixels = 16'hFFFF;   
        else if ((x >= 13 && x < 13+4)   && (y >= 37+4 && y < 37+6))    pixels = 16'hFFFF;   
        else if ((x >= 13 && x < 13+6)   && (y >= 37+8 && y < 37+10))   pixels = 16'hFFFF;   
        else if ((x >= 20 && x < 20+2)   && (y >= 37 && y < 37+10))     pixels = 16'hFFFF;   
        else if ((x >= 20+4 && x < 20+6) && (y >= 37 && y < 37+10))     pixels = 16'hFFFF;   
        else if ((x >= 20 && x < 20+6)   && (y >= 37 && y < 37+2))      pixels = 16'hFFFF;   
        else if ((x >= 27 && x < 27+2)   && (y >= 37 && y < 37+10))     pixels = 16'hFFFF;   
        else if ((x >= 27 && x < 27+6)   && (y >= 37 && y < 37+2))      pixels = 16'hFFFF;   
        else if ((x >= 27 && x < 27+4)   && (y >= 37+4 && y < 37+6))    pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+6)   && (y >= 37+8 && y < 37+10))   pixels = 16'hFFFF;   
        else if ((x >= 34 && x < 34+2)   && (y >= 37 && y < 37+10))     pixels = 16'hFFFF;   
        else if ((x >= 34+3 && x < 34+4) && (y >= 37 && y < 37+6))      pixels = 16'hFFFF;   
        else if ((x >= 34+5 && x < 34+6) && (y >= 37 && y < 37+10))     pixels = 16'hFFFF;   
        else if ((x >= 34 && x < 34+6)   && (y >= 37 && y < 37+2))      pixels = 16'hFFFF;   
        else if ((x >= 41   && x < 41+2) && (y >= 37   && y < 37+6))    pixels = 16'hFFFF;   
        else if ((x >= 41+2 && x < 41+4) && (y >= 37+4 && y < 37+10))   pixels = 16'hFFFF;   
        else if ((x >= 41+4 && x < 41+6) && (y >= 37   && y < 37+6))    pixels = 16'hFFFF;   
        else if ((x >= 51 && x < 51+2)   && (y >= 37 && y < 37+6))      pixels = 16'hF800;   
        else if ((x >= 51+4 && x < 51+6) && (y >= 37+4 && y < 37+10))   pixels = 16'hF800;   
        else if ((x >= 51 && x < 51+6)   && (y >= 37 && y < 37+2))      pixels = 16'hF800;   
        else if ((x >= 51 && x < 51+6)   && (y >= 37+4 && y < 37+6))    pixels = 16'hF800;   
        else if ((x >= 51 && x < 51+6)   && (y >= 37+8 && y < 37+10))   pixels = 16'hF800;   
        else if ((x >= 58 && x < 58+2)   && (y >= 37 && y < 37+10))     pixels = 16'hF800;   
        else if ((x >= 58+4 && x < 58+6) && (y >= 37 && y < 37+10))     pixels = 16'hF800;   
        else if ((x >= 58 && x < 58+6)   && (y >= 37 && y < 37+2))      pixels = 16'hF800;   
        else if ((x >= 58 && x < 58+6)   && (y >= 37+6 && y < 37+8))    pixels = 16'hF800;   
        else if ((x >= 65 && x < 65+2)   && (y >= 37 && y < 37+10))     pixels = 16'hF800;   
        else if ((x >= 65+4 && x < 65+6) && (y >= 37 && y < 37+6))      pixels = 16'hF800;   
        else if ((x >= 65+4 && x < 65+6) && (y >= 37+8 && y < 37+10))   pixels = 16'hF800;   
        else if ((x >= 65 && x < 65+6)   && (y >= 37 && y < 37+2))      pixels = 16'hF800;   
        else if ((x >= 65 && x < 65+4)   && (y >= 37+6 && y < 37+8))    pixels = 16'hF800;   
        else if ((x >= 72 && x < 72+2)   && (y >= 37 && y < 37+6))      pixels = 16'hF800;   
        else if ((x >= 72+4 && x < 72+6) && (y >= 37+4 && y < 37+10))   pixels = 16'hF800;   
        else if ((x >= 72 && x < 72+6)   && (y >= 37 && y < 37+2))      pixels = 16'hF800;   
        else if ((x >= 72 && x < 72+6)   && (y >= 37+4 && y < 37+6))    pixels = 16'hF800;   
        else if ((x >= 72 && x < 72+6)   && (y >= 37+8 && y < 37+10))   pixels = 16'hF800;   
        else if ((x >= 80 && x < 80+2) && (y >= 37   && y < 37+6))      pixels = 16'hF800;   
        else if ((x >= 80 && x < 80+2) && (y >= 37+8 && y < 37+10))     pixels = 16'hF800;
        else pixels = 16'h0000;
    end

endmodule
