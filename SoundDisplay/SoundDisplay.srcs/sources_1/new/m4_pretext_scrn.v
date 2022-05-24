`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2020 03:36:58
// Design Name: 
// Module Name: m4_pretext_scrn
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


module m4_pretext_scrn(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                  pixels = 16'hF800;
             
//        Final boss pretext
        else if ((x >= 4   && x < 4+2) && (y >= 3   && y < 3+6))        pixels = 16'hFFFF;
        else if ((x >= 4+2 && x < 4+4) && (y >= 3+4 && y < 3+10))       pixels = 16'hFFFF;
        else if ((x >= 4+4 && x < 4+6) && (y >= 3   && y < 3+6))        pixels = 16'hFFFF;
        else if ((x >= 11 && x < 11+2)   && (y >= 3 && y < 3+10))       pixels = 16'hFFFF;
        else if ((x >= 11+4 && x < 11+6) && (y >= 3 && y < 3+10))       pixels = 16'hFFFF;
        else if ((x >= 11 && x < 11+6)   && (y >= 3 && y < 3+2))        pixels = 16'hFFFF;
        else if ((x >= 11 && x < 11+6)   && (y >= 3+8 && y < 3+10))     pixels = 16'hFFFF;
        else if ((x >= 18 && x < 18+2)   && (y >= 3 && y < 3+10))       pixels = 16'hFFFF;
        else if ((x >= 18+4 && x < 18+6) && (y >= 3 && y < 3+10))       pixels = 16'hFFFF;
        else if ((x >= 18 && x < 18+6)   && (y >= 3+8 && y < 3+10))     pixels = 16'hFFFF;
        else if ((x >= 25   && x <= 26) && (y >= 1   && y <= 4))        pixels = 16'hFFFF;
        else if ((x >= 28 && x < 28+2)   && (y >= 3 && y < 3+8))        pixels = 16'hFFFF;
        else if ((x >= 28+2 && x < 28+4) && (y >= 3+8 && y < 3+10))     pixels = 16'hFFFF;
        else if ((x >= 28+4 && x < 28+6) && (y >= 3 && y < 3+8))        pixels = 16'hFFFF;
        else if ((x >= 35 && x < 35+2)   && (y >= 3 && y < 3+10))       pixels = 16'hFFFF;
        else if ((x >= 35 && x < 35+6)   && (y >= 3 && y < 3+2))        pixels = 16'hFFFF;
        else if ((x >= 35 && x < 35+4)   && (y >= 3+4 && y < 3+6))      pixels = 16'hFFFF;
        else if ((x >= 35 && x < 35+6)   && (y >= 3+8 && y < 3+10))     pixels = 16'hFFFF;
        else if ((x >= 44 && x < 44+2)   && (y >= 3 && y < 3+10))       pixels = 16'hFFFF;
        else if ((x >= 44 && x < 44+6)   && (y >= 3 && y < 3+2))        pixels = 16'hFFFF;
        else if ((x >= 44 && x < 44+4)   && (y >= 3+4 && y < 3+6))      pixels = 16'hFFFF;
        else if ((x >= 51+2 && x < 51+4) && (y >= 3 && y < 3+10))       pixels = 16'hFFFF;
        else if ((x >= 51 && x < 51+6)   && (y >= 3 && y < 3+2))        pixels = 16'hFFFF;
        else if ((x >= 51 && x < 51+6)   && (y >= 3+8 && y < 3+10))     pixels = 16'hFFFF;
        else if ((x >= 58 && x < 58+2)   && (y >= 3 && y < 3+10))       pixels = 16'hFFFF;
        else if ((x >= 58+4 && x < 58+6) && (y >= 3 && y < 3+10))       pixels = 16'hFFFF;
        else if ((x >= 58 && x < 58+6)   && (y >= 3 && y < 3+2))        pixels = 16'hFFFF;
        else if ((x >= 65 && x < 65+2)   && (y >= 3 && y < 3+10))       pixels = 16'hFFFF;
        else if ((x >= 65+4 && x < 65+6) && (y >= 3 && y < 3+10))       pixels = 16'hFFFF;
        else if ((x >= 65 && x < 65+6)   && (y >= 3 && y < 3+2))        pixels = 16'hFFFF;
        else if ((x >= 65 && x < 65+6)   && (y >= 3+6 && y < 3+8))      pixels = 16'hFFFF;
        else if ((x >= 72 && x < 72+2)   && (y >= 3 && y < 3+10))       pixels = 16'hFFFF;
        else if ((x >= 72 && x < 72+6)   && (y >= 3+8 && y < 3+10))     pixels = 16'hFFFF;
        else if ((x >= 79 && x < 79+2)   && (y >= 3 && y < 3+10))       pixels = 16'hFFFF;
        else if ((x >= 79 && x < 79+6)   && (y >= 3+8 && y < 3+10))     pixels = 16'hFFFF;
        else if ((x >= 86   && x < 86+2) && (y >= 3   && y < 3+6))      pixels = 16'hFFFF;
        else if ((x >= 86+2 && x < 86+4) && (y >= 3+4 && y < 3+10))     pixels = 16'hFFFF;
        else if ((x >= 86+4 && x < 86+6) && (y >= 3   && y < 3+6))      pixels = 16'hFFFF;
        else if ((x >= 24 && x < 24+2)   && (y >= 15 && y < 15+10))     pixels = 16'hFFFF;
        else if ((x >= 24+4 && x < 24+6) && (y >= 15 && y < 15+6))      pixels = 16'hFFFF;
        else if ((x >= 24+4 && x < 24+6) && (y >= 15+8 && y < 15+10))   pixels = 16'hFFFF;
        else if ((x >= 24 && x < 24+6)   && (y >= 15 && y < 15+2))      pixels = 16'hFFFF;
        else if ((x >= 24 && x < 24+4)   && (y >= 15+6 && y < 15+8))    pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+2)   && (y >= 15 && y < 15+10))     pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+6)   && (y >= 15 && y < 15+2))      pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+4)   && (y >= 15+4 && y < 15+6))    pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+6)   && (y >= 15+8 && y < 15+10))   pixels = 16'hFFFF;
        else if ((x >= 38 && x < 38+2)   && (y >= 15 && y < 15+10))     pixels = 16'hFFFF;
        else if ((x >= 38+4 && x < 38+6) && (y >= 15 && y < 15+10))     pixels = 16'hFFFF;
        else if ((x >= 38 && x < 38+6)   && (y >= 15 && y < 15+2))      pixels = 16'hFFFF;
        else if ((x >= 38 && x < 38+6)   && (y >= 15+6 && y < 15+8))    pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+2)   && (y >= 15 && y < 15+10))     pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+6)   && (y >= 15 && y < 15+2))      pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+6)   && (y >= 15+8 && y < 15+10))   pixels = 16'hFFFF;
        else if ((x >= 52 && x < 52+2)   && (y >= 15 && y < 15+10))     pixels = 16'hFFFF;
        else if ((x >= 52+4 && x < 52+6) && (y >= 15 && y < 15+10))     pixels = 16'hFFFF;
        else if ((x >= 52 && x < 52+6)   && (y >= 15+4 && y < 15+6))    pixels = 16'hFFFF;
        else if ((x >= 59 && x < 59+2)   && (y >= 15 && y < 15+10))     pixels = 16'hFFFF;
        else if ((x >= 59 && x < 59+6)   && (y >= 15 && y < 15+2))      pixels = 16'hFFFF;
        else if ((x >= 59 && x < 59+4)   && (y >= 15+4 && y < 15+6))    pixels = 16'hFFFF;
        else if ((x >= 59 && x < 59+6)   && (y >= 15+8 && y < 15+10))   pixels = 16'hFFFF;
        else if ((x >= 66 && x < 66+2)   && (y >= 15 && y < 15+10))     pixels = 16'hFFFF;
        else if ((x >= 66+4 && x < 66+6) && (y >= 15+2 && y < 15+8))    pixels = 16'hFFFF;
        else if ((x >= 66 && x < 66+4)   && (y >= 15 && y < 15+2))      pixels = 16'hFFFF;
        else if ((x >= 66 && x < 66+4)   && (y >= 15+8 && y < 15+10))   pixels = 16'hFFFF;
        else if ((x >= 25+2 && x < 25+4) && (y >= 27 && y < 27+10))     pixels = 16'h07E0;
        else if ((x >= 25 && x < 25+6)   && (y >= 27 && y < 27+2))      pixels = 16'h07E0;
        else if ((x >= 32 && x < 32+2)   && (y >= 27 && y < 27+10))     pixels = 16'h07E0;
        else if ((x >= 32+4 && x < 32+6) && (y >= 27 && y < 27+10))     pixels = 16'h07E0;
        else if ((x >= 32 && x < 32+6)   && (y >= 27+4 && y < 27+6))    pixels = 16'h07E0;
        else if ((x >= 39 && x < 39+2)   && (y >= 27 && y < 27+10))     pixels = 16'h07E0;
        else if ((x >= 39 && x < 39+6)   && (y >= 27 && y < 27+2))      pixels = 16'h07E0;
        else if ((x >= 39 && x < 39+4)   && (y >= 27+4 && y < 27+6))    pixels = 16'h07E0;
        else if ((x >= 39 && x < 39+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'h07E0;
        else if ((x >= 49 && x < 49+2)   && (y >= 27 && y < 27+10))     pixels = 16'h07E0;
        else if ((x >= 49 && x < 49+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'h07E0;
        else if ((x >= 56 && x < 56+2)   && (y >= 27 && y < 27+10))     pixels = 16'h07E0;
        else if ((x >= 56+4 && x < 56+6) && (y >= 27 && y < 27+10))     pixels = 16'h07E0;
        else if ((x >= 56 && x < 56+6)   && (y >= 27 && y < 27+2))      pixels = 16'h07E0;
        else if ((x >= 56 && x < 56+6)   && (y >= 27+6 && y < 27+8))    pixels = 16'h07E0;
        else if ((x >= 63 && x < 63+2)   && (y >= 27 && y < 27+10))     pixels = 16'h07E0;
        else if ((x >= 63 && x < 63+4)   && (y >= 27 && y < 27+2))      pixels = 16'h07E0;
        else if ((x >= 63+4 && x < 63+6) && (y >= 27+2 && y < 27+4))    pixels = 16'h07E0;
        else if ((x >= 63 && x < 63+4)   && (y >= 27+4 && y < 27+6))    pixels = 16'h07E0;
        else if ((x >= 63+4 && x < 63+6) && (y >= 27+6 && y < 27+8))    pixels = 16'h07E0;
        else if ((x >= 63 && x < 63+4)   && (y >= 27+8 && y < 27+10))   pixels = 16'h07E0;
        else if ((x >= 10 && x < 10+2)   && (y >= 39 && y < 39+10))     pixels = 16'hFFFF;
        else if ((x >= 10 && x < 10+4)   && (y >= 39 && y < 39+2))      pixels = 16'hFFFF;
        else if ((x >= 10+4 && x < 10+6) && (y >= 39+2 && y < 39+4))    pixels = 16'hFFFF;
        else if ((x >= 10 && x < 10+4)   && (y >= 39+4 && y < 39+6))    pixels = 16'hFFFF;
        else if ((x >= 10+4 && x < 10+6) && (y >= 39+6 && y < 39+8))    pixels = 16'hFFFF;
        else if ((x >= 10 && x < 10+4)   && (y >= 39+8 && y < 39+10))   pixels = 16'hFFFF;
        else if ((x >= 17 && x < 17+2)   && (y >= 39 && y < 39+10))     pixels = 16'hFFFF;
        else if ((x >= 17+4 && x < 17+6) && (y >= 39 && y < 39+10))     pixels = 16'hFFFF;
        else if ((x >= 17 && x < 17+6)   && (y >= 39+8 && y < 39+10))   pixels = 16'hFFFF;
        else if ((x >= 24+2 && x < 24+4) && (y >= 39 && y < 39+10))     pixels = 16'hFFFF;
        else if ((x >= 24 && x < 24+6)   && (y >= 39 && y < 39+2))      pixels = 16'hFFFF;
        else if ((x >= 34+2 && x < 34+4) && (y >= 39 && y < 39+10))     pixels = 16'hFFFF;
        else if ((x >= 34 && x < 34+6)   && (y >= 39 && y < 39+2))      pixels = 16'hFFFF;
        else if ((x >= 41 && x < 41+2)   && (y >= 39 && y < 39+10))     pixels = 16'hFFFF;
        else if ((x >= 41+4 && x < 41+6) && (y >= 39 && y < 39+10))     pixels = 16'hFFFF;
        else if ((x >= 41 && x < 41+6)   && (y >= 39+4 && y < 39+6))    pixels = 16'hFFFF;
        else if ((x >= 48 && x < 48+2)   && (y >= 39 && y < 39+10))     pixels = 16'hFFFF;
        else if ((x >= 48 && x < 48+6)   && (y >= 39 && y < 39+2))      pixels = 16'hFFFF;
        else if ((x >= 48 && x < 48+4)   && (y >= 39+4 && y < 39+6))    pixels = 16'hFFFF;
        else if ((x >= 48 && x < 48+6)   && (y >= 39+8 && y < 39+10))   pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+2)   && (y >= 39 && y < 39+10))     pixels = 16'hFFFF;
        else if ((x >= 55+4 && x < 55+6) && (y >= 39 && y < 39+6))      pixels = 16'hFFFF;
        else if ((x >= 55+4 && x < 55+6) && (y >= 39+8 && y < 39+10))   pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+6)   && (y >= 39 && y < 39+2))      pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+4)   && (y >= 39+6 && y < 39+8))    pixels = 16'hFFFF;
        else if ((x >= 62 && x < 62+2)   && (y >= 39 && y < 39+10))     pixels = 16'hFFFF;
        else if ((x >= 62 && x < 62+6)   && (y >= 39 && y < 39+2))      pixels = 16'hFFFF;
        else if ((x >= 62 && x < 62+4)   && (y >= 39+4 && y < 39+6))    pixels = 16'hFFFF;
        else if ((x >= 62 && x < 62+6)   && (y >= 39+8 && y < 39+10))   pixels = 16'hFFFF;
        else if ((x >= 72+2 && x < 72+4) && (y >= 39 && y < 39+10))     pixels = 16'hFFFF;
        else if ((x >= 72 && x < 72+6)   && (y >= 39 && y < 39+2))      pixels = 16'hFFFF;
        else if ((x >= 72 && x < 72+6)   && (y >= 39+8 && y < 39+10))   pixels = 16'hFFFF;
        else if ((x >= 79 && x < 79+2)   && (y >= 39 && y < 39+6))      pixels = 16'hFFFF;
        else if ((x >= 79+4 && x < 79+6) && (y >= 39+4 && y < 39+10))   pixels = 16'hFFFF;
        else if ((x >= 79 && x < 79+6)   && (y >= 39 && y < 39+2))      pixels = 16'hFFFF;
        else if ((x >= 79 && x < 79+6)   && (y >= 39+4 && y < 39+6))    pixels = 16'hFFFF;
        else if ((x >= 79 && x < 79+6)   && (y >= 39+8 && y < 39+10))   pixels = 16'hFFFF;
        else if ((x >= 3+2 && x < 3+4) && (y >= 51   && y < 51+10))     pixels = 16'hFFE0;
        else if ((x >= 3   && x < 3+4) && (y >= 51   && y < 51+2))      pixels = 16'hFFE0;
        else if ((x >= 3   && x < 3+6) && (y >= 51+8 && y < 51+10))     pixels = 16'hFFE0;
        else if ((x >= 13 && x < 13+2)   && (y >= 51 && y < 51+10))     pixels = 16'hFFE0;
        else if ((x >= 13 && x < 13+6)   && (y >= 51+8 && y < 51+10))   pixels = 16'hFFE0;
        else if ((x >= 20 && x < 20+2)   && (y >= 51 && y < 51+10))     pixels = 16'hFFE0;
        else if ((x >= 20+4 && x < 20+6) && (y >= 51 && y < 51+10))     pixels = 16'hFFE0;
        else if ((x >= 20 && x < 20+6)   && (y >= 51 && y < 51+2))      pixels = 16'hFFE0;
        else if ((x >= 20 && x < 20+6)   && (y >= 51+6 && y < 51+8))    pixels = 16'hFFE0;
        else if ((x >= 27 && x < 27+2)   && (y >= 51 && y < 51+6))      pixels = 16'hFFE0;
        else if ((x >= 27+4 && x < 27+6) && (y >= 51+4 && y < 51+10))   pixels = 16'hFFE0;
        else if ((x >= 27 && x < 27+6)   && (y >= 51 && y < 51+2))      pixels = 16'hFFE0;
        else if ((x >= 27 && x < 27+6)   && (y >= 51+4 && y < 51+6))    pixels = 16'hFFE0;
        else if ((x >= 27 && x < 27+6)   && (y >= 51+8 && y < 51+10))   pixels = 16'hFFE0;
        else if ((x >= 34+2 && x < 34+4) && (y >= 51 && y < 51+10))     pixels = 16'hFFE0;
        else if ((x >= 34 && x < 34+6)   && (y >= 51 && y < 51+2))      pixels = 16'hFFE0;
        else if ((x >= 44 && x < 44+2)   && (y >= 51 && y < 51+10))     pixels = 16'hFFE0;
        else if ((x >= 44+3 && x < 44+4) && (y >= 51 && y < 51+6))      pixels = 16'hFFE0;
        else if ((x >= 44+5 && x < 44+6) && (y >= 51 && y < 51+10))     pixels = 16'hFFE0;
        else if ((x >= 44 && x < 44+6)   && (y >= 51 && y < 51+2))      pixels = 16'hFFE0;
        else if ((x >= 51+2 && x < 51+4) && (y >= 51 && y < 51+10))     pixels = 16'hFFE0;
        else if ((x >= 51 && x < 51+6)   && (y >= 51 && y < 51+2))      pixels = 16'hFFE0;
        else if ((x >= 51 && x < 51+6)   && (y >= 51+8 && y < 51+10))   pixels = 16'hFFE0;
        else if ((x >= 58 && x < 58+2)   && (y >= 51 && y < 51+6))      pixels = 16'hFFE0;
        else if ((x >= 58+4 && x < 58+6) && (y >= 51+4 && y < 51+10))   pixels = 16'hFFE0;
        else if ((x >= 58 && x < 58+6)   && (y >= 51 && y < 51+2))      pixels = 16'hFFE0;
        else if ((x >= 58 && x < 58+6)   && (y >= 51+4 && y < 51+6))    pixels = 16'hFFE0;
        else if ((x >= 58 && x < 58+6)   && (y >= 51+8 && y < 51+10))   pixels = 16'hFFE0;
        else if ((x >= 65 && x < 65+2)   && (y >= 51 && y < 51+6))      pixels = 16'hFFE0;
        else if ((x >= 65+4 && x < 65+6) && (y >= 51+4 && y < 51+10))   pixels = 16'hFFE0;
        else if ((x >= 65 && x < 65+6)   && (y >= 51 && y < 51+2))      pixels = 16'hFFE0;
        else if ((x >= 65 && x < 65+6)   && (y >= 51+4 && y < 51+6))    pixels = 16'hFFE0;
        else if ((x >= 65 && x < 65+6)   && (y >= 51+8 && y < 51+10))   pixels = 16'hFFE0;
        else if ((x >= 72+2 && x < 72+4) && (y >= 51 && y < 51+10))     pixels = 16'hFFE0;
        else if ((x >= 72 && x < 72+6)   && (y >= 51 && y < 51+2))      pixels = 16'hFFE0;
        else if ((x >= 72 && x < 72+6)   && (y >= 51+8 && y < 51+10))   pixels = 16'hFFE0;
        else if ((x >= 79 && x < 79+2)   && (y >= 51 && y < 51+10))     pixels = 16'hFFE0;
        else if ((x >= 79+4 && x < 79+6) && (y >= 51 && y < 51+10))     pixels = 16'hFFE0;
        else if ((x >= 79 && x < 79+6)   && (y >= 51 && y < 51+2))      pixels = 16'hFFE0;
        else if ((x >= 79 && x < 79+6)   && (y >= 51+8 && y < 51+10))   pixels = 16'hFFE0;
        else if ((x >= 86 && x < 86+2)   && (y >= 51 && y < 51+10))     pixels = 16'hFFE0;
        else if ((x >= 86+4 && x < 86+6) && (y >= 51 && y < 51+10))     pixels = 16'hFFE0;
        else if ((x >= 86 && x < 86+6)   && (y >= 51 && y < 51+2))      pixels = 16'hFFE0;
        else pixels = 16'h0000;
    end

endmodule
