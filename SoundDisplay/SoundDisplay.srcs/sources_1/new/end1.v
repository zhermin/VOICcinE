`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 03:57:56
// Design Name: 
// Module Name: end1
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


module end1(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                  pixels = 16'h07E0;

//        Mission accomplished screen
        else if ((x >= 26 && x < 26+2)   && (y >= 19 && y < 19+10))     pixels = 16'hFFE0; 
        else if ((x >= 26+3 && x < 26+4) && (y >= 19 && y < 19+6))      pixels = 16'hFFE0; 
        else if ((x >= 26+5 && x < 26+6) && (y >= 19 && y < 19+10))     pixels = 16'hFFE0; 
        else if ((x >= 26 && x < 26+6)   && (y >= 19 && y < 19+2))      pixels = 16'hFFE0; 
        else if ((x >= 33+2 && x < 33+4) && (y >= 19 && y < 19+10))     pixels = 16'hFFE0; 
        else if ((x >= 33 && x < 33+6)   && (y >= 19 && y < 19+2))      pixels = 16'hFFE0; 
        else if ((x >= 33 && x < 33+6)   && (y >= 19+8 && y < 19+10))   pixels = 16'hFFE0; 
        else if ((x >= 40 && x < 40+2)   && (y >= 19 && y < 19+6))      pixels = 16'hFFE0; 
        else if ((x >= 40+4 && x < 40+6) && (y >= 19+4 && y < 19+10))   pixels = 16'hFFE0; 
        else if ((x >= 40 && x < 40+6)   && (y >= 19 && y < 19+2))      pixels = 16'hFFE0; 
        else if ((x >= 40 && x < 40+6)   && (y >= 19+4 && y < 19+6))    pixels = 16'hFFE0; 
        else if ((x >= 40 && x < 40+6)   && (y >= 19+8 && y < 19+10))   pixels = 16'hFFE0; 
        else if ((x >= 47 && x < 47+2)   && (y >= 19 && y < 19+6))      pixels = 16'hFFE0; 
        else if ((x >= 47+4 && x < 47+6) && (y >= 19+4 && y < 19+10))   pixels = 16'hFFE0; 
        else if ((x >= 47 && x < 47+6)   && (y >= 19 && y < 19+2))      pixels = 16'hFFE0; 
        else if ((x >= 47 && x < 47+6)   && (y >= 19+4 && y < 19+6))    pixels = 16'hFFE0; 
        else if ((x >= 47 && x < 47+6)   && (y >= 19+8 && y < 19+10))   pixels = 16'hFFE0; 
        else if ((x >= 54+2 && x < 54+4) && (y >= 19 && y < 19+10))     pixels = 16'hFFE0; 
        else if ((x >= 54 && x < 54+6)   && (y >= 19 && y < 19+2))      pixels = 16'hFFE0; 
        else if ((x >= 54 && x < 54+6)   && (y >= 19+8 && y < 19+10))   pixels = 16'hFFE0; 
        else if ((x >= 61 && x < 61+2)   && (y >= 19 && y < 19+10))     pixels = 16'hFFE0; 
        else if ((x >= 61+4 && x < 61+6) && (y >= 19 && y < 19+10))     pixels = 16'hFFE0; 
        else if ((x >= 61 && x < 61+6)   && (y >= 19 && y < 19+2))      pixels = 16'hFFE0; 
        else if ((x >= 61 && x < 61+6)   && (y >= 19+8 && y < 19+10))   pixels = 16'hFFE0; 
        else if ((x >= 68 && x < 68+2)   && (y >= 19 && y < 19+10))     pixels = 16'hFFE0; 
        else if ((x >= 68+4 && x < 68+6) && (y >= 19 && y < 19+10))     pixels = 16'hFFE0; 
        else if ((x >= 68 && x < 68+6)   && (y >= 19 && y < 19+2))      pixels = 16'hFFE0; 
        else if ((x >= 7 && x < 7+2)   && (y >= 32 && y < 32+10))       pixels = 16'hFFE0; 
        else if ((x >= 7+4 && x < 7+6) && (y >= 32 && y < 32+10))       pixels = 16'hFFE0; 
        else if ((x >= 7 && x < 7+6)   && (y >= 32 && y < 32+2))        pixels = 16'hFFE0; 
        else if ((x >= 7 && x < 7+6)   && (y >= 32+6 && y < 32+8))      pixels = 16'hFFE0; 
        else if ((x >= 14 && x < 14+2)   && (y >= 32 && y < 32+10))     pixels = 16'hFFE0; 
        else if ((x >= 14 && x < 14+6)   && (y >= 32 && y < 32+2))      pixels = 16'hFFE0; 
        else if ((x >= 14 && x < 14+6)   && (y >= 32+8 && y < 32+10))   pixels = 16'hFFE0; 
        else if ((x >= 21 && x < 21+2)   && (y >= 32 && y < 32+10))     pixels = 16'hFFE0; 
        else if ((x >= 21 && x < 21+6)   && (y >= 32 && y < 32+2))      pixels = 16'hFFE0; 
        else if ((x >= 21 && x < 21+6)   && (y >= 32+8 && y < 32+10))   pixels = 16'hFFE0; 
        else if ((x >= 28 && x < 28+2)   && (y >= 32 && y < 32+10))     pixels = 16'hFFE0; 
        else if ((x >= 28+4 && x < 28+6) && (y >= 32 && y < 32+10))     pixels = 16'hFFE0; 
        else if ((x >= 28 && x < 28+6)   && (y >= 32 && y < 32+2))      pixels = 16'hFFE0; 
        else if ((x >= 28 && x < 28+6)   && (y >= 32+8 && y < 32+10))   pixels = 16'hFFE0; 
        else if ((x >= 35 && x < 35+2)   && (y >= 32 && y < 32+10))     pixels = 16'hFFE0; 
        else if ((x >= 35+3 && x < 35+4) && (y >= 32 && y < 32+6))      pixels = 16'hFFE0; 
        else if ((x >= 35+5 && x < 35+6) && (y >= 32 && y < 32+10))     pixels = 16'hFFE0; 
        else if ((x >= 35 && x < 35+6)   && (y >= 32 && y < 32+2))      pixels = 16'hFFE0; 
        else if ((x >= 42 && x < 42+2)   && (y >= 32 && y < 32+10))     pixels = 16'hFFE0; 
        else if ((x >= 42+4 && x < 42+6) && (y >= 32 && y < 32+6))      pixels = 16'hFFE0; 
        else if ((x >= 42 && x < 42+6)   && (y >= 32 && y < 32+2))      pixels = 16'hFFE0;
        else if ((x >= 42 && x < 42+6)   && (y >= 32+4 && y < 32+6))    pixels = 16'hFFE0; 
        else if ((x >= 49 && x < 49+2)   && (y >= 32 && y < 32+10))     pixels = 16'hFFE0; 
        else if ((x >= 49 && x < 49+6)   && (y >= 32+8 && y < 32+10))   pixels = 16'hFFE0; 
        else if ((x >= 56+2 && x < 56+4) && (y >= 32 && y < 32+10))     pixels = 16'hFFE0; 
        else if ((x >= 56 && x < 56+6)   && (y >= 32 && y < 32+2))      pixels = 16'hFFE0; 
        else if ((x >= 56 && x < 56+6)   && (y >= 32+8 && y < 32+10))   pixels = 16'hFFE0; 
        else if ((x >= 63 && x < 63+2)   && (y >= 32 && y < 32+6))      pixels = 16'hFFE0; 
        else if ((x >= 63+4 && x < 63+6) && (y >= 32+4 && y < 32+10))   pixels = 16'hFFE0; 
        else if ((x >= 63 && x < 63+6)   && (y >= 32 && y < 32+2))      pixels = 16'hFFE0; 
        else if ((x >= 63 && x < 63+6)   && (y >= 32+4 && y < 32+6))    pixels = 16'hFFE0; 
        else if ((x >= 63 && x < 63+6)   && (y >= 32+8 && y < 32+10))   pixels = 16'hFFE0; 
        else if ((x >= 70 && x < 70+2)   && (y >= 32 && y < 32+10))     pixels = 16'hFFE0; 
        else if ((x >= 70+4 && x < 70+6) && (y >= 32 && y < 32+10))     pixels = 16'hFFE0; 
        else if ((x >= 70 && x < 70+6)   && (y >= 32+4 && y < 32+6))    pixels = 16'hFFE0; 
        else if ((x >= 77 && x < 77+2)   && (y >= 32 && y < 32+10))     pixels = 16'hFFE0; 
        else if ((x >= 77 && x < 77+6)   && (y >= 32 && y < 32+2))      pixels = 16'hFFE0; 
        else if ((x >= 77 && x < 77+4)   && (y >= 32+4 && y < 32+6))    pixels = 16'hFFE0; 
        else if ((x >= 77 && x < 77+6)   && (y >= 32+8 && y < 32+10))   pixels = 16'hFFE0; 
        else if ((x >= 84 && x < 84+2)   && (y >= 32 && y < 32+10))     pixels = 16'hFFE0; 
        else if ((x >= 84+4 && x < 84+6) && (y >= 32+2 && y < 32+8))    pixels = 16'hFFE0; 
        else if ((x >= 84 && x < 84+4)   && (y >= 32 && y < 32+2))      pixels = 16'hFFE0; 
        else if ((x >= 84 && x < 84+4)   && (y >= 32+8 && y < 32+10))   pixels = 16'hFFE0;
        else pixels = 16'h0000;
    end

endmodule
