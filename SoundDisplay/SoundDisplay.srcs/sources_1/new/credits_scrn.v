`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2020 21:28:13
// Design Name: 
// Module Name: credits_scrn
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


module credits_scrn(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 3 || y < 3 || x >= 93 || y >= 61)                  pixels = 16'hFFE0;

//        Credits
        else if ((x >= 19 && x < 19+2)   && (y >= 12 && y < 12+10))     pixels = 16'hFA49;
        else if ((x >= 19+4 && x < 19+6) && (y >= 12 && y < 12+10))     pixels = 16'hFA49;
        else if ((x >= 19 && x < 19+6)   && (y >= 12 && y < 12+2))      pixels = 16'hFA49;
        else if ((x >= 19 && x < 19+6)   && (y >= 12+6 && y < 12+8))    pixels = 16'hFA49;
        else if ((x >= 26 && x < 26+2)   && (y >= 12 && y < 12+10))     pixels = 16'hFA49;
        else if ((x >= 26+4 && x < 26+6) && (y >= 12 && y < 12+10))     pixels = 16'hFA49;
        else if ((x >= 26 && x < 26+6)   && (y >= 12 && y < 12+2))      pixels = 16'hFA49;
        else if ((x >= 33 && x < 33+2)   && (y >= 12 && y < 12+10))     pixels = 16'hFA49;
        else if ((x >= 33+5 && x < 33+6) && (y >= 12+4 && y < 12+10))   pixels = 16'hFA49;
        else if ((x >= 33 && x < 33+6)   && (y >= 12 && y < 12+2))      pixels = 16'hFA49;
        else if ((x >= 33+3 && x < 33+5) && (y >= 12+4 && y < 12+6))    pixels = 16'hFA49;
        else if ((x >= 33+2 && x < 33+5) && (y >= 12+8 && y < 12+10))   pixels = 16'hFA49;
        else if ((x >= 40 && x < 40+2)   && (y >= 12 && y < 12+10))     pixels = 16'hFA49;
        else if ((x >= 40 && x < 40+6)   && (y >= 12 && y < 12+2))      pixels = 16'hFA49;
        else if ((x >= 40 && x < 40+4)   && (y >= 12+4 && y < 12+6))    pixels = 16'hFA49;
        else if ((x >= 40 && x < 40+6)   && (y >= 12+8 && y < 12+10))   pixels = 16'hFA49;
        else if ((x >= 47 && x < 47+2)   && (y >= 12 && y < 12+10))     pixels = 16'hFA49;
        else if ((x >= 47 && x < 47+6)   && (y >= 12+8 && y < 12+10))   pixels = 16'hFA49;
        else if ((x >= 54+2 && x < 54+4) && (y >= 12 && y < 12+10))     pixels = 16'hFA49;
        else if ((x >= 54 && x < 54+6)   && (y >= 12 && y < 12+2))      pixels = 16'hFA49;
        else if ((x >= 54 && x < 54+6)   && (y >= 12+8 && y < 12+10))   pixels = 16'hFA49;
        else if ((x >= 61 && x < 61+2)   && (y >= 12 && y < 12+10))     pixels = 16'hFA49;
        else if ((x >= 61+4 && x < 61+6) && (y >= 12 && y < 12+10))     pixels = 16'hFA49;
        else if ((x >= 61 && x < 61+6)   && (y >= 12 && y < 12+2))      pixels = 16'hFA49;
        else if ((x >= 68 && x < 68+2)   && (y >= 12 && y < 12+10))     pixels = 16'hFA49;
        else if ((x >= 68+4 && x < 68+6) && (y >= 12 && y < 12+10))     pixels = 16'hFA49;
        else if ((x >= 68 && x < 68+6)   && (y >= 12 && y < 12+2))      pixels = 16'hFA49;
        else if ((x >= 68 && x < 68+6)   && (y >= 12+6 && y < 12+8))    pixels = 16'hFA49;
        
        else if ((x >= 46 && x <= 47) && (y >= 25 && y <= 38))          pixels = 16'hFFE0;
        else if ((x >= 40 && x <= 53) && (y >= 31 && y <= 32))          pixels = 16'hFFE0;
                                                                                   
        else if ((x >= 21 && x <= 26) && (y >= 42 && y <= 43))          pixels = 16'h5E7C;
        else if ((x >= 23 && x <= 24) && (y >= 46 && y <= 47))          pixels = 16'h5E7C;
        else if ((x >= 21 && x <= 22) && (y >= 48 && y <= 49))          pixels = 16'h5E7C;
        else if ((x >= 21 && x <= 26) && (y >= 50 && y <= 51))          pixels = 16'h5E7C;
        else if ((x >= 28 && x < 28+2)   && (y >= 42 && y < 42+10))     pixels = 16'h5E7C;
        else if ((x >= 28+4 && x < 28+6) && (y >= 42 && y < 42+10))     pixels = 16'h5E7C;
        else if ((x >= 28 && x < 28+6)   && (y >= 42+4 && y < 42+6))    pixels = 16'h5E7C;
        else if ((x >= 35 && x < 35+2)   && (y >= 42 && y < 42+10))     pixels = 16'h5E7C;
        else if ((x >= 35 && x < 35+6)   && (y >= 42 && y < 42+2))      pixels = 16'h5E7C;
        else if ((x >= 35 && x < 35+4)   && (y >= 42+4 && y < 42+6))    pixels = 16'h5E7C;
        else if ((x >= 35 && x < 35+6)   && (y >= 42+8 && y < 42+10))   pixels = 16'h5E7C;
        else if ((x >= 42 && x < 42+2)   && (y >= 42 && y < 42+10))     pixels = 16'h5E7C;
        else if ((x >= 42+4 && x < 42+6) && (y >= 42 && y < 42+6))      pixels = 16'h5E7C;
        else if ((x >= 42+4 && x < 42+6) && (y >= 42+8 && y < 42+10))   pixels = 16'h5E7C;
        else if ((x >= 42 && x < 42+6)   && (y >= 42 && y < 42+2))      pixels = 16'h5E7C;
        else if ((x >= 42 && x < 42+4)   && (y >= 42+6 && y < 42+8))    pixels = 16'h5E7C;
        else if ((x >= 52 && x < 52+2)   && (y >= 42 && y < 42+10))     pixels = 16'h5E7C;
        else if ((x >= 52+3 && x < 52+4) && (y >= 42 && y < 42+6))      pixels = 16'h5E7C;
        else if ((x >= 52+5 && x < 52+6) && (y >= 42 && y < 42+10))     pixels = 16'h5E7C;
        else if ((x >= 52 && x < 52+6)   && (y >= 42 && y < 42+2))      pixels = 16'h5E7C;
        else if ((x >= 59+2 && x < 59+4) && (y >= 42 && y < 42+10))     pixels = 16'h5E7C;
        else if ((x >= 59 && x < 59+6)   && (y >= 42 && y < 42+2))      pixels = 16'h5E7C;
        else if ((x >= 59 && x < 59+6)   && (y >= 42+8 && y < 42+10))   pixels = 16'h5E7C;
        else if ((x >= 66 && x < 66+2)   && (y >= 42 && y < 42+10))     pixels = 16'h5E7C;
        else if ((x >= 66+4 && x < 66+6) && (y >= 42 && y < 42+10))     pixels = 16'h5E7C;
        else if ((x >= 66 && x < 66+6)   && (y >= 42 && y < 42+2))      pixels = 16'h5E7C;
        else pixels = 16'h0000;      
    end
endmodule
