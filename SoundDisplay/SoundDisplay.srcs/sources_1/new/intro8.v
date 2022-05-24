`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 03:57:56
// Design Name: 
// Module Name: intro8
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


module intro8(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                pixels = 16'hFFFF;
        else if ((x >= 9 && x < 9+2)   && (y >= 6+1 && y < 6+1+10))       pixels = 16'hFFFF;
        else if ((x >= 9+4 && x < 9+6) && (y >= 6+1 && y < 6+1+10))       pixels = 16'hFFFF;
        else if ((x >= 9 && x < 9+6)   && (y >= 6+1 && y < 6+1+2))        pixels = 16'hFFFF;
        else if ((x >= 9 && x < 9+6)   && (y >= 6+1+6 && y < 6+1+8))      pixels = 16'hFFFF;
        else if ((x >= 17 && x < 17+2)   && (y >= 6+1 && y < 6+1+6))      pixels = 16'hFFFF;
        else if ((x >= 17+4 && x < 17+6) && (y >= 6+1+4 && y < 6+1+10))   pixels = 16'hFFFF;
        else if ((x >= 17 && x < 17+6)   && (y >= 6+1 && y < 6+1+2))      pixels = 16'hFFFF;
        else if ((x >= 17 && x < 17+6)   && (y >= 6+1+4 && y < 6+1+6))    pixels = 16'hFFFF;
        else if ((x >= 17 && x < 17+6)   && (y >= 6+1+8 && y < 6+1+10))   pixels = 16'hFFFF;
        else if ((x >= 29   && x < 29+2) && (y >= 6+1   && y < 6+1+6))    pixels = 16'hFFFF;
        else if ((x >= 29+2 && x < 29+4) && (y >= 6+1+4 && y < 6+1+10))   pixels = 16'hFFFF;
        else if ((x >= 29+4 && x < 29+6) && (y >= 6+1   && y < 6+1+6))    pixels = 16'hFFFF;
        else if ((x >= 37 && x < 37+2)   && (y >= 6+1 && y < 6+1+10))     pixels = 16'hFFFF;
        else if ((x >= 37+4 && x < 37+6) && (y >= 6+1 && y < 6+1+10))     pixels = 16'hFFFF;
        else if ((x >= 37 && x < 37+6)   && (y >= 6+1 && y < 6+1+2))      pixels = 16'hFFFF;
        else if ((x >= 37 && x < 37+6)   && (y >= 6+1+8 && y < 6+1+10))   pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+2)   && (y >= 6+1 && y < 6+1+10))     pixels = 16'hFFFF;
        else if ((x >= 45+4 && x < 45+6) && (y >= 6+1 && y < 6+1+10))     pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+6)   && (y >= 6+1+8 && y < 6+1+10))   pixels = 16'hFFFF;
        else if ((x >= 57 && x < 57+2)   && (y >= 6+1 && y < 6+1+10))     pixels = 16'hFFFF;
        else if ((x >= 57+2 && x < 57+3) && (y >= 6+1+8 && y < 6+1+10))   pixels = 16'hFFFF;
        else if ((x >= 57+3 && x < 57+4) && (y >= 6+1+6 && y < 6+1+8))    pixels = 16'hFFFF;
        else if ((x >= 57+4 && x < 57+5) && (y >= 6+1+8 && y < 6+1+10))   pixels = 16'hFFFF;
        else if ((x >= 57+5 && x < 57+6) && (y >= 6+1 && y < 6+1+10))     pixels = 16'hFFFF;
        else if ((x >= 65 && x < 65+2)   && (y >= 6+1 && y < 6+1+10))     pixels = 16'hFFFF;
        else if ((x >= 65+4 && x < 65+6) && (y >= 6+1 && y < 6+1+10))     pixels = 16'hFFFF;
        else if ((x >= 65 && x < 65+6)   && (y >= 6+1 && y < 6+1+2))      pixels = 16'hFFFF;
        else if ((x >= 65 && x < 65+6)   && (y >= 6+1+6 && y < 6+1+8))    pixels = 16'hFFFF;
        else if ((x >= 73 && x < 73+2)   && (y >= 6+1 && y < 6+1+10))     pixels = 16'hFFFF;
        else if ((x >= 73 && x < 73+6)   && (y >= 6+1+8 && y < 6+1+10))   pixels = 16'hFFFF;
        else if ((x >= 81   && x < 81+2) && (y >= 6+1   && y < 6+1+10))   pixels = 16'hFFFF;
        else if ((x >= 81+4 && x < 81+6) && (y >= 6+1   && y < 6+1+4))    pixels = 16'hFFFF;
        else if ((x >= 81+4 && x < 81+6) && (y >= 6+1+6 && y < 6+1+10))   pixels = 16'hFFFF;
        else if ((x >= 81 && x < 81+4) && (y >= 6+1+4 && y < 6+1+6))      pixels = 16'hFFFF;
        else if ((x >= 19 && x < 19+2)   && (y >= 26+1 && y < 26+1+10))   pixels = 16'hFFFF;
        else if ((x >= 19+4 && x < 19+6) && (y >= 26+1+2 && y < 26+1+8))  pixels = 16'hFFFF;
        else if ((x >= 19 && x < 19+4)   && (y >= 26+1 && y < 26+1+2))    pixels = 16'hFFFF;
        else if ((x >= 19 && x < 19+4)   && (y >= 26+1+8 && y < 26+1+10)) pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+2)   && (y >= 26+1 && y < 26+1+10))   pixels = 16'hFFFF;
        else if ((x >= 27+4 && x < 27+6) && (y >= 26+1 && y < 26+1+10))   pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+6)   && (y >= 26+1 && y < 26+1+2))    pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+6)   && (y >= 26+1+8 && y < 26+1+10)) pixels = 16'hFFFF;
        else if ((x >= 35 && x < 35+2)   && (y >= 26+1 && y < 26+1+10))   pixels = 16'hFFFF;
        else if ((x >= 35+2 && x < 35+3) && (y >= 26+1+8 && y < 26+1+10)) pixels = 16'hFFFF;
        else if ((x >= 35+3 && x < 35+4) && (y >= 26+1+6 && y < 26+1+8))  pixels = 16'hFFFF;
        else if ((x >= 35+4 && x < 35+5) && (y >= 26+1+8 && y < 26+1+10)) pixels = 16'hFFFF;
        else if ((x >= 35+5 && x < 35+6) && (y >= 26+1 && y < 26+1+10))   pixels = 16'hFFFF;
        else if ((x >= 43 && x < 43+2)   && (y >= 26+1 && y < 26+1+10))   pixels = 16'hFFFF;
        else if ((x >= 43+4 && x < 43+6) && (y >= 26+1 && y < 26+1+10))   pixels = 16'hFFFF;
        else if ((x >= 43 && x < 43+6)   && (y >= 26+1 && y < 26+1+2))    pixels = 16'hFFFF;
        else if ((x >= 55+2 && x < 55+4) && (y >= 26+1 && y < 26+1+10))   pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+6)   && (y >= 26+1 && y < 26+1+2))    pixels = 16'hFFFF;
        else if ((x >= 63 && x < 63+2)   && (y >= 26+1 && y < 26+1+10))   pixels = 16'hFFFF;
        else if ((x >= 63+4 && x < 63+6) && (y >= 26+1 && y < 26+1+10))   pixels = 16'hFFFF;
        else if ((x >= 63 && x < 63+6)   && (y >= 26+1+4 && y < 26+1+6))  pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+2)   && (y >= 26+1 && y < 26+1+10))   pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+6)   && (y >= 26+1 && y < 26+1+2))    pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+4)   && (y >= 26+1+4 && y < 26+1+6))  pixels = 16'hFFFF;
        else if ((x >= 71 && x < 71+6)   && (y >= 26+1+8 && y < 26+1+10)) pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+2)   && (y >= 46+1 && y < 46+1+6))    pixels = 16'hFFFF;
        else if ((x >= 21+4 && x < 21+6) && (y >= 46+1+4 && y < 46+1+10)) pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+6)   && (y >= 46+1 && y < 46+1+2))    pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+6)   && (y >= 46+1+4 && y < 46+1+6))  pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+6)   && (y >= 46+1+8 && y < 46+1+10)) pixels = 16'hFFFF;
        else if ((x >= 29+2 && x < 29+4) && (y >= 46+1 && y < 46+1+10))   pixels = 16'hFFFF;
        else if ((x >= 29 && x < 29+6)   && (y >= 46+1 && y < 46+1+2))    pixels = 16'hFFFF;
        else if ((x >= 37 && x < 37+2)   && (y >= 46+1 && y < 46+1+10))   pixels = 16'hFFFF;
        else if ((x >= 37+4 && x < 37+6) && (y >= 46+1 && y < 46+1+6))    pixels = 16'hFFFF;
        else if ((x >= 37+4 && x < 37+6) && (y >= 46+1+8 && y < 46+1+10)) pixels = 16'hFFFF;
        else if ((x >= 37 && x < 37+6)   && (y >= 46+1 && y < 46+1+2))    pixels = 16'hFFFF;
        else if ((x >= 37 && x < 37+4)   && (y >= 46+1+6 && y < 46+1+8))  pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+2)   && (y >= 46+1 && y < 46+1+10))   pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+6)   && (y >= 46+1 && y < 46+1+2))    pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+4)   && (y >= 46+1+4 && y < 46+1+6))  pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+6)   && (y >= 46+1+8 && y < 46+1+10)) pixels = 16'hFFFF;
        else if ((x >= 53 && x < 53+2)   && (y >= 46+1 && y < 46+1+10))   pixels = 16'hFFFF;
        else if ((x >= 53 && x < 53+6)   && (y >= 46+1 && y < 46+1+2))    pixels = 16'hFFFF;
        else if ((x >= 53 && x < 53+4)   && (y >= 46+1+4 && y < 46+1+6))  pixels = 16'hFFFF;
        else if ((x >= 53 && x < 53+6)   && (y >= 46+1+8 && y < 46+1+10)) pixels = 16'hFFFF;
        else if ((x >= 61+2 && x < 61+4) && (y >= 46+1 && y < 46+1+10))   pixels = 16'hFFFF;
        else if ((x >= 61 && x < 61+6)   && (y >= 46+1 && y < 46+1+2))    pixels = 16'hFFFF;
        else if ((x >= 69   && x < 69+1) && (y >= 54+1   && y < 54+1+1))  pixels = 16'hFFFF;
        else if ((x >= 72   && x < 72+1) && (y >= 54+1   && y < 54+1+1))  pixels = 16'hFFFF;
        else if ((x >= 75   && x < 75+1) && (y >= 54+1   && y < 54+1+1))  pixels = 16'hFFFF;
        else pixels = 16'h0000;
    end

endmodule
