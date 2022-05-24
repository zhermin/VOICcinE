`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2020 03:31:51
// Design Name: 
// Module Name: m2_death_scrn
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


module m2_death_scrn(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                  pixels = 16'hF800;

//        m2 death
        else if ((x >= 4   && x < 4+2) && (y >= 16   && y < 16+6))      pixels = 16'hFFFF;
        else if ((x >= 4+2 && x < 4+4) && (y >= 16+4 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 4+4 && x < 4+6) && (y >= 16   && y < 16+6))      pixels = 16'hFFFF;
        else if ((x >= 11 && x < 11+2)   && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 11+4 && x < 11+6) && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 11 && x < 11+6)   && (y >= 16 && y < 16+2))      pixels = 16'hFFFF;
        else if ((x >= 11 && x < 11+6)   && (y >= 16+8 && y < 16+10))   pixels = 16'hFFFF;
        else if ((x >= 18 && x < 18+2)   && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 18+4 && x < 18+6) && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 18 && x < 18+6)   && (y >= 16+8 && y < 16+10))   pixels = 16'hFFFF;
        else if ((x >= 28 && x < 28+2)   && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 28 && x < 28+6)   && (y >= 16 && y < 16+2))      pixels = 16'hFFFF;
        else if ((x >= 28 && x < 28+6)   && (y >= 16+8 && y < 16+10))   pixels = 16'hFFFF;
        else if ((x >= 35 && x < 35+2)   && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 35+4 && x < 35+6) && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 35 && x < 35+6)   && (y >= 16 && y < 16+2))      pixels = 16'hFFFF;
        else if ((x >= 35 && x < 35+6)   && (y >= 16+6 && y < 16+8))    pixels = 16'hFFFF;
        else if ((x >= 42 && x < 42+2)   && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 42+4 && x < 42+6) && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 42 && x < 42+6)   && (y >= 16+8 && y < 16+10))   pixels = 16'hFFFF;
        else if ((x >= 49 && x < 49+2)   && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 49+5 && x < 49+6) && (y >= 16+4 && y < 16+10))   pixels = 16'hFFFF;
        else if ((x >= 49 && x < 49+6)   && (y >= 16 && y < 16+2))      pixels = 16'hFFFF;
        else if ((x >= 49+3 && x < 49+5) && (y >= 16+4 && y < 16+6))    pixels = 16'hFFFF;
        else if ((x >= 49+2 && x < 49+5) && (y >= 16+8 && y < 16+10))   pixels = 16'hFFFF;
        else if ((x >= 56 && x < 56+2)   && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 56+4 && x < 56+6) && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 56 && x < 56+6)   && (y >= 16+4 && y < 16+6))    pixels = 16'hFFFF;
        else if ((x >= 62+2 && x < 62+4) && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 62 && x < 62+6)   && (y >= 16 && y < 16+2))      pixels = 16'hFFFF;
        else if ((x >= 73+2 && x < 73+4) && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 73 && x < 73+6)   && (y >= 16 && y < 16+2))      pixels = 16'hFFFF;
        else if ((x >= 80 && x < 80+2)   && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 80+4 && x < 80+6) && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 80 && x < 80+6)   && (y >= 16+4 && y < 16+6))    pixels = 16'hFFFF;
        else if ((x >= 87 && x < 87+2)   && (y >= 16 && y < 16+10))     pixels = 16'hFFFF;
        else if ((x >= 87 && x < 87+6)   && (y >= 16 && y < 16+2))      pixels = 16'hFFFF;
        else if ((x >= 87 && x < 87+4)   && (y >= 16+4 && y < 16+6))    pixels = 16'hFFFF;
        else if ((x >= 87 && x < 87+6)   && (y >= 16+8 && y < 16+10))   pixels = 16'hFFFF;
        else if ((x >= 9 && x < 9+2)   && (y >= 36 && y < 36+10))       pixels = 16'hF800;
        else if ((x >= 9+4 && x < 9+6) && (y >= 36+2 && y < 36+8))      pixels = 16'hF800;
        else if ((x >= 9 && x < 9+4)   && (y >= 36 && y < 36+2))        pixels = 16'hF800;
        else if ((x >= 9 && x < 9+4)   && (y >= 36+8 && y < 36+10))     pixels = 16'hF800;
        else if ((x >= 16 && x < 16+2)   && (y >= 36 && y < 36+10))     pixels = 16'hF800;
        else if ((x >= 16 && x < 16+6)   && (y >= 36 && y < 36+2))      pixels = 16'hF800;
        else if ((x >= 16 && x < 16+4)   && (y >= 36+4 && y < 36+6))    pixels = 16'hF800;
        else if ((x >= 16 && x < 16+6)   && (y >= 36+8 && y < 36+10))   pixels = 16'hF800;
        else if ((x >= 23 && x < 23+2)   && (y >= 36 && y < 36+10))     pixels = 16'hF800;
        else if ((x >= 23+4 && x < 23+6) && (y >= 36 && y < 36+10))     pixels = 16'hF800;
        else if ((x >= 23 && x < 23+6)   && (y >= 36 && y < 36+2))      pixels = 16'hF800;
        else if ((x >= 30 && x < 30+2)   && (y >= 36 && y < 36+10))     pixels = 16'hF800;
        else if ((x >= 30+5 && x < 30+6) && (y >= 36+4 && y < 36+10))   pixels = 16'hF800;
        else if ((x >= 30 && x < 30+6)   && (y >= 36 && y < 36+2))      pixels = 16'hF800;
        else if ((x >= 30+3 && x < 30+5) && (y >= 36+4 && y < 36+6))    pixels = 16'hF800;
        else if ((x >= 30+2 && x < 30+5) && (y >= 36+8 && y < 36+10))   pixels = 16'hF800;
        else if ((x >= 37 && x < 37+2)   && (y >= 36 && y < 36+10))     pixels = 16'hF800;
        else if ((x >= 37+4 && x < 37+6) && (y >= 36 && y < 36+10))     pixels = 16'hF800;
        else if ((x >= 37 && x < 37+6)   && (y >= 36+8 && y < 36+10))   pixels = 16'hF800;
        else if ((x >= 44 && x < 44+2)   && (y >= 36 && y < 36+10))     pixels = 16'hF800;
        else if ((x >= 44 && x < 44+6)   && (y >= 36 && y < 36+2))      pixels = 16'hF800;
        else if ((x >= 44 && x < 44+4)   && (y >= 36+4 && y < 36+6))    pixels = 16'hF800;
        else if ((x >= 44 && x < 44+6)   && (y >= 36+8 && y < 36+10))   pixels = 16'hF800;
        else if ((x >= 54 && x < 54+2)   && (y >= 36 && y < 36+10))     pixels = 16'hF800;
        else if ((x >= 54 && x < 54+6)   && (y >= 36 && y < 36+2))      pixels = 16'hF800;
        else if ((x >= 54 && x < 54+4)   && (y >= 36+4 && y < 36+6))    pixels = 16'hF800;
        else if ((x >= 61 && x < 61+2)   && (y >= 36 && y < 36+10))     pixels = 16'hF800;
        else if ((x >= 61 && x < 61+6)   && (y >= 36 && y < 36+2))      pixels = 16'hF800;
        else if ((x >= 61 && x < 61+4)   && (y >= 36+4 && y < 36+6))    pixels = 16'hF800;
        else if ((x >= 61 && x < 61+6)   && (y >= 36+8 && y < 36+10))   pixels = 16'hF800;
        else if ((x >= 68 && x < 68+2)   && (y >= 36 && y < 36+8))      pixels = 16'hF800;
        else if ((x >= 68+2 && x < 68+4) && (y >= 36+8 && y < 36+10))   pixels = 16'hF800;
        else if ((x >= 68+4 && x < 68+6) && (y >= 36 && y < 36+8))      pixels = 16'hF800;
        else if ((x >= 75 && x < 75+2)   && (y >= 36 && y < 36+10))     pixels = 16'hF800;
        else if ((x >= 75 && x < 75+6)   && (y >= 36 && y < 36+2))      pixels = 16'hF800;
        else if ((x >= 75 && x < 75+4)   && (y >= 36+4 && y < 36+6))    pixels = 16'hF800;
        else if ((x >= 75 && x < 75+6)   && (y >= 36+8 && y < 36+10))   pixels = 16'hF800;
        else if ((x >= 82 && x < 82+2)   && (y >= 36 && y < 36+10))     pixels = 16'hF800;
        else if ((x >= 82+4 && x < 82+6) && (y >= 36 && y < 36+6))      pixels = 16'hF800;
        else if ((x >= 82+4 && x < 82+6) && (y >= 36+8 && y < 36+10))   pixels = 16'hF800;
        else if ((x >= 82 && x < 82+6)   && (y >= 36 && y < 36+2))      pixels = 16'hF800;
        else if ((x >= 82 && x < 82+4)   && (y >= 36+6 && y < 36+8))    pixels = 16'hF800;
        else pixels = 16'h0000;
    end

endmodule
