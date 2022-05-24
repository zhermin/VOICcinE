`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 03:57:56
// Design Name: 
// Module Name: victory
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


module victory(
    input [6:0] x,                
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                 pixels = 16'h07E0;
        else if ((x >= 8 && x < 8+2)   && (y >= 16 && y < 16+10))      pixels = 16'hFFFF;
        else if ((x >= 8+5 && x < 8+6) && (y >= 16+4 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 8 && x < 8+6)   && (y >= 16 && y < 16+2))       pixels = 16'hFFFF;
        else if ((x >= 8+3 && x < 8+5) && (y >= 16+4 && y < 16+6))     pixels = 16'hFFFF;
        else if ((x >= 8+2 && x < 8+5) && (y >= 16+8 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 15 && x < 15+2)   && (y >= 16 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 15+4 && x < 15+6) && (y >= 16 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 15 && x < 15+6)   && (y >= 16 && y < 16+2))     pixels = 16'hFFFF;
        else if ((x >= 15 && x < 15+6)   && (y >= 16+8 && y < 16+10))  pixels = 16'hFFFF;
        else if ((x >= 22 && x < 22+2)   && (y >= 16 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 22+4 && x < 22+6) && (y >= 16 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 22 && x < 22+6)   && (y >= 16 && y < 16+2))     pixels = 16'hFFFF;
        else if ((x >= 22 && x < 22+6)   && (y >= 16+8 && y < 16+10))  pixels = 16'hFFFF;
        else if ((x >= 29 && x < 29+2)   && (y >= 16 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 29+4 && x < 29+6) && (y >= 16+2 && y < 16+8))   pixels = 16'hFFFF;
        else if ((x >= 29 && x < 29+4)   && (y >= 16 && y < 16+2))     pixels = 16'hFFFF;
        else if ((x >= 29 && x < 29+4)   && (y >= 16+8 && y < 16+10))  pixels = 16'hFFFF;
        else if ((x >= 39+2 && x < 39+4) && (y >= 16   && y < 16+10))  pixels = 16'hFFFF;
        else if ((x >= 39   && x < 39+6) && (y >= 16   && y < 16+2))   pixels = 16'hFFFF;
        else if ((x >= 39   && x < 39+4) && (y >= 16+8   && y < 16+10))pixels = 16'hFFFF;
        else if ((x >= 46 && x < 46+2)   && (y >= 16 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 46+4 && x < 46+6) && (y >= 16 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 46 && x < 46+6)   && (y >= 16 && y < 16+2))     pixels = 16'hFFFF;
        else if ((x >= 46 && x < 46+6)   && (y >= 16+8 && y < 16+10))  pixels = 16'hFFFF;
        else if ((x >= 53 && x < 53+2)   && (y >= 16 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 53 && x < 53+4)   && (y >= 16 && y < 16+2))     pixels = 16'hFFFF;
        else if ((x >= 53+4 && x < 53+6) && (y >= 16+2 && y < 16+4))   pixels = 16'hFFFF;
        else if ((x >= 53 && x < 53+4)   && (y >= 16+4 && y < 16+6))   pixels = 16'hFFFF;
        else if ((x >= 53+4 && x < 53+6) && (y >= 16+6 && y < 16+8))   pixels = 16'hFFFF;
        else if ((x >= 53 && x < 53+4)   && (y >= 16+8 && y < 16+10))  pixels = 16'hFFFF;
        else if ((x >= 63 && x < 63+2)   && (y >= 16 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 63+4 && x < 63+6) && (y >= 16+2 && y < 16+8))   pixels = 16'hFFFF;
        else if ((x >= 63 && x < 63+4)   && (y >= 16 && y < 16+2))     pixels = 16'hFFFF;
        else if ((x >= 63 && x < 63+4)   && (y >= 16+8 && y < 16+10))  pixels = 16'hFFFF;
        else if ((x >= 70 && x < 70+2)   && (y >= 16 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 70+4 && x < 70+6) && (y >= 16 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 70 && x < 70+6)   && (y >= 16 && y < 16+2))     pixels = 16'hFFFF;
        else if ((x >= 70 && x < 70+6)   && (y >= 16+8 && y < 16+10))  pixels = 16'hFFFF;
        else if ((x >= 77 && x < 77+2)   && (y >= 16 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 77 && x < 77+6)   && (y >= 16 && y < 16+2))     pixels = 16'hFFFF;
        else if ((x >= 77 && x < 77+6)   && (y >= 16+8 && y < 16+10))  pixels = 16'hFFFF;
        else if ((x >= 86 && x < 86+2) && (y >= 16   && y < 16+6))     pixels = 16'hFFFF;
        else if ((x >= 86 && x < 86+2) && (y >= 16+8 && y < 16+10))    pixels = 16'hFFFF;
        else if ((x >= 2 && x < 2+2)   && (y >= 36 && y < 36+10))      pixels = 16'hFFFF;
        else if ((x >= 2 && x < 2+6)   && (y >= 36+8 && y < 36+10))    pixels = 16'hFFFF;
        else if ((x >= 9 && x < 9+2)   && (y >= 36 && y < 36+10))      pixels = 16'hFFFF;
        else if ((x >= 9 && x < 9+6)   && (y >= 36 && y < 36+2))       pixels = 16'hFFFF;
        else if ((x >= 9 && x < 9+4)   && (y >= 36+4 && y < 36+6))     pixels = 16'hFFFF;
        else if ((x >= 9 && x < 9+6)   && (y >= 36+8 && y < 36+10))    pixels = 16'hFFFF;
        else if ((x >= 16+2 && x < 16+4) && (y >= 36 && y < 36+10))    pixels = 16'hFFFF;
        else if ((x >= 16 && x < 16+6)   && (y >= 36 && y < 36+2))     pixels = 16'hFFFF;
        else if ((x >= 23   && x < 23+2) && (y >= 35   && y < 35+4))   pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+2)   && (y >= 36 && y < 36+6))     pixels = 16'hFFFF;
        else if ((x >= 26+4 && x < 26+6) && (y >= 36+4 && y < 36+10))  pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+6)   && (y >= 36 && y < 36+2))     pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+6)   && (y >= 36+4 && y < 36+6))   pixels = 16'hFFFF;
        else if ((x >= 26 && x < 26+6)   && (y >= 36+8 && y < 36+10))  pixels = 16'hFFFF;
        else if ((x >= 36 && x < 36+2)   && (y >= 36 && y < 36+10))    pixels = 16'hFFFF;
        else if ((x >= 36+5 && x < 36+6) && (y >= 36+4 && y < 36+10))  pixels = 16'hFFFF;
        else if ((x >= 36 && x < 36+6)   && (y >= 36 && y < 36+2))     pixels = 16'hFFFF;
        else if ((x >= 36+3 && x < 36+5) && (y >= 36+4 && y < 36+6))   pixels = 16'hFFFF;
        else if ((x >= 36+2 && x < 36+5) && (y >= 36+8 && y < 36+10))  pixels = 16'hFFFF;
        else if ((x >= 43 && x < 43+2)   && (y >= 36 && y < 36+10))    pixels = 16'hFFFF;
        else if ((x >= 43 && x < 43+6)   && (y >= 36 && y < 36+2))     pixels = 16'hFFFF;
        else if ((x >= 43 && x < 43+4)   && (y >= 36+4 && y < 36+6))   pixels = 16'hFFFF;
        else if ((x >= 43 && x < 43+6)   && (y >= 36+8 && y < 36+10))  pixels = 16'hFFFF;
        else if ((x >= 50+2 && x < 50+4) && (y >= 36 && y < 36+10))    pixels = 16'hFFFF;
        else if ((x >= 50 && x < 50+6)   && (y >= 36 && y < 36+2))     pixels = 16'hFFFF;
        else if ((x >= 60 && x < 60+2)   && (y >= 36 && y < 36+10))    pixels = 16'hFFFF;
        else if ((x >= 60+5 && x < 60+6) && (y >= 36+4 && y < 36+10))  pixels = 16'hFFFF;
        else if ((x >= 60 && x < 60+6)   && (y >= 36 && y < 36+2))     pixels = 16'hFFFF;
        else if ((x >= 60+3 && x < 60+5) && (y >= 36+4 && y < 36+6))   pixels = 16'hFFFF;
        else if ((x >= 60+2 && x < 60+5) && (y >= 36+8 && y < 36+10))  pixels = 16'hFFFF;
        else if ((x >= 67 && x < 67+2)   && (y >= 36 && y < 36+10))    pixels = 16'hFFFF;
        else if ((x >= 67+4 && x < 67+6) && (y >= 36 && y < 36+10))    pixels = 16'hFFFF;
        else if ((x >= 67 && x < 67+6)   && (y >= 36 && y < 36+2))     pixels = 16'hFFFF;
        else if ((x >= 67 && x < 67+6)   && (y >= 36+8 && y < 36+10))  pixels = 16'hFFFF;
        else if ((x >= 74+2 && x < 74+4) && (y >= 36 && y < 36+10))    pixels = 16'hFFFF;
        else if ((x >= 74 && x < 74+6)   && (y >= 36 && y < 36+2))     pixels = 16'hFFFF;
        else if ((x >= 74 && x < 74+6)   && (y >= 36+8 && y < 36+10))  pixels = 16'hFFFF;
        else if ((x >= 81 && x < 81+2)   && (y >= 36 && y < 36+10))    pixels = 16'hFFFF;
        else if ((x >= 81+4 && x < 81+6) && (y >= 36 && y < 36+10))    pixels = 16'hFFFF;
        else if ((x >= 81 && x < 81+6)   && (y >= 36 && y < 36+2))     pixels = 16'hFFFF;
        else if ((x >= 88 && x < 88+2)   && (y >= 36 && y < 36+10))    pixels = 16'hFFFF;
        else if ((x >= 88+5 && x < 88+6) && (y >= 36+4 && y < 36+10))  pixels = 16'hFFFF;
        else if ((x >= 88 && x < 88+6)   && (y >= 36 && y < 36+2))     pixels = 16'hFFFF;
        else if ((x >= 88+3 && x < 88+5) && (y >= 36+4 && y < 36+6))   pixels = 16'hFFFF;
        else if ((x >= 88+2 && x < 88+5) && (y >= 36+8 && y < 36+10))  pixels = 16'hFFFF;
        else pixels = 16'h0000;
    end
    
endmodule
