`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 03:57:56
// Design Name: 
// Module Name: chest_pretext
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


module chest_pretext(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                 pixels = 16'h07E0;
        else if ((x >= 14   && x < 14+2) && (y >= 6   && y < 6+6))     pixels = 16'hFFFF;
        else if ((x >= 14+2 && x < 14+4) && (y >= 6+4 && y < 6+10))    pixels = 16'hFFFF;
        else if ((x >= 14+4 && x < 14+6) && (y >= 6   && y < 6+6))     pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+2)   && (y >= 6 && y < 6+10))      pixels = 16'hFFFF;
        else if ((x >= 21+4 && x < 21+6) && (y >= 6 && y < 6+10))      pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+6)   && (y >= 6 && y < 6+2))       pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+6)   && (y >= 6+8 && y < 6+10))    pixels = 16'hFFFF;
        else if ((x >= 28 && x < 28+2)   && (y >= 6 && y < 6+10))      pixels = 16'hFFFF;
        else if ((x >= 28+4 && x < 28+6) && (y >= 6 && y < 6+10))      pixels = 16'hFFFF;
        else if ((x >= 28 && x < 28+6)   && (y >= 6+8 && y < 6+10))    pixels = 16'hFFFF;
        else if ((x >= 38 && x < 38+2)   && (y >= 6 && y < 6+10))      pixels = 16'hFFFF;
        else if ((x >= 38 && x < 38+6)   && (y >= 6 && y < 6+2))       pixels = 16'hFFFF;
        else if ((x >= 38 && x < 38+4)   && (y >= 6+4 && y < 6+6))     pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+2)   && (y >= 6 && y < 6+10))      pixels = 16'hFFFF;
        else if ((x >= 45+4 && x < 45+6) && (y >= 6 && y < 6+10))      pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+6)   && (y >= 6 && y < 6+2))       pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+6)   && (y >= 6+8 && y < 6+10))    pixels = 16'hFFFF;
        else if ((x >= 52 && x < 52+2)   && (y >= 6 && y < 6+10))      pixels = 16'hFFFF;
        else if ((x >= 52+4 && x < 52+6) && (y >= 6 && y < 6+10))      pixels = 16'hFFFF;
        else if ((x >= 52 && x < 52+6)   && (y >= 6+8 && y < 6+10))    pixels = 16'hFFFF;
        else if ((x >= 59 && x < 59+2)   && (y >= 6 && y < 6+10))      pixels = 16'hFFFF;
        else if ((x >= 59+4 && x < 59+6) && (y >= 6 && y < 6+10))      pixels = 16'hFFFF;
        else if ((x >= 59 && x < 59+6)   && (y >= 6 && y < 6+2))       pixels = 16'hFFFF;
        else if ((x >= 66 && x < 66+2)   && (y >= 6 && y < 6+10))      pixels = 16'hFFFF;
        else if ((x >= 66+4 && x < 66+6) && (y >= 6+2 && y < 6+8))     pixels = 16'hFFFF;
        else if ((x >= 66 && x < 66+4)   && (y >= 6 && y < 6+2))       pixels = 16'hFFFF;
        else if ((x >= 66 && x < 66+4)   && (y >= 6+8 && y < 6+10))    pixels = 16'hFFFF;
        else if ((x >= 76 && x < 76+2)   && (y >= 6 && y < 6+10))      pixels = 16'hFFFF;
        else if ((x >= 76+4 && x < 76+6) && (y >= 6 && y < 6+10))      pixels = 16'hFFFF;
        else if ((x >= 76 && x < 76+6)   && (y >= 6 && y < 6+2))       pixels = 16'hFFFF;
        else if ((x >= 76 && x < 76+6)   && (y >= 6+6 && y < 6+8))     pixels = 16'hFFFF;
        else if ((x >= 12 && x < 12+2)   && (y >= 20 && y < 20+10))    pixels = 16'hFFE0;
        else if ((x >= 12 && x < 12+6)   && (y >= 20 && y < 20+2))     pixels = 16'hFFE0;
        else if ((x >= 12 && x < 12+6)   && (y >= 20+8 && y < 20+10))  pixels = 16'hFFE0;
        else if ((x >= 19 && x < 19+2)   && (y >= 20 && y < 20+10))    pixels = 16'hFFE0;
        else if ((x >= 19+4 && x < 19+6) && (y >= 20 && y < 20+10))    pixels = 16'hFFE0;
        else if ((x >= 19 && x < 19+6)   && (y >= 20+4 && y < 20+6))   pixels = 16'hFFE0;
        else if ((x >= 26 && x < 26+2)   && (y >= 20 && y < 20+10))    pixels = 16'hFFE0;
        else if ((x >= 26 && x < 26+6)   && (y >= 20 && y < 20+2))     pixels = 16'hFFE0;
        else if ((x >= 26 && x < 26+4)   && (y >= 20+4 && y < 20+6))   pixels = 16'hFFE0;
        else if ((x >= 26 && x < 26+6)   && (y >= 20+8 && y < 20+10))  pixels = 16'hFFE0;
        else if ((x >= 33 && x < 33+2)   && (y >= 20 && y < 20+6))     pixels = 16'hFFE0;
        else if ((x >= 33+4 && x < 33+6) && (y >= 20+4 && y < 20+10))  pixels = 16'hFFE0;
        else if ((x >= 33 && x < 33+6)   && (y >= 20 && y < 20+2))     pixels = 16'hFFE0;
        else if ((x >= 33 && x < 33+6)   && (y >= 20+4 && y < 20+6))   pixels = 16'hFFE0;
        else if ((x >= 33 && x < 33+6)   && (y >= 20+8 && y < 20+10))  pixels = 16'hFFE0;
        else if ((x >= 40+2 && x < 40+4) && (y >= 20 && y < 20+10))    pixels = 16'hFFE0;
        else if ((x >= 40 && x < 40+6)   && (y >= 20 && y < 20+2))     pixels = 16'hFFE0;
        else if ((x >= 50 && x < 50+2)   && (y >= 20 && y < 20+10))    pixels = 16'hFFFF;
        else if ((x >= 50+4 && x < 50+6) && (y >= 20 && y < 20+10))    pixels = 16'hFFFF;
        else if ((x >= 50 && x < 50+6)   && (y >= 20 && y < 20+2))     pixels = 16'hFFFF;
        else if ((x >= 50 && x < 50+6)   && (y >= 20+6 && y < 20+8))   pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+2)   && (y >= 20 && y < 20+10))    pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+6)   && (y >= 20+8 && y < 20+10))  pixels = 16'hFFFF;
        else if ((x >= 64 && x < 64+2)   && (y >= 20 && y < 20+10))    pixels = 16'hFFFF;
        else if ((x >= 64+4 && x < 64+6) && (y >= 20 && y < 20+10))    pixels = 16'hFFFF;
        else if ((x >= 64 && x < 64+6)   && (y >= 20 && y < 20+2))     pixels = 16'hFFFF;
        else if ((x >= 64 && x < 64+6)   && (y >= 20+8 && y < 20+10))  pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+2)   && (y >= 20 && y < 20+10))    pixels = 16'hFFFF;
        else if ((x >= 71+4 && x < 71+6) && (y >= 20 && y < 20+10))    pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+6)   && (y >= 20 && y < 20+2))     pixels = 16'hFFFF;
        else if ((x >= 78 && x < 78+2)   && (y >= 20 && y < 20+10))    pixels = 16'hFFFF;
        else if ((x >= 78+5 && x < 78+6) && (y >= 20+4 && y < 20+10))  pixels = 16'hFFFF;
        else if ((x >= 78 && x < 78+6)   && (y >= 20 && y < 20+2))     pixels = 16'hFFFF;
        else if ((x >= 78+3 && x < 78+5) && (y >= 20+4 && y < 20+6))   pixels = 16'hFFFF;
        else if ((x >= 78+2 && x < 78+5) && (y >= 20+8 && y < 20+10))  pixels = 16'hFFFF;
        else if ((x >= 26+2 && x < 26+4) && (y >= 34 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+6)   && (y >= 34 && y < 34+2))     pixels = 16'hFFFF;
        else if ((x >= 33 && x < 33+2)   && (y >= 34 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 33+4 && x < 33+6) && (y >= 34 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 33 && x < 33+6)   && (y >= 34+4 && y < 34+6))   pixels = 16'hFFFF;
        else if ((x >= 40 && x < 40+2)   && (y >= 34 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 40 && x < 40+6)   && (y >= 34 && y < 34+2))     pixels = 16'hFFFF;
        else if ((x >= 40 && x < 40+4)   && (y >= 34+4 && y < 34+6))   pixels = 16'hFFFF;
        else if ((x >= 40 && x < 40+6)   && (y >= 34+8 && y < 34+10))  pixels = 16'hFFFF;
        else if ((x >= 50 && x < 50+2)   && (y >= 34 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 50+2 && x < 50+3) && (y >= 34+8 && y < 34+10))  pixels = 16'hFFFF;
        else if ((x >= 50+3 && x < 50+4) && (y >= 34+6 && y < 34+8))   pixels = 16'hFFFF;
        else if ((x >= 50+4 && x < 50+5) && (y >= 34+8 && y < 34+10))  pixels = 16'hFFFF;
        else if ((x >= 50+5 && x < 50+6) && (y >= 34 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+2)   && (y >= 34 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 57+4 && x < 57+6) && (y >= 34 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+6)   && (y >= 34 && y < 34+2))     pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+6)   && (y >= 34+6 && y < 34+8))   pixels = 16'hFFFF;
        else if ((x >= 64   && x < 64+2) && (y >= 34   && y < 34+6))   pixels = 16'hFFFF;
        else if ((x >= 64+2 && x < 64+4) && (y >= 34+4 && y < 34+10))  pixels = 16'hFFFF;
        else if ((x >= 64+4 && x < 64+6) && (y >= 34   && y < 34+6))   pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+2) && (y >= 34   && y < 34+6))     pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+2) && (y >= 34+8 && y < 34+10))    pixels = 16'hFFFF;
        else if ((x >= 18 && x < 18+2)   && (y >= 48 && y < 48+10))    pixels = 16'hFFE0;
        else if ((x >= 18+4 && x < 18+6) && (y >= 48 && y < 48+10))    pixels = 16'hFFE0;
        else if ((x >= 18 && x < 18+6)   && (y >= 48 && y < 48+2))     pixels = 16'hFFE0;
        else if ((x >= 18 && x < 18+6)   && (y >= 48+8 && y < 48+10))  pixels = 16'hFFE0;
        else if ((x >= 26 && x < 26+2)   && (y >= 48 && y < 48+10))    pixels = 16'hFFE0;
        else if ((x >= 26+4 && x < 26+6) && (y >= 48 && y < 48+6))     pixels = 16'hFFE0;
        else if ((x >= 26 && x < 26+6)   && (y >= 48 && y < 48+2))     pixels = 16'hFFE0;
        else if ((x >= 26 && x < 26+6)   && (y >= 48+4 && y < 48+6))   pixels = 16'hFFE0;
        else if ((x >= 33 && x < 33+2)   && (y >= 48 && y < 48+10))    pixels = 16'hFFE0;
        else if ((x >= 33 && x < 33+6)   && (y >= 48 && y < 48+2))     pixels = 16'hFFE0;
        else if ((x >= 33 && x < 33+4)   && (y >= 48+4 && y < 48+6))   pixels = 16'hFFE0;
        else if ((x >= 33 && x < 33+6)   && (y >= 48+8 && y < 48+10))  pixels = 16'hFFE0;
        else if ((x >= 40 && x < 40+2)   && (y >= 48 && y < 48+10))    pixels = 16'hFFE0;
        else if ((x >= 40+4 && x < 40+6) && (y >= 48 && y < 48+10))    pixels = 16'hFFE0;
        else if ((x >= 40 && x < 40+6)   && (y >= 48 && y < 48+2))     pixels = 16'hFFE0;
        else if ((x >= 50+2 && x < 50+4) && (y >= 48 && y < 48+10))    pixels = 16'hFFE0;
        else if ((x >= 50 && x < 50+6)   && (y >= 48 && y < 48+2))     pixels = 16'hFFE0;
        else if ((x >= 50 && x < 50+6)   && (y >= 48+8 && y < 48+10))  pixels = 16'hFFE0;
        else if ((x >= 57+2 && x < 57+4) && (y >= 48 && y < 48+10))    pixels = 16'hFFE0;
        else if ((x >= 57 && x < 57+6)   && (y >= 48 && y < 48+2))     pixels = 16'hFFE0;
        else if ((x >= 64   && x < 64+2) && (y >= 56 && y < 56+2))     pixels = 16'hFFE0;
        else if ((x >= 64+3 && x < 64+5) && (y >= 56 && y < 56+2))     pixels = 16'hFFE0;
        else if ((x >= 64+6 && x < 64+8) && (y >= 56 && y < 56+2))     pixels = 16'hFFE0;
        else if ((x >= 74 && x <= 75) && (y >= 48 && y <= 51))         pixels = 16'hFFE0;
        else if ((x >= 78 && x <= 80) && (y >= 48 && y <= 52))         pixels = 16'hFFE0;
        else if ((x >= 76 && x <= 77) && (y >= 53 && y <= 54))         pixels = 16'hFFE0;
        else if ((x >= 76 && x <= 77) && (y >= 56 && y <= 57))         pixels = 16'hFFE0;
        else if ((x >= 74 && x <= 79) && (y >= 48 && y <= 49))         pixels = 16'hFFE0;
        else pixels = 16'h0000;
    end

endmodule
