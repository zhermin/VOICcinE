`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2020 04:12:25
// Design Name: 
// Module Name: chest_posttext_scrn
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


module chest_posttext_scrn(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                     pixels = 16'hF800;
        else if ((x >= 13   && x < 13+2) && (y >= 7   && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 13+2 && x < 13+4) && (y >= 7+4 && y < 7+10))      pixels = 16'hFFFF;
        else if ((x >= 13+4 && x < 13+6) && (y >= 7   && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+2)   && (y >= 7 && y < 7+10))      pixels = 16'hFFFF;
        else if ((x >= 21+4 && x < 21+6) && (y >= 7 && y < 7+10))      pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+6)   && (y >= 7 && y < 7+2))      pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+6)   && (y >= 7+8 && y < 7+10))      pixels = 16'hFFFF;
        else if ((x >= 28 && x < 28+2)   && (y >= 7 && y < 7+10))      pixels = 16'hFFFF;
        else if ((x >= 28+4 && x < 28+6) && (y >= 7 && y < 7+10))      pixels = 16'hFFFF;
        else if ((x >= 28 && x < 28+6)   && (y >= 7+8 && y < 7+10))      pixels = 16'hFFFF;
        else if ((x >= 38 && x < 38+2)   && (y >= 7 && y < 7+10))      pixels = 16'hF800;
        else if ((x >= 38 && x < 38+6)   && (y >= 7 && y < 7+2))      pixels = 16'hF800;
        else if ((x >= 38 && x < 38+4)   && (y >= 7+4 && y < 7+6))      pixels = 16'hF800;
        else if ((x >= 45 && x < 45+2)   && (y >= 7 && y < 7+10))      pixels = 16'hF800;
        else if ((x >= 45+4 && x < 45+6) && (y >= 7 && y < 7+10))      pixels = 16'hF800;
        else if ((x >= 45 && x < 45+6)   && (y >= 7 && y < 7+2))      pixels = 16'hF800;
        else if ((x >= 45 && x < 45+6)   && (y >= 7+6 && y < 7+8))      pixels = 16'hF800;
        else if ((x >= 52+2 && x < 52+4) && (y >= 7 && y < 7+10))      pixels = 16'hF800;
        else if ((x >= 52 && x < 52+6)   && (y >= 7 && y < 7+2))      pixels = 16'hF800;
        else if ((x >= 52 && x < 52+6)   && (y >= 7+8 && y < 7+10))      pixels = 16'hF800;
        else if ((x >= 59 && x < 59+2)   && (y >= 7 && y < 7+10))      pixels = 16'hF800;
        else if ((x >= 59 && x < 59+6)   && (y >= 7+8 && y < 7+10))      pixels = 16'hF800;
        else if ((x >= 66 && x < 66+2)   && (y >= 7 && y < 7+10))      pixels = 16'hF800;
        else if ((x >= 66 && x < 66+6)   && (y >= 7 && y < 7+2))      pixels = 16'hF800;
        else if ((x >= 66 && x < 66+4)   && (y >= 7+4 && y < 7+6))      pixels = 16'hF800;
        else if ((x >= 66 && x < 66+6)   && (y >= 7+8 && y < 7+10))      pixels = 16'hF800;
        else if ((x >= 73 && x < 73+2)   && (y >= 7 && y < 7+10))      pixels = 16'hF800;
        else if ((x >= 73+4 && x < 73+6) && (y >= 7+2 && y < 7+8))      pixels = 16'hF800;
        else if ((x >= 73 && x < 73+4)   && (y >= 7 && y < 7+2))      pixels = 16'hF800;
        else if ((x >= 73 && x < 73+4)   && (y >= 7+8 && y < 7+10))      pixels = 16'hF800;
        else if ((x >= 24+2 && x < 24+4) && (y >= 27 && y < 27+10))      pixels = 16'hFFFF;
        else if ((x >= 24 && x < 24+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+2)   && (y >= 27 && y < 27+10))      pixels = 16'hFFFF;
        else if ((x >= 31+4 && x < 31+6) && (y >= 27 && y < 27+10))      pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 31 && x < 31+6)   && (y >= 27+8 && y < 27+10))      pixels = 16'hFFFF;
        else if ((x >= 41 && x < 41+2)   && (y >= 27 && y < 27+10))      pixels = 16'hFFFF;
        else if ((x >= 41+4 && x < 41+6) && (y >= 27 && y < 27+10))      pixels = 16'hFFFF;
        else if ((x >= 41 && x < 41+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 41 && x < 41+6)   && (y >= 27+8 && y < 27+10))      pixels = 16'hFFFF;
        else if ((x >= 48 && x < 48+2)   && (y >= 27 && y < 27+10))      pixels = 16'hFFFF;
        else if ((x >= 48+4 && x < 48+6) && (y >= 27 && y < 27+6))      pixels = 16'hFFFF;
        else if ((x >= 48 && x < 48+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 48 && x < 48+6)   && (y >= 27+4 && y < 27+6))      pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+2)   && (y >= 27 && y < 27+10))      pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+4)   && (y >= 27+4 && y < 27+6))      pixels = 16'hFFFF;
        else if ((x >= 55 && x < 55+6)   && (y >= 27+8 && y < 27+10))      pixels = 16'hFFFF;
        else if ((x >= 62 && x < 62+2)   && (y >= 27 && y < 27+10))      pixels = 16'hFFFF;
        else if ((x >= 62+4 && x < 62+6) && (y >= 27 && y < 27+10))      pixels = 16'hFFFF;
        else if ((x >= 62 && x < 62+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 16+2 && x < 16+4) && (y >= 47 && y < 47+10))      pixels = 16'hFFFF;
        else if ((x >= 16 && x < 16+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 23 && x < 23+2)   && (y >= 47 && y < 47+10))      pixels = 16'hFFFF;
        else if ((x >= 23+4 && x < 23+6) && (y >= 47 && y < 47+10))      pixels = 16'hFFFF;
        else if ((x >= 23 && x < 23+6)   && (y >= 47+4 && y < 47+6))      pixels = 16'hFFFF;
        else if ((x >= 30 && x < 30+2)   && (y >= 47 && y < 47+10))      pixels = 16'hFFFF;
        else if ((x >= 30 && x < 30+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 30 && x < 30+4)   && (y >= 47+4 && y < 47+6))      pixels = 16'hFFFF;
        else if ((x >= 30 && x < 30+6)   && (y >= 47+8 && y < 47+10))      pixels = 16'hFFFF;
        else if ((x >= 40 && x < 40+2)   && (y >= 47 && y < 47+10))      pixels = 16'hFFE0;
        else if ((x >= 40 && x < 40+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFE0;
        else if ((x >= 40 && x < 40+6)   && (y >= 47+8 && y < 47+10))      pixels = 16'hFFE0;
        else if ((x >= 47 && x < 47+2)   && (y >= 47 && y < 47+10))      pixels = 16'hFFE0;
        else if ((x >= 47+4 && x < 47+6) && (y >= 47 && y < 47+10))      pixels = 16'hFFE0;
        else if ((x >= 47 && x < 47+6)   && (y >= 47+4 && y < 47+6))      pixels = 16'hFFE0;
        else if ((x >= 54 && x < 54+2)   && (y >= 47 && y < 47+10))      pixels = 16'hFFE0;
        else if ((x >= 54 && x < 54+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFE0;
        else if ((x >= 54 && x < 54+4)   && (y >= 47+4 && y < 47+6))      pixels = 16'hFFE0;
        else if ((x >= 54 && x < 54+6)   && (y >= 47+8 && y < 47+10))      pixels = 16'hFFE0;
        else if ((x >= 61 && x < 61+2)   && (y >= 47 && y < 47+6))      pixels = 16'hFFE0;
        else if ((x >= 61+4 && x < 61+6) && (y >= 47+4 && y < 47+10))      pixels = 16'hFFE0;
        else if ((x >= 61 && x < 61+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFE0;
        else if ((x >= 61 && x < 61+6)   && (y >= 47+4 && y < 47+6))      pixels = 16'hFFE0;
        else if ((x >= 61 && x < 61+6)   && (y >= 47+8 && y < 47+10))      pixels = 16'hFFE0;
        else if ((x >= 68+2 && x < 68+4) && (y >= 47 && y < 47+10))      pixels = 16'hFFE0;
        else if ((x >= 68 && x < 68+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFE0;
        else if ((x >= 75 && x < 75+2) && (y >= 47   && y < 47+6))      pixels = 16'hFFE0;
        else if ((x >= 75 && x < 75+2) && (y >= 47+8 && y < 47+10))      pixels = 16'hFFE0;
        else pixels = 16'h0000;
    end

endmodule
