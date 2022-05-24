`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2020 17:17:14
// Design Name: 
// Module Name: intro6
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


// DOCTOR, YOU MUST REACH THE LAB
module intro6(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                  pixels = 16'hFFFF;

//        Intro 6
        else if ((x >= 7 && x < 7+2)   && (y >= 7 && y < 7+10))         pixels = 16'hFFE0;
        else if ((x >= 7+4 && x < 7+6) && (y >= 7+2 && y < 7+8))        pixels = 16'hFFE0;
        else if ((x >= 7 && x < 7+4)   && (y >= 7 && y < 7+2))          pixels = 16'hFFE0;
        else if ((x >= 7 && x < 7+4)   && (y >= 7+8 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 15 && x < 15+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 15+4 && x < 15+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 15 && x < 15+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFE0;
        else if ((x >= 15 && x < 15+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFE0;
        else if ((x >= 23 && x < 23+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 23 && x < 23+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFE0;
        else if ((x >= 23 && x < 23+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFE0;
        else if ((x >= 31+2 && x < 31+4) && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 31 && x < 31+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFE0;
        else if ((x >= 39 && x < 39+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 39+4 && x < 39+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 39 && x < 39+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFE0;
        else if ((x >= 39 && x < 39+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFE0;
        else if ((x >= 47 && x < 47+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 47+4 && x < 47+6) && (y >= 7 && y < 7+6))        pixels = 16'hFFE0;
        else if ((x >= 47+4 && x < 47+6) && (y >= 7+8 && y < 7+10))     pixels = 16'hFFE0;
        else if ((x >= 47 && x < 47+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFE0;
        else if ((x >= 47 && x < 47+4)   && (y >= 7+6 && y < 7+8))      pixels = 16'hFFE0;
        else if ((x >= 55   && x < 55+2) && (y >= 12   && y < 12+4))    pixels = 16'hFFE0;
        else if ((x >= 55+2 && x < 55+4) && (y >= 12 && y < 12+6))      pixels = 16'hFFE0;
        else if ((x >= 66   && x < 66+2) && (y >= 7   && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 66+2 && x < 66+4) && (y >= 7+4 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 66+4 && x < 66+6) && (y >= 7   && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 74 && x < 74+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 74+4 && x < 74+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 74 && x < 74+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 74 && x < 74+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 82 && x < 82+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 82+4 && x < 82+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 82 && x < 82+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 11 && x < 11+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 11+3 && x < 11+4) && (y >= 27 && y < 27+6))      pixels = 16'hFFFF;
        else if ((x >= 11+5 && x < 11+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 11 && x < 11+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 19 && x < 19+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 19+4 && x < 19+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 19 && x < 19+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+2)   && (y >= 27 && y < 27+6))      pixels = 16'hFFFF;
        else if ((x >= 27+4 && x < 27+6) && (y >= 27+4 && y < 27+10))   pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+6)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF;
        else if ((x >= 34+2 && x < 34+4) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 34 && x < 34+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 47 && x < 47+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 47+4 && x < 47+6) && (y >= 27 && y < 27+6))      pixels = 16'hFFFF;
        else if ((x >= 47+4 && x < 47+6) && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF;
        else if ((x >= 47 && x < 47+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 47 && x < 47+4)   && (y >= 27+6 && y < 27+8))    pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+4)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF;
        else if ((x >= 63 && x < 63+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 63+4 && x < 63+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 63 && x < 63+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 63 && x < 63+6)   && (y >= 27+6 && y < 27+8))    pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF;
        else if ((x >= 79 && x < 79+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 79+4 && x < 79+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 79 && x < 79+6)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFFF;
        else if ((x >= 23+2 && x < 23+4) && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 23 && x < 23+6)   && (y >= 47 && y < 47+2))      pixels = 16'h07E0;
        else if ((x >= 31 && x < 31+2)   && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 31+4 && x < 31+6) && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 31 && x < 31+6)   && (y >= 47+4 && y < 47+6))    pixels = 16'h07E0;
        else if ((x >= 39 && x < 39+2)   && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 39 && x < 39+6)   && (y >= 47 && y < 47+2))      pixels = 16'h07E0;
        else if ((x >= 39 && x < 39+4)   && (y >= 47+4 && y < 47+6))    pixels = 16'h07E0;
        else if ((x >= 39 && x < 39+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'h07E0;
        else if ((x >= 51 && x < 51+2)   && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 51 && x < 51+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'h07E0;
        else if ((x >= 59 && x < 59+2)   && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 59+4 && x < 59+6) && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 59 && x < 59+6)   && (y >= 47 && y < 47+2))      pixels = 16'h07E0;
        else if ((x >= 59 && x < 59+6)   && (y >= 47+6 && y < 47+8))    pixels = 16'h07E0;
        else if ((x >= 67 && x < 67+2)   && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 67 && x < 67+4)   && (y >= 47 && y < 47+2))      pixels = 16'h07E0;
        else if ((x >= 67+4 && x < 67+6) && (y >= 47+2 && y < 47+4))    pixels = 16'h07E0;
        else if ((x >= 67 && x < 67+4)   && (y >= 47+4 && y < 47+6))    pixels = 16'h07E0;
        else if ((x >= 67+4 && x < 67+6) && (y >= 47+6 && y < 47+8))    pixels = 16'h07E0;
        else if ((x >= 67 && x < 67+4)   && (y >= 47+8 && y < 47+10))   pixels = 16'h07E0;
        else pixels = 16'h0000;
    end

endmodule
