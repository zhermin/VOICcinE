`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2020 03:36:58
// Design Name: 
// Module Name: m1_pretext_scrn
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


module m1_pretext_scrn(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                  pixels = 16'hF800;
        else if ((x >= 8 && x < 8+2)   && (y >= 6 && y < 6+10))         pixels = 16'hFFFF;
        else if ((x >= 8+4 && x < 8+6) && (y >= 6 && y < 6+10))         pixels = 16'hFFFF;
        else if ((x >= 8 && x < 8+6)   && (y >= 6 && y < 6+2))          pixels = 16'hFFFF;
        else if ((x >= 8 && x < 8+6)   && (y >= 6+6 && y < 6+8))        pixels = 16'hFFFF;
        else if ((x >= 18 && x < 18+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 18+3 && x < 18+4) && (y >= 6 && y < 6+6))        pixels = 16'hFFFF;
        else if ((x >= 18+5 && x < 18+6) && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 18 && x < 18+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFFF;
        else if ((x >= 25 && x < 25+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 25+4 && x < 25+6) && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 25 && x < 25+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFFF;
        else if ((x >= 25 && x < 25+6)   && (y >= 6+6 && y < 6+8))      pixels = 16'hFFFF;
        else if ((x >= 32 && x < 32+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 32+4 && x < 32+6) && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 32 && x < 32+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFFF;
        else if ((x >= 42 && x < 42+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;
        else if ((x >= 42 && x < 42+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFE0;
        else if ((x >= 42 && x < 42+6)   && (y >= 6+8 && y < 6+10))     pixels = 16'hFFE0;
        else if ((x >= 49 && x < 49+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;
        else if ((x >= 49+4 && x < 49+6) && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;
        else if ((x >= 49 && x < 49+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFE0;
        else if ((x >= 49 && x < 49+6)   && (y >= 6+8 && y < 6+10))     pixels = 16'hFFE0;
        else if ((x >= 56 && x < 56+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;
        else if ((x >= 56+4 && x < 56+6) && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;
        else if ((x >= 56 && x < 56+6)   && (y >= 6+8 && y < 6+10))     pixels = 16'hFFE0;
        else if ((x >= 63 && x < 63+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;
        else if ((x >= 63+5 && x < 63+6) && (y >= 6+4 && y < 6+10))     pixels = 16'hFFE0;
        else if ((x >= 63 && x < 63+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFE0;
        else if ((x >= 63+3 && x < 63+5) && (y >= 6+4 && y < 6+6))      pixels = 16'hFFE0;
        else if ((x >= 63+2 && x < 63+5) && (y >= 6+8 && y < 6+10))     pixels = 16'hFFE0;
        else if ((x >= 70 && x < 70+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;
        else if ((x >= 70+4 && x < 70+6) && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;
        else if ((x >= 70 && x < 70+6)   && (y >= 6+4 && y < 6+6))      pixels = 16'hFFE0;
        else if ((x >= 77 && x < 77+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;
        else if ((x >= 77 && x < 77+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFE0;
        else if ((x >= 77 && x < 77+4)   && (y >= 6+4 && y < 6+6))      pixels = 16'hFFE0;
        else if ((x >= 77 && x < 77+6)   && (y >= 6+8 && y < 6+10))     pixels = 16'hFFE0;
        else if ((x >= 84 && x < 84+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;
        else if ((x >= 84+4 && x < 84+6) && (y >= 6+2 && y < 6+8))      pixels = 16'hFFE0;
        else if ((x >= 84 && x < 84+4)   && (y >= 6 && y < 6+2))        pixels = 16'hFFE0;
        else if ((x >= 84 && x < 84+4)   && (y >= 6+8 && y < 6+10))     pixels = 16'hFFE0;
        else if ((x >= 27 && x < 27+2)   && (y >= 20 && y < 20+10))      pixels = 16'hFFFF;
        else if ((x >= 27+4 && x < 27+6) && (y >= 20 && y < 20+10))      pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+6)   && (y >= 20 && y < 20+2))       pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+6)   && (y >= 20+6 && y < 20+8))     pixels = 16'hFFFF;
        else if ((x >= 34+2 && x < 34+4) && (y >= 20 && y < 20+10))      pixels = 16'hFFFF;
        else if ((x >= 34 && x < 34+6)   && (y >= 20 && y < 20+2))       pixels = 16'hFFFF;
        else if ((x >= 44   && x < 44+2) && (y >= 20   && y < 20+6))     pixels = 16'hFFFF;
        else if ((x >= 44+2 && x < 44+4) && (y >= 20+4 && y < 20+10))    pixels = 16'hFFFF;
        else if ((x >= 44+4 && x < 44+6) && (y >= 20   && y < 20+6))     pixels = 16'hFFFF;
        else if ((x >= 51 && x < 51+2)   && (y >= 20 && y < 20+10))      pixels = 16'hFFFF;
        else if ((x >= 51+4 && x < 51+6) && (y >= 20 && y < 20+10))      pixels = 16'hFFFF;
        else if ((x >= 51 && x < 51+6)   && (y >= 20 && y < 20+2))       pixels = 16'hFFFF;
        else if ((x >= 51 && x < 51+6)   && (y >= 20+8 && y < 20+10))    pixels = 16'hFFFF;
        else if ((x >= 58 && x < 58+2)   && (y >= 20 && y < 20+10))      pixels = 16'hFFFF;
        else if ((x >= 58+4 && x < 58+6) && (y >= 20 && y < 20+10))      pixels = 16'hFFFF;
        else if ((x >= 58 && x < 58+6)   && (y >= 20+8 && y < 20+10))    pixels = 16'hFFFF;
        else if ((x >= 66 && x < 66+2) && (y >= 20   && y < 20+6))       pixels = 16'hFFFF;
        else if ((x >= 66 && x < 66+2) && (y >= 20+8 && y < 20+10))      pixels = 16'hFFFF;
        else if ((x >= 18   && x < 18+2) && (y >= 34   && y < 34+6))     pixels = 16'hFFFF;
        else if ((x >= 18+2 && x < 18+4) && (y >= 34+4 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 18+4 && x < 18+6) && (y >= 34   && y < 34+6))     pixels = 16'hFFFF;
        else if ((x >= 25 && x < 25+2)   && (y >= 34 && y < 34+10))      pixels = 16'hFFFF;
        else if ((x >= 25+4 && x < 25+6) && (y >= 34 && y < 34+10))      pixels = 16'hFFFF;
        else if ((x >= 25 && x < 25+6)   && (y >= 34 && y < 34+2))       pixels = 16'hFFFF;
        else if ((x >= 25 && x < 25+6)   && (y >= 34+8 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 32 && x < 32+2)   && (y >= 34 && y < 34+10))      pixels = 16'hFFFF;
        else if ((x >= 32+4 && x < 32+6) && (y >= 34 && y < 34+10))      pixels = 16'hFFFF;
        else if ((x >= 32 && x < 32+6)   && (y >= 34+8 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 42 && x < 42+2)   && (y >= 34 && y < 34+10))      pixels = 16'hFFFF;
        else if ((x >= 42+3 && x < 42+4) && (y >= 34 && y < 34+6))       pixels = 16'hFFFF;
        else if ((x >= 42+5 && x < 42+6) && (y >= 34 && y < 34+10))      pixels = 16'hFFFF;
        else if ((x >= 42 && x < 42+6)   && (y >= 34 && y < 34+2))       pixels = 16'hFFFF;
        else if ((x >= 49+2 && x < 49+4) && (y >= 34 && y < 34+10))      pixels = 16'hFFFF;
        else if ((x >= 49 && x < 49+6)   && (y >= 34 && y < 34+2))       pixels = 16'hFFFF;
        else if ((x >= 49 && x < 49+6)   && (y >= 34+8 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+2)   && (y >= 34 && y < 34+10))      pixels = 16'hFFFF;
        else if ((x >= 57+5 && x < 57+6) && (y >= 34+4 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+6)   && (y >= 34 && y < 34+2))       pixels = 16'hFFFF;
        else if ((x >= 57+3 && x < 57+5) && (y >= 34+4 && y < 34+6))     pixels = 16'hFFFF;
        else if ((x >= 57+2 && x < 57+5) && (y >= 34+8 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 64 && x < 64+2)   && (y >= 34 && y < 34+10))      pixels = 16'hFFFF;
        else if ((x >= 64+4 && x < 64+6) && (y >= 34 && y < 34+10))      pixels = 16'hFFFF;
        else if ((x >= 64 && x < 64+6)   && (y >= 34+4 && y < 34+6))     pixels = 16'hFFFF;
        else if ((x >= 71+2 && x < 71+4) && (y >= 34 && y < 34+10))      pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+6)   && (y >= 34 && y < 34+2))       pixels = 16'hFFFF;
        else if ((x >= 6 && x < 6+2)   && (y >= 48 && y < 48+10))        pixels = 16'hFFFF;
        else if ((x >= 6 && x < 6+6)   && (y >= 48 && y < 48+2))         pixels = 16'hFFFF;
        else if ((x >= 6 && x < 6+6)   && (y >= 48+8 && y < 48+10))      pixels = 16'hFFFF;
        else if ((x >= 13 && x < 13+2)   && (y >= 48 && y < 48+10))      pixels = 16'hFFFF;
        else if ((x >= 13+4 && x < 13+6) && (y >= 48 && y < 48+10))      pixels = 16'hFFFF;
        else if ((x >= 13 && x < 13+6)   && (y >= 48 && y < 48+2))       pixels = 16'hFFFF;
        else if ((x >= 13 && x < 13+6)   && (y >= 48+6 && y < 48+8))     pixels = 16'hFFFF;
        else if ((x >= 20+2 && x < 20+4) && (y >= 48 && y < 48+10))      pixels = 16'hFFFF;
        else if ((x >= 20 && x < 20+6)   && (y >= 48 && y < 48+2))       pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+2)   && (y >= 48 && y < 48+10))      pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+6)   && (y >= 48 && y < 48+2))       pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+6)   && (y >= 48+8 && y < 48+10))    pixels = 16'hFFFF;
        else if ((x >= 34 && x < 34+2)   && (y >= 48 && y < 48+10))      pixels = 16'hFFFF;
        else if ((x >= 34+4 && x < 34+6) && (y >= 48 && y < 48+10))      pixels = 16'hFFFF;
        else if ((x >= 34 && x < 34+6)   && (y >= 48+4 && y < 48+6))     pixels = 16'hFFFF;
        else if ((x >= 44+2 && x < 44+4) && (y >= 48 && y < 48+10))      pixels = 16'hFFFF;
        else if ((x >= 44 && x < 44+6)   && (y >= 48 && y < 48+2))       pixels = 16'hFFFF;
        else if ((x >= 51 && x < 51+2)   && (y >= 48 && y < 48+10))      pixels = 16'hFFFF;
        else if ((x >= 51+4 && x < 51+6) && (y >= 48 && y < 48+10))      pixels = 16'hFFFF;
        else if ((x >= 51 && x < 51+6)   && (y >= 48+4 && y < 48+6))     pixels = 16'hFFFF;
        else if ((x >= 58 && x < 58+2)   && (y >= 48 && y < 48+10))      pixels = 16'hFFFF;
        else if ((x >= 58 && x < 58+6)   && (y >= 48 && y < 48+2))       pixels = 16'hFFFF;
        else if ((x >= 58 && x < 58+4)   && (y >= 48+4 && y < 48+6))     pixels = 16'hFFFF;
        else if ((x >= 58 && x < 58+6)   && (y >= 48+8 && y < 48+10))   pixels = 16'hFFFF;
        else if ((x >= 68 && x < 68+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 68 && x < 68+6)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;
        else if ((x >= 68 && x < 68+4)   && (y >= 48+4 && y < 48+6))    pixels = 16'hF800;
        else if ((x >= 75 && x < 75+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 75 && x < 75+6)   && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;
        else if ((x >= 82 && x < 82+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 82+4 && x < 82+6) && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 82 && x < 82+6)   && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;
        else if ((x >= 90 && x < 90+2) && (y >= 48   && y < 48+6))      pixels = 16'hF800;
        else if ((x >= 90 && x < 90+2) && (y >= 48+8 && y < 48+10))     pixels = 16'hF800;
        else pixels = 16'h0000;
    end

endmodule
