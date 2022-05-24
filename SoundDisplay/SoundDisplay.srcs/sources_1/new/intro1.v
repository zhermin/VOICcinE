`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2020 17:17:14
// Design Name: 
// Module Name: intro1
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


// IT WAS THE YEAR 2023...
module intro1(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                      pixels = 16'hFFFF;

//        Intro1
        else if ((x >= 26+2 && x < 26+4) && (y >= 7 && y < 7+10))           pixels = 16'hFFFF; 
        else if ((x >= 26 && x < 26+6)   && (y >= 7 && y < 7+2))            pixels = 16'hFFFF; 
        else if ((x >= 26 && x < 26+6)   && (y >= 7+8 && y < 7+10))         pixels = 16'hFFFF; 
        else if ((x >= 34+2 && x < 34+4) && (y >= 7 && y < 7+10))           pixels = 16'hFFFF; 
        else if ((x >= 34 && x < 34+6)   && (y >= 7 && y < 7+2))            pixels = 16'hFFFF; 
        else if ((x >= 46 && x < 46+2)   && (y >= 7 && y < 7+10))           pixels = 16'hFFFF; 
        else if ((x >= 46+2 && x < 46+3) && (y >= 7+8 && y < 7+10))         pixels = 16'hFFFF; 
        else if ((x >= 46+3 && x < 46+4) && (y >= 7+6 && y < 7+8))          pixels = 16'hFFFF; 
        else if ((x >= 46+4 && x < 46+5) && (y >= 7+8 && y < 7+10))         pixels = 16'hFFFF; 
        else if ((x >= 46+5 && x < 46+6) && (y >= 7 && y < 7+10))           pixels = 16'hFFFF; 
        else if ((x >= 54 && x < 54+2)   && (y >= 7 && y < 7+10))           pixels = 16'hFFFF; 
        else if ((x >= 54+4 && x < 54+6) && (y >= 7 && y < 7+10))           pixels = 16'hFFFF; 
        else if ((x >= 54 && x < 54+6)   && (y >= 7 && y < 7+2))            pixels = 16'hFFFF; 
        else if ((x >= 54 && x < 54+6)   && (y >= 7+6 && y < 7+8))          pixels = 16'hFFFF; 
        else if ((x >= 62 && x < 62+2)   && (y >= 7 && y < 7+6))            pixels = 16'hFFFF; 
        else if ((x >= 62+4 && x < 62+6) && (y >= 7+4 && y < 7+10))         pixels = 16'hFFFF; 
        else if ((x >= 62 && x < 62+6)   && (y >= 7 && y < 7+2))            pixels = 16'hFFFF; 
        else if ((x >= 62 && x < 62+6)   && (y >= 7+4 && y < 7+6))          pixels = 16'hFFFF; 
        else if ((x >= 62 && x < 62+6)   && (y >= 7+8 && y < 7+10))         pixels = 16'hFFFF; 
        else if ((x >= 18+2 && x < 18+4) && (y >= 27 && y < 27+10))         pixels = 16'hFFFF; 
        else if ((x >= 18 && x < 18+6)   && (y >= 27 && y < 27+2))          pixels = 16'hFFFF; 
        else if ((x >= 26 && x < 26+2)   && (y >= 27 && y < 27+10))         pixels = 16'hFFFF; 
        else if ((x >= 26+4 && x < 26+6) && (y >= 27 && y < 27+10))         pixels = 16'hFFFF; 
        else if ((x >= 26 && x < 26+6)   && (y >= 27+4 && y < 27+6))        pixels = 16'hFFFF; 
        else if ((x >= 34 && x < 34+2)   && (y >= 27 && y < 27+10))         pixels = 16'hFFFF; 
        else if ((x >= 34 && x < 34+6)   && (y >= 27 && y < 27+2))          pixels = 16'hFFFF; 
        else if ((x >= 34 && x < 34+4)   && (y >= 27+4 && y < 27+6))        pixels = 16'hFFFF; 
        else if ((x >= 34 && x < 34+6)   && (y >= 27+8 && y < 27+10))       pixels = 16'hFFFF; 
        else if ((x >= 46   && x < 46+2) && (y >= 27   && y < 27+6))        pixels = 16'hFFFF; 
        else if ((x >= 46+2 && x < 46+4) && (y >= 27+4 && y < 27+10))       pixels = 16'hFFFF; 
        else if ((x >= 46+4 && x < 46+6) && (y >= 27   && y < 27+6))        pixels = 16'hFFFF; 
        else if ((x >= 54 && x < 54+2)   && (y >= 27 && y < 27+10))         pixels = 16'hFFFF; 
        else if ((x >= 54 && x < 54+6)   && (y >= 27 && y < 27+2))          pixels = 16'hFFFF; 
        else if ((x >= 54 && x < 54+4)   && (y >= 27+4 && y < 27+6))        pixels = 16'hFFFF; 
        else if ((x >= 54 && x < 54+6)   && (y >= 27+8 && y < 27+10))       pixels = 16'hFFFF; 
        else if ((x >= 62 && x < 62+2)   && (y >= 27 && y < 27+10))         pixels = 16'hFFFF; 
        else if ((x >= 62+4 && x < 62+6) && (y >= 27 && y < 27+10))         pixels = 16'hFFFF; 
        else if ((x >= 62 && x < 62+6)   && (y >= 27 && y < 27+2))          pixels = 16'hFFFF; 
        else if ((x >= 62 && x < 62+6)   && (y >= 27+6 && y < 27+8))        pixels = 16'hFFFF; 
        else if ((x >= 70 && x < 70+2)   && (y >= 27 && y < 27+10))         pixels = 16'hFFFF; 
        else if ((x >= 70+4 && x < 70+6) && (y >= 27 && y < 27+6))          pixels = 16'hFFFF; 
        else if ((x >= 70+4 && x < 70+6) && (y >= 27+8 && y < 27+10))       pixels = 16'hFFFF; 
        else if ((x >= 70 && x < 70+6)   && (y >= 27 && y < 27+2))          pixels = 16'hFFFF; 
        else if ((x >= 70 && x < 70+4)   && (y >= 27+6 && y < 27+8))        pixels = 16'hFFFF; 
        else if ((x >= 27   && x < 27+2) && (y >= 47+4 && y < 47+10))       pixels = 16'hFFE0;  
        else if ((x >= 27+4 && x < 27+6) && (y >= 47   && y < 47+6))        pixels = 16'hFFE0;
        else if ((x >= 27   && x < 27+6) && (y >= 47   && y < 47+2))        pixels = 16'hFFE0;  
        else if ((x >= 27   && x < 27+6) && (y >= 47+4 && y < 47+6))        pixels = 16'hFFE0;  
        else if ((x >= 27   && x < 27+6) && (y >= 47+8 && y < 47+10))       pixels = 16'hFFE0;  
        else if ((x >= 35   && x < 35+2)   && (y >= 47   && y < 47+10))     pixels = 16'hFFE0;  
        else if ((x >= 35+4 && x < 35+6)   && (y >= 47   && y < 47+10))     pixels = 16'hFFE0;  
        else if ((x >= 35   && x < 35+6)   && (y >= 47   && y < 47+2))      pixels = 16'hFFE0;  
        else if ((x >= 35   && x < 35+6)   && (y >= 47+8 && y < 47+10))     pixels = 16'hFFE0;  
        else if ((x >= 43   && x < 43+2) && (y >= 47+4 && y < 47+10))       pixels = 16'hFFE0;  
        else if ((x >= 43+4 && x < 43+6) && (y >= 47   && y < 47+6))        pixels = 16'hFFE0;  
        else if ((x >= 43   && x < 43+6) && (y >= 47   && y < 47+2))        pixels = 16'hFFE0;  
        else if ((x >= 43   && x < 43+6) && (y >= 47+4 && y < 47+6))        pixels = 16'hFFE0;  
        else if ((x >= 43   && x < 43+6) && (y >= 47+8 && y < 47+10))       pixels = 16'hFFE0;  
        else if ((x >= 51+4 && x < 51+6) && (y >= 47   && y < 47+10))       pixels = 16'hFFE0;  
        else if ((x >= 51   && x < 51+6) && (y >= 47   && y < 47+2))        pixels = 16'hFFE0;  
        else if ((x >= 51+2 && x < 51+6) && (y >= 47+4 && y < 47+6))        pixels = 16'hFFE0;  
        else if ((x >= 51   && x < 51+6) && (y >= 47+8 && y < 47+10))       pixels = 16'hFFE0;  
        else if ((x >= 63   && x < 63+1) && (y >= 55   && y < 55+1))        pixels = 16'hFFE0;  
        else if ((x >= 66   && x < 66+1) && (y >= 55   && y < 55+1))        pixels = 16'hFFE0;  
        else if ((x >= 69   && x < 69+1) && (y >= 55   && y < 55+1))        pixels = 16'hFFE0;
        
        else pixels = 16'h0000;
    end

endmodule
