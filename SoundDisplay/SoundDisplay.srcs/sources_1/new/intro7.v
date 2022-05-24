`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2020 17:17:14
// Design Name: 
// Module Name: intro7
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


// TO GET THE VACCINE AND SAVE US ALL!
module intro7(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                pixels = 16'hFFFF;

//        Intro7
        else if ((x >= 13+2 && x < 13+4) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 13 && x < 13+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 21+4 && x < 21+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 33 && x < 33+2)   && (y >= 7 && y < 7+10))       pixels = 16'hF800;
        else if ((x >= 33+5 && x < 33+6) && (y >= 7+4 && y < 7+10))     pixels = 16'hF800;
        else if ((x >= 33 && x < 33+6)   && (y >= 7 && y < 7+2))        pixels = 16'hF800;
        else if ((x >= 33+3 && x < 33+5) && (y >= 7+4 && y < 7+6))      pixels = 16'hF800;
        else if ((x >= 33+2 && x < 33+5) && (y >= 7+8 && y < 7+10))     pixels = 16'hF800;
        else if ((x >= 41 && x < 41+2)   && (y >= 7 && y < 7+10))       pixels = 16'hF800;
        else if ((x >= 41 && x < 41+6)   && (y >= 7 && y < 7+2))        pixels = 16'hF800;
        else if ((x >= 41 && x < 41+4)   && (y >= 7+4 && y < 7+6))      pixels = 16'hF800;
        else if ((x >= 41 && x < 41+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hF800;
        else if ((x >= 49+2 && x < 49+4) && (y >= 7 && y < 7+10))       pixels = 16'hF800;
        else if ((x >= 49 && x < 49+6)   && (y >= 7 && y < 7+2))        pixels = 16'hF800;
        else if ((x >= 61+2 && x < 61+4) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 61 && x < 61+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 69 && x < 69+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 69+4 && x < 69+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 69 && x < 69+6)   && (y >= 7+4 && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 77 && x < 77+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 77 && x < 77+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 77 && x < 77+4)   && (y >= 7+4 && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 77 && x < 77+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 7 && x < 7+2)   && (y >= 27 && y < 27+8))        pixels = 16'hFFE0;
        else if ((x >= 7+2 && x < 7+4) && (y >= 27+8 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 7+4 && x < 7+6) && (y >= 27 && y < 27+8))        pixels = 16'hFFE0;
        else if ((x >= 15 && x < 15+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 15+4 && x < 15+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 15 && x < 15+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 15 && x < 15+6)   && (y >= 27+6 && y < 27+8))    pixels = 16'hFFE0;
        else if ((x >= 23 && x < 23+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 23 && x < 23+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 23 && x < 23+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 31 && x < 31+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 31 && x < 31+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 31 && x < 31+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 39+2 && x < 39+4) && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 39 && x < 39+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 39 && x < 39+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 47 && x < 47+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 47+4 && x < 47+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 47 && x < 47+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 55 && x < 55+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 55 && x < 55+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 55 && x < 55+4)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFE0;
        else if ((x >= 55 && x < 55+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 66 && x < 66+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 66+4 && x < 66+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 66 && x < 66+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 66 && x < 66+6)   && (y >= 27+6 && y < 27+8))    pixels = 16'hFFFF;
        else if ((x >= 74 && x < 74+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 74+4 && x < 74+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 74 && x < 74+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 82 && x < 82+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 82+4 && x < 82+6) && (y >= 27+2 && y < 27+8))    pixels = 16'hFFFF;
        else if ((x >= 82 && x < 82+4)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 82 && x < 82+4)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF;
        else if ((x >= 7 && x < 7+2)   && (y >= 47 && y < 47+6))        pixels = 16'h07E0;
        else if ((x >= 7+4 && x < 7+6) && (y >= 47+4 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 7 && x < 7+6)   && (y >= 47 && y < 47+2))        pixels = 16'h07E0;
        else if ((x >= 7 && x < 7+6)   && (y >= 47+4 && y < 47+6))      pixels = 16'h07E0;
        else if ((x >= 7 && x < 7+6)   && (y >= 47+8 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 15 && x < 15+2)   && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 15+4 && x < 15+6) && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 15 && x < 15+6)   && (y >= 47 && y < 47+2))      pixels = 16'h07E0;
        else if ((x >= 15 && x < 15+6)   && (y >= 47+6 && y < 47+8))    pixels = 16'h07E0;
        else if ((x >= 23 && x < 23+2)   && (y >= 47 && y < 47+8))      pixels = 16'h07E0;
        else if ((x >= 23+2 && x < 23+4) && (y >= 47+8 && y < 47+10))   pixels = 16'h07E0;
        else if ((x >= 23+4 && x < 23+6) && (y >= 47 && y < 47+8))      pixels = 16'h07E0;
        else if ((x >= 31 && x < 31+2)   && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 31 && x < 31+6)   && (y >= 47 && y < 47+2))      pixels = 16'h07E0;
        else if ((x >= 31 && x < 31+4)   && (y >= 47+4 && y < 47+6))    pixels = 16'h07E0;
        else if ((x >= 31 && x < 31+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'h07E0;
        else if ((x >= 42 && x < 42+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 42+4 && x < 42+6) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 42 && x < 42+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 50 && x < 50+2)   && (y >= 47 && y < 47+6))      pixels = 16'hFFFF;
        else if ((x >= 50+4 && x < 50+6) && (y >= 47+4 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 50 && x < 50+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 50 && x < 50+6)   && (y >= 47+4 && y < 47+6))    pixels = 16'hFFFF;
        else if ((x >= 50 && x < 50+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 61 && x < 61+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 61+4 && x < 61+6) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 61 && x < 61+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 61 && x < 61+6)   && (y >= 47+6 && y < 47+8))    pixels = 16'hFFFF;
        else if ((x >= 69 && x < 69+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 69 && x < 69+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 77 && x < 77+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 77 && x < 77+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 86 && x < 86+2) && (y >= 47   && y < 47+6))      pixels = 16'hFFFF;
        else if ((x >= 86 && x < 86+2) && (y >= 47+8 && y < 47+10))     pixels = 16'hFFFF;
        else pixels = 16'h0000;
    end

endmodule
