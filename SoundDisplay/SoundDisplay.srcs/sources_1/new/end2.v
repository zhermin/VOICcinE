`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 03:57:56
// Design Name: 
// Module Name: end2
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


module end2(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                  pixels = 16'h07E0;

//        Final screen
        else if ((x >= 18+2 && x < 18+4) && (y >= 6 && y < 6+10))       pixels = 16'hF800; 
        else if ((x >= 18 && x < 18+6)   && (y >= 6 && y < 6+2))        pixels = 16'hF800; 
        else if ((x >= 25 && x < 25+2)   && (y >= 6 && y < 6+10))       pixels = 16'hF800; 
        else if ((x >= 25+4 && x < 25+6) && (y >= 6 && y < 6+10))       pixels = 16'hF800; 
        else if ((x >= 25 && x < 25+6)   && (y >= 6+4 && y < 6+6))      pixels = 16'hF800; 
        else if ((x >= 32 && x < 32+2)   && (y >= 6 && y < 6+10))       pixels = 16'hF800; 
        else if ((x >= 32+4 && x < 32+6) && (y >= 6 && y < 6+10))       pixels = 16'hF800; 
        else if ((x >= 32 && x < 32+6)   && (y >= 6 && y < 6+2))        pixels = 16'hF800; 
        else if ((x >= 32 && x < 32+6)   && (y >= 6+6 && y < 6+8))      pixels = 16'hF800; 
        else if ((x >= 39 && x < 39+2)   && (y >= 6 && y < 6+10))       pixels = 16'hF800; 
        else if ((x >= 39+4 && x < 39+6) && (y >= 6 && y < 6+10))       pixels = 16'hF800; 
        else if ((x >= 39 && x < 39+6)   && (y >= 6 && y < 6+2))        pixels = 16'hF800; 
        else if ((x >= 46   && x < 46+2) && (y >= 6   && y < 6+10))     pixels = 16'hF800; 
        else if ((x >= 46+4 && x < 46+6) && (y >= 6   && y < 6+4))      pixels = 16'hF800; 
        else if ((x >= 46+4 && x < 46+6) && (y >= 6+6 && y < 6+10))     pixels = 16'hF800; 
        else if ((x >= 46 && x < 46+4) && (y >= 6+4 && y < 6+6))        pixels = 16'hF800; 
        else if ((x >= 56   && x < 56+2) && (y >= 6   && y < 6+6))      pixels = 16'hF800; 
        else if ((x >= 56+2 && x < 56+4) && (y >= 6+4 && y < 6+10))     pixels = 16'hF800; 
        else if ((x >= 56+4 && x < 56+6) && (y >= 6   && y < 6+6))      pixels = 16'hF800; 
        else if ((x >= 63 && x < 63+2)   && (y >= 6 && y < 6+10))       pixels = 16'hF800; 
        else if ((x >= 63+4 && x < 63+6) && (y >= 6 && y < 6+10))       pixels = 16'hF800; 
        else if ((x >= 63 && x < 63+6)   && (y >= 6 && y < 6+2))        pixels = 16'hF800; 
        else if ((x >= 63 && x < 63+6)   && (y >= 6+8 && y < 6+10))     pixels = 16'hF800; 
        else if ((x >= 70 && x < 70+2)   && (y >= 6 && y < 6+10))       pixels = 16'hF800; 
        else if ((x >= 70+4 && x < 70+6) && (y >= 6 && y < 6+10))       pixels = 16'hF800; 
        else if ((x >= 70 && x < 70+6)   && (y >= 6+8 && y < 6+10))     pixels = 16'hF800; 
        else if ((x >= 25 && x < 25+2)   && (y >= 20 && y < 20+10))     pixels = 16'hF800; 
        else if ((x >= 25+4 && x < 25+6) && (y >= 20+2 && y < 20+8))    pixels = 16'hF800; 
        else if ((x >= 25 && x < 25+4)   && (y >= 20 && y < 20+2))      pixels = 16'hF800; 
        else if ((x >= 25 && x < 25+4)   && (y >= 20+8 && y < 20+10))   pixels = 16'hF800; 
        else if ((x >= 32 && x < 32+2)   && (y >= 20 && y < 20+10))     pixels = 16'hF800; 
        else if ((x >= 32+4 && x < 32+6) && (y >= 20 && y < 20+10))     pixels = 16'hF800; 
        else if ((x >= 32 && x < 32+6)   && (y >= 20 && y < 20+2))      pixels = 16'hF800; 
        else if ((x >= 32 && x < 32+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hF800; 
        else if ((x >= 39 && x < 39+2)   && (y >= 20 && y < 20+10))     pixels = 16'hF800; 
        else if ((x >= 39 && x < 39+6)   && (y >= 20 && y < 20+2))      pixels = 16'hF800; 
        else if ((x >= 39 && x < 39+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hF800; 
        else if ((x >= 46+2 && x < 46+4) && (y >= 20 && y < 20+10))     pixels = 16'hF800; 
        else if ((x >= 46 && x < 46+6)   && (y >= 20 && y < 20+2))      pixels = 16'hF800; 
        else if ((x >= 53 && x < 53+2)   && (y >= 20 && y < 20+10))     pixels = 16'hF800; 
        else if ((x >= 53+4 && x < 53+6) && (y >= 20 && y < 20+10))     pixels = 16'hF800; 
        else if ((x >= 53 && x < 53+6)   && (y >= 20 && y < 20+2))      pixels = 16'hF800; 
        else if ((x >= 53 && x < 53+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hF800; 
        else if ((x >= 60 && x < 60+2)   && (y >= 20 && y < 20+10))     pixels = 16'hF800; 
        else if ((x >= 60+4 && x < 60+6) && (y >= 20 && y < 20+6))      pixels = 16'hF800; 
        else if ((x >= 60+4 && x < 60+6) && (y >= 20+8 && y < 20+10))   pixels = 16'hF800; 
        else if ((x >= 60 && x < 60+6)   && (y >= 20 && y < 20+2))      pixels = 16'hF800; 
        else if ((x >= 60 && x < 60+4)   && (y >= 20+6 && y < 20+8))    pixels = 16'hF800;
        else if ((x >= 67 && x < 67+2) && (y >= 20   && y < 20+6))      pixels = 16'hF800; 
        else if ((x >= 67 && x < 67+2) && (y >= 20+8 && y < 20+10))     pixels = 16'hF800; 
        else if ((x >= 4 && x < 4+2)   && (y >= 34 && y < 34+10))       pixels = 16'hFFE0; 
        else if ((x >= 4+4 && x < 4+6) && (y >= 34 && y < 34+10))       pixels = 16'hFFE0; 
        else if ((x >= 4 && x < 4+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFE0; 
        else if ((x >= 11 && x < 11+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFE0; 
        else if ((x >= 11+4 && x < 11+6) && (y >= 34 && y < 34+10))     pixels = 16'hFFE0; 
        else if ((x >= 11 && x < 11+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFE0; 
        else if ((x >= 11 && x < 11+6)   && (y >= 34+8 && y < 34+10))   pixels = 16'hFFE0; 
        else if ((x >= 18+2 && x < 18+4) && (y >= 34 && y < 34+10))     pixels = 16'hFFE0; 
        else if ((x >= 18 && x < 18+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFE0; 
        else if ((x >= 28 && x < 28+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFE0; 
        else if ((x >= 28+4 && x < 28+6) && (y >= 34 && y < 34+10))     pixels = 16'hFFE0; 
        else if ((x >= 28 && x < 28+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFE0; 
        else if ((x >= 28 && x < 28+6)   && (y >= 34+6 && y < 34+8))    pixels = 16'hFFE0; 
        else if ((x >= 35 && x < 35+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFE0; 
        else if ((x >= 35 && x < 35+6)   && (y >= 34+8 && y < 34+10))   pixels = 16'hFFE0; 
        else if ((x >= 42 && x < 42+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFE0; 
        else if ((x >= 42 && x < 42+6)   && (y >= 34+8 && y < 34+10))   pixels = 16'hFFE0; 
        else if ((x >= 52 && x < 52+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFE0; 
        else if ((x >= 52+4 && x < 52+6) && (y >= 34 && y < 34+10))     pixels = 16'hFFE0; 
        else if ((x >= 52 && x < 52+6)   && (y >= 34+4 && y < 34+6))    pixels = 16'hFFE0; 
        else if ((x >= 59 && x < 59+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFE0; 
        else if ((x >= 59 && x < 59+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFE0; 
        else if ((x >= 59 && x < 59+4)   && (y >= 34+4 && y < 34+6))    pixels = 16'hFFE0; 
        else if ((x >= 59 && x < 59+6)   && (y >= 34+8 && y < 34+10))   pixels = 16'hFFE0; 
        else if ((x >= 66 && x < 66+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFE0; 
        else if ((x >= 66+4 && x < 66+6) && (y >= 34 && y < 34+6))      pixels = 16'hFFE0; 
        else if ((x >= 66+4 && x < 66+6) && (y >= 34+8 && y < 34+10))   pixels = 16'hFFE0; 
        else if ((x >= 66 && x < 66+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFE0; 
        else if ((x >= 66 && x < 66+4)   && (y >= 34+6 && y < 34+8))    pixels = 16'hFFE0; 
        else if ((x >= 73 && x < 73+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFE0; 
        else if ((x >= 73+4 && x < 73+6) && (y >= 34 && y < 34+10))     pixels = 16'hFFE0; 
        else if ((x >= 73 && x < 73+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFE0; 
        else if ((x >= 73 && x < 73+6)   && (y >= 34+8 && y < 34+10))   pixels = 16'hFFE0; 
        else if ((x >= 80 && x < 80+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFE0; 
        else if ((x >= 80 && x < 80+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFE0; 
        else if ((x >= 80 && x < 80+4)   && (y >= 34+4 && y < 34+6))    pixels = 16'hFFE0; 
        else if ((x >= 80 && x < 80+6)   && (y >= 34+8 && y < 34+10))   pixels = 16'hFFE0; 
        else if ((x >= 87 && x < 87+2)   && (y >= 34 && y < 34+6))      pixels = 16'hFFE0; 
        else if ((x >= 87+4 && x < 87+6) && (y >= 34+4 && y < 34+10))   pixels = 16'hFFE0; 
        else if ((x >= 87 && x < 87+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFE0; 
        else if ((x >= 87 && x < 87+6)   && (y >= 34+4 && y < 34+6))    pixels = 16'hFFE0; 
        else if ((x >= 87 && x < 87+6)   && (y >= 34+8 && y < 34+10))   pixels = 16'hFFE0; 
        else if ((x >= 19 && x < 19+2)   && (y >= 48 && y < 48+10))     pixels = 16'hFFE0; 
        else if ((x >= 19+2 && x < 19+3) && (y >= 48+8 && y < 48+10))   pixels = 16'hFFE0; 
        else if ((x >= 19+3 && x < 19+4) && (y >= 48+6 && y < 48+8))    pixels = 16'hFFE0; 
        else if ((x >= 19+4 && x < 19+5) && (y >= 48+8 && y < 48+10))   pixels = 16'hFFE0;
        else if ((x >= 19+5 && x < 19+6) && (y >= 48 && y < 48+10))     pixels = 16'hFFE0; 
        else if ((x >= 26 && x < 26+2)   && (y >= 48 && y < 48+10))     pixels = 16'hFFE0; 
        else if ((x >= 26 && x < 26+6)   && (y >= 48 && y < 48+2))      pixels = 16'hFFE0; 
        else if ((x >= 26 && x < 26+4)   && (y >= 48+4 && y < 48+6))    pixels = 16'hFFE0; 
        else if ((x >= 26 && x < 26+6)   && (y >= 48+8 && y < 48+10))   pixels = 16'hFFE0; 
        else if ((x >= 33 && x < 33+2)   && (y >= 48 && y < 48+10))     pixels = 16'hFFE0; 
        else if ((x >= 33+4 && x < 33+6) && (y >= 48 && y < 48+10))     pixels = 16'hFFE0; 
        else if ((x >= 33 && x < 33+6)   && (y >= 48 && y < 48+2))      pixels = 16'hFFE0; 
        else if ((x >= 33 && x < 33+6)   && (y >= 48+6 && y < 48+8))    pixels = 16'hFFE0; 
        else if ((x >= 40 && x < 40+2)   && (y >= 48 && y < 48+10))     pixels = 16'hFFE0; 
        else if ((x >= 40+4 && x < 40+6) && (y >= 48 && y < 48+6))      pixels = 16'hFFE0; 
        else if ((x >= 40+4 && x < 40+6) && (y >= 48+8 && y < 48+10))   pixels = 16'hFFE0; 
        else if ((x >= 40 && x < 40+6)   && (y >= 48 && y < 48+2))      pixels = 16'hFFE0; 
        else if ((x >= 40 && x < 40+4)   && (y >= 48+6 && y < 48+8))    pixels = 16'hFFE0; 
        else if ((x >= 50 && x < 50+2)   && (y >= 48 && y < 48+10))     pixels = 16'hFFE0; 
        else if ((x >= 50 && x < 50+6)   && (y >= 48 && y < 48+2))      pixels = 16'hFFE0; 
        else if ((x >= 50 && x < 50+6)   && (y >= 48+8 && y < 48+10))   pixels = 16'hFFE0; 
        else if ((x >= 57 && x < 57+2)   && (y >= 48 && y < 48+10))     pixels = 16'hFFE0; 
        else if ((x >= 57+4 && x < 57+6) && (y >= 48 && y < 48+10))     pixels = 16'hFFE0; 
        else if ((x >= 57 && x < 57+6)   && (y >= 48 && y < 48+2))      pixels = 16'hFFE0; 
        else if ((x >= 57 && x < 57+6)   && (y >= 48+6 && y < 48+8))    pixels = 16'hFFE0; 
        else if ((x >= 64 && x < 64+2)   && (y >= 48 && y < 48+10))     pixels = 16'hFFE0; 
        else if ((x >= 64+4 && x < 64+6) && (y >= 48 && y < 48+6))      pixels = 16'hFFE0; 
        else if ((x >= 64 && x < 64+6)   && (y >= 48 && y < 48+2))      pixels = 16'hFFE0; 
        else if ((x >= 64 && x < 64+6)   && (y >= 48+4 && y < 48+6))    pixels = 16'hFFE0; 
        else if ((x >= 71 && x < 71+2)   && (y >= 48 && y < 48+10))     pixels = 16'hFFE0; 
        else if ((x >= 71 && x < 71+6)   && (y >= 48 && y < 48+2))      pixels = 16'hFFE0; 
        else if ((x >= 71 && x < 71+4)   && (y >= 48+4 && y < 48+6))    pixels = 16'hFFE0; 
        else if ((x >= 71 && x < 71+6)   && (y >= 48+8 && y < 48+10))   pixels = 16'hFFE0;
        else pixels = 16'h0000;
    end

endmodule
