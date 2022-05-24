`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2020 17:17:14
// Design Name: 
// Module Name: intro4
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


// WHEN ALL HOPE WAS LOST,
module intro4(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                pixels = 16'hFFFF;
             
//        Intro4        
        else if ((x >= 18 && x < 18+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 18+2 && x < 18+3) && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 18+3 && x < 18+4) && (y >= 7+6 && y < 7+8))      pixels = 16'hFFFF;
        else if ((x >= 18+4 && x < 18+5) && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 18+5 && x < 18+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 26+4 && x < 26+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+6)   && (y >= 7+4 && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 34 && x < 34+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 34 && x < 34+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 34 && x < 34+4)   && (y >= 7+4 && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 34 && x < 34+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 42 && x < 42+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 42+4 && x < 42+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 42 && x < 42+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 54 && x < 54+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 54+4 && x < 54+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 54 && x < 54+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 54 && x < 54+6)   && (y >= 7+6 && y < 7+8))      pixels = 16'hFFFF;
        else if ((x >= 62 && x < 62+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 62 && x < 62+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 70 && x < 70+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 70 && x < 70+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 33 && x < 33+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 33+4 && x < 33+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 33 && x < 33+6)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFE0;
        else if ((x >= 41 && x < 41+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 41+4 && x < 41+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 41 && x < 41+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 41 && x < 41+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 49 && x < 49+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 49+4 && x < 49+6) && (y >= 27 && y < 27+6))      pixels = 16'hFFE0;
        else if ((x >= 49 && x < 49+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 49 && x < 49+6)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFE0;
        else if ((x >= 57 && x < 57+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 57 && x < 57+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 57 && x < 57+4)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFE0;
        else if ((x >= 57 && x < 57+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 18 && x < 18+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 18+2 && x < 18+3) && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 18+3 && x < 18+4) && (y >= 47+6 && y < 47+8))    pixels = 16'hFFFF;
        else if ((x >= 18+4 && x < 18+5) && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 18+5 && x < 18+6) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 26+4 && x < 26+6) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+6)   && (y >= 47+6 && y < 47+8))    pixels = 16'hFFFF;
        else if ((x >= 34 && x < 34+2)   && (y >= 47 && y < 47+6))      pixels = 16'hFFFF;
        else if ((x >= 34+4 && x < 34+6) && (y >= 47+4 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 34 && x < 34+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 34 && x < 34+6)   && (y >= 47+4 && y < 47+6))    pixels = 16'hFFFF;
        else if ((x >= 34 && x < 34+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 46 && x < 46+2)   && (y >= 47 && y < 47+10))     pixels = 16'hF800;
        else if ((x >= 46 && x < 46+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hF800;
        else if ((x >= 54 && x < 54+2)   && (y >= 47 && y < 47+10))     pixels = 16'hF800;
        else if ((x >= 54+4 && x < 54+6) && (y >= 47 && y < 47+10))     pixels = 16'hF800;
        else if ((x >= 54 && x < 54+6)   && (y >= 47 && y < 47+2))      pixels = 16'hF800;
        else if ((x >= 54 && x < 54+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hF800;
        else if ((x >= 62 && x < 62+2)   && (y >= 47 && y < 47+6))      pixels = 16'hF800;
        else if ((x >= 62+4 && x < 62+6) && (y >= 47+4 && y < 47+10))   pixels = 16'hF800;
        else if ((x >= 62 && x < 62+6)   && (y >= 47 && y < 47+2))      pixels = 16'hF800;
        else if ((x >= 62 && x < 62+6)   && (y >= 47+4 && y < 47+6))    pixels = 16'hF800;
        else if ((x >= 62 && x < 62+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hF800;
        else if ((x >= 70+2 && x < 70+4) && (y >= 47 && y < 47+10))     pixels = 16'hF800;
        else if ((x >= 70 && x < 70+6)   && (y >= 47 && y < 47+2))      pixels = 16'hF800;
        else if ((x >= 78   && x < 78+2) && (y >= 53   && y < 53+4))    pixels = 16'hF800;
        else if ((x >= 78+2 && x < 78+4) && (y >= 53 && y < 53+6))      pixels = 16'hF800;
        else pixels = 16'h0000;
    end
    
endmodule
