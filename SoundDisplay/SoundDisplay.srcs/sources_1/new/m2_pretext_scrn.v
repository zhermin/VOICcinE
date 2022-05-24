`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2020 03:36:58
// Design Name: 
// Module Name: m2_pretext_scrn
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


module m2_pretext_scrn(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                  pixels = 16'hF800;
             
//             M2 pretext
        else if ((x >= 19+2 && x < 19+4) && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 19 && x < 19+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFFF;
        else if ((x >= 19 && x < 19+6)   && (y >= 6+8 && y < 6+10))     pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 26+4 && x < 26+6) && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFFF;
        else if ((x >= 36 && x < 36+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 36 && x < 36+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFFF;
        else if ((x >= 36 && x < 36+4)   && (y >= 6+4 && y < 6+6))      pixels = 16'hFFFF;
        else if ((x >= 43 && x < 43+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 43+4 && x < 43+6) && (y >= 6 && y < 6+6))        pixels = 16'hFFFF;
        else if ((x >= 43+4 && x < 43+6) && (y >= 6+8 && y < 6+10))     pixels = 16'hFFFF;
        else if ((x >= 43 && x < 43+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFFF;
        else if ((x >= 43 && x < 43+4)   && (y >= 6+6 && y < 6+8))      pixels = 16'hFFFF;
        else if ((x >= 50 && x < 50+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 50+4 && x < 50+6) && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 50 && x < 50+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFFF;
        else if ((x >= 50 && x < 50+6)   && (y >= 6+8 && y < 6+10))     pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 57+4 && x < 57+6) && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFFF;
        else if ((x >= 64+2 && x < 64+4) && (y >= 6 && y < 6+10))       pixels = 16'hFFFF;
        else if ((x >= 64 && x < 64+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFFF;
        else if ((x >= 72   && x < 72+2) && (y >= 12   && y < 12+4))    pixels = 16'hFFFF;
        else if ((x >= 72+2 && x < 72+4) && (y >= 12 && y < 12+6))      pixels = 16'hFFFF;
        else if ((x >= 7   && x < 7+2) && (y >= 20   && y < 20+6))      pixels = 16'hFFFF;
        else if ((x >= 7+2 && x < 7+4) && (y >= 20+4 && y < 20+10))     pixels = 16'hFFFF;
        else if ((x >= 7+4 && x < 7+6) && (y >= 20   && y < 20+6))      pixels = 16'hFFFF;
        else if ((x >= 14 && x < 14+2)   && (y >= 20 && y < 20+10))     pixels = 16'hFFFF;
        else if ((x >= 14+4 && x < 14+6) && (y >= 20 && y < 20+10))     pixels = 16'hFFFF;
        else if ((x >= 14 && x < 14+6)   && (y >= 20 && y < 20+2))      pixels = 16'hFFFF;
        else if ((x >= 14 && x < 14+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+2)   && (y >= 20 && y < 20+10))     pixels = 16'hFFFF;
        else if ((x >= 21+4 && x < 21+6) && (y >= 20 && y < 20+10))     pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+2)   && (y >= 20 && y < 20+6))      pixels = 16'hFFFF;
        else if ((x >= 31+4 && x < 31+6) && (y >= 20+4 && y < 20+10))   pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+6)   && (y >= 20 && y < 20+2))      pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+6)   && (y >= 20+4 && y < 20+6))    pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hFFFF;
        else if ((x >= 38 && x < 38+2)   && (y >= 20 && y < 20+10))     pixels = 16'hFFFF;
        else if ((x >= 38 && x < 38+6)   && (y >= 20 && y < 20+2))      pixels = 16'hFFFF;
        else if ((x >= 38 && x < 38+4)   && (y >= 20+4 && y < 20+6))    pixels = 16'hFFFF;
        else if ((x >= 38 && x < 38+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+2)   && (y >= 20 && y < 20+10))     pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+6)   && (y >= 20 && y < 20+2))      pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+4)   && (y >= 20+4 && y < 20+6))    pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+2)   && (y >= 20 && y < 20+10))     pixels = 16'hFFFF;
        else if ((x >= 55+4 && x < 55+6) && (y >= 20 && y < 20+6))      pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+6)   && (y >= 20 && y < 20+2))      pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+6)   && (y >= 20+4 && y < 20+6))    pixels = 16'hFFFF;
        else if ((x >= 62 && x < 62+2)   && (y >= 20 && y < 20+10))     pixels = 16'hFFFF;
        else if ((x >= 62+4 && x < 62+6) && (y >= 20 && y < 20+10))     pixels = 16'hFFFF;
        else if ((x >= 62 && x < 62+6)   && (y >= 20 && y < 20+2))      pixels = 16'hFFFF;
        else if ((x >= 62 && x < 62+6)   && (y >= 20+6 && y < 20+8))    pixels = 16'hFFFF;
        else if ((x >= 69+2 && x < 69+4) && (y >= 20 && y < 20+10))     pixels = 16'hFFFF;
        else if ((x >= 69 && x < 69+6)   && (y >= 20 && y < 20+2))      pixels = 16'hFFFF;
        else if ((x >= 69 && x < 69+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hFFFF;
        else if ((x >= 76 && x < 76+2)   && (y >= 20 && y < 20+10))     pixels = 16'hFFFF;
        else if ((x >= 76 && x < 76+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hFFFF;
        else if ((x >= 83 && x < 83+2)   && (y >= 20 && y < 20+6))      pixels = 16'hFFFF;
        else if ((x >= 83+4 && x < 83+6) && (y >= 20+4 && y < 20+10))   pixels = 16'hFFFF;
        else if ((x >= 83 && x < 83+6)   && (y >= 20 && y < 20+2))      pixels = 16'hFFFF;
        else if ((x >= 83 && x < 83+6)   && (y >= 20+4 && y < 20+6))    pixels = 16'hFFFF;
        else if ((x >= 83 && x < 83+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hFFFF;
        else if ((x >= 7 && x < 7+2)   && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
        else if ((x >= 7+4 && x < 7+6) && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
        else if ((x >= 7 && x < 7+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
        else if ((x >= 7 && x < 7+6)   && (y >= 34+8 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 14 && x < 14+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 14 && x < 14+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;
        else if ((x >= 14 && x < 14+4)   && (y >= 34+4 && y < 34+6))    pixels = 16'hFFFF;
        else if ((x >= 24 && x < 24+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 24+2 && x < 24+3) && (y >= 34+8 && y < 34+10))   pixels = 16'hFFFF;
        else if ((x >= 24+3 && x < 24+4) && (y >= 34+6 && y < 34+8))    pixels = 16'hFFFF;
        else if ((x >= 24+4 && x < 24+5) && (y >= 34+8 && y < 34+10))   pixels = 16'hFFFF;
        else if ((x >= 24+5 && x < 24+6) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 31+4 && x < 31+6) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+6)   && (y >= 34+6 && y < 34+8))    pixels = 16'hFFFF;
        else if ((x >= 38+2 && x < 38+4) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 38 && x < 38+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+4)   && (y >= 34+4 && y < 34+6))    pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+6)   && (y >= 34+8 && y < 34+10))   pixels = 16'hFFFF;
        else if ((x >= 52 && x < 52+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 52+4 && x < 52+6) && (y >= 34 && y < 34+6))      pixels = 16'hFFFF;
        else if ((x >= 52+4 && x < 52+6) && (y >= 34+8 && y < 34+10))   pixels = 16'hFFFF;
        else if ((x >= 52 && x < 52+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;
        else if ((x >= 52 && x < 52+4)   && (y >= 34+6 && y < 34+8))    pixels = 16'hFFFF;
        else if ((x >= 62+2 && x < 62+4) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 62 && x < 62+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;
        else if ((x >= 69 && x < 69+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 69+4 && x < 69+6) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 69 && x < 69+6)   && (y >= 34+4 && y < 34+6))    pixels = 16'hFFFF;
        else if ((x >= 76 && x < 76+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 76+4 && x < 76+6) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 76 && x < 76+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;
        else if ((x >= 76 && x < 76+6)   && (y >= 34+6 && y < 34+8))    pixels = 16'hFFFF;
        else if ((x >= 83+2 && x < 83+4) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;
        else if ((x >= 83 && x < 83+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;
        else if ((x >= 8 && x < 8+2)   && (y >= 48 && y < 48+10))       pixels = 16'hF800;
        else if ((x >= 8 && x < 8+4)   && (y >= 48 && y < 48+2))        pixels = 16'hF800;
        else if ((x >= 8+4 && x < 8+6) && (y >= 48+2 && y < 48+4))      pixels = 16'hF800;
        else if ((x >= 8 && x < 8+4)   && (y >= 48+4 && y < 48+6))      pixels = 16'hF800;
        else if ((x >= 8+4 && x < 8+6) && (y >= 48+6 && y < 48+8))      pixels = 16'hF800;
        else if ((x >= 8 && x < 8+4)   && (y >= 48+8 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 15 && x < 15+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 15+4 && x < 15+6) && (y >= 48 && y < 48+6))      pixels = 16'hF800;
        else if ((x >= 15+4 && x < 15+6) && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;
        else if ((x >= 15 && x < 15+6)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;
        else if ((x >= 15 && x < 15+4)   && (y >= 48+6 && y < 48+8))    pixels = 16'hF800;
        else if ((x >= 22 && x < 22+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 22 && x < 22+6)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;
        else if ((x >= 22 && x < 22+4)   && (y >= 48+4 && y < 48+6))    pixels = 16'hF800;
        else if ((x >= 22 && x < 22+6)   && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;
        else if ((x >= 29 && x < 29+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 29 && x < 29+6)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;
        else if ((x >= 29 && x < 29+4)   && (y >= 48+4 && y < 48+6))    pixels = 16'hF800;
        else if ((x >= 29 && x < 29+6)   && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;
        else if ((x >= 36 && x < 36+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 36+4 && x < 36+6) && (y >= 48+2 && y < 48+8))    pixels = 16'hF800;
        else if ((x >= 36 && x < 36+4)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;
        else if ((x >= 36 && x < 36+4)   && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;
        else if ((x >= 46 && x < 46+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 46+4 && x < 46+6) && (y >= 48+2 && y < 48+8))    pixels = 16'hF800;
        else if ((x >= 46 && x < 46+4)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;
        else if ((x >= 46 && x < 46+4)   && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;
        else if ((x >= 53 && x < 53+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 53 && x < 53+6)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;
        else if ((x >= 53 && x < 53+4)   && (y >= 48+4 && y < 48+6))    pixels = 16'hF800;
        else if ((x >= 53 && x < 53+6)   && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;
        else if ((x >= 60 && x < 60+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 60+4 && x < 60+6) && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 60 && x < 60+6)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;
        else if ((x >= 67 && x < 67+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 67+5 && x < 67+6) && (y >= 48+4 && y < 48+10))   pixels = 16'hF800;
        else if ((x >= 67 && x < 67+6)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;
        else if ((x >= 67+3 && x < 67+5) && (y >= 48+4 && y < 48+6))    pixels = 16'hF800;
        else if ((x >= 67+2 && x < 67+5) && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;
        else if ((x >= 74 && x < 74+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 74+4 && x < 74+6) && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 74 && x < 74+6)   && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;
        else if ((x >= 81 && x < 81+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;
        else if ((x >= 81 && x < 81+6)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;
        else if ((x >= 81 && x < 81+4)   && (y >= 48+4 && y < 48+6))    pixels = 16'hF800;
        else if ((x >= 81 && x < 81+6)   && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;
        else pixels = 16'h0000;
    end

endmodule
