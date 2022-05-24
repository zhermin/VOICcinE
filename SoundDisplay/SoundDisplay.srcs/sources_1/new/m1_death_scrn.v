`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2020 03:31:51
// Design Name: 
// Module Name: m1_death_scrn
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


module m1_death_scrn(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                  pixels = 16'hF800;

//        m1 death
        else if ((x >= 19 && x < 19+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 19+2 && x < 19+3) && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 19+3 && x < 19+4) && (y >= 7+6 && y < 7+8))      pixels = 16'hFFFF;
        else if ((x >= 19+4 && x < 19+5) && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 19+5 && x < 19+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 26+4 && x < 26+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+6)   && (y >= 7+6 && y < 7+8))      pixels = 16'hFFFF;
        else if ((x >= 33 && x < 33+2)   && (y >= 7 && y < 7+6))        pixels = 16'hFFFF;
        else if ((x >= 33+4 && x < 33+6) && (y >= 7+4 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 33 && x < 33+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 33 && x < 33+6)   && (y >= 7+4 && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 33 && x < 33+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 40 && x < 40+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 40+4 && x < 40+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 40 && x < 40+6)   && (y >= 7+4 && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 50   && x < 50+2) && (y >= 7   && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 50+2 && x < 50+4) && (y >= 7+4 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 50+4 && x < 50+6) && (y >= 7   && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 57+4 && x < 57+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 64 && x < 64+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 64+4 && x < 64+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 64 && x < 64+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 71+4 && x < 71+6) && (y >= 7 && y < 7+6))        pixels = 16'hFFFF;
        else if ((x >= 71+4 && x < 71+6) && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+4)   && (y >= 7+6 && y < 7+8))      pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 31+4 && x < 31+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 31 && x < 31+6)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFE0;
        else if ((x >= 38 && x < 38+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 38+4 && x < 38+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 38 && x < 38+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 38 && x < 38+6)   && (y >= 27+6 && y < 27+8))    pixels = 16'hFFE0;
        else if ((x >= 45 && x < 45+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 45+4 && x < 45+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 45 && x < 45+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 52 && x < 52+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 52+4 && x < 52+6) && (y >= 27+2 && y < 27+8))    pixels = 16'hFFE0;
        else if ((x >= 52 && x < 52+4)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 52 && x < 52+4)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 59 && x < 59+2)   && (y >= 27 && y < 27+6))      pixels = 16'hFFE0;
        else if ((x >= 59+4 && x < 59+6) && (y >= 27+4 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 59 && x < 59+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 59 && x < 59+6)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFE0;
        else if ((x >= 59 && x < 59+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 19 && x < 19+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 19+4 && x < 19+6) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 19 && x < 19+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+4)   && (y >= 47+4 && y < 47+6))    pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 33 && x < 33+2) && (y >= 47 && y < 47+4))        pixels = 16'hFFFF;
        else if ((x >= 33 && x < 33+2) && (y >= 47+6 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 33+2 && x < 33+4) && (y >= 47+4 && y < 47+6))    pixels = 16'hFFFF;
        else if ((x >= 33+4 && x < 33+6) && (y >= 47 && y < 47+4))      pixels = 16'hFFFF;
        else if ((x >= 33+4 && x < 33+6) && (y >= 47+6 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 40+2 && x < 40+4) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 40 && x < 40+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 50+2 && x < 50+4) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 50 && x < 50+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 57+2 && x < 57+4) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 64 && x < 64+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 64+3 && x < 64+4) && (y >= 47 && y < 47+6))      pixels = 16'hFFFF;
        else if ((x >= 64+5 && x < 64+6) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 64 && x < 64+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+4)   && (y >= 47+4 && y < 47+6))    pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else pixels = 16'h0000;
    end

endmodule
