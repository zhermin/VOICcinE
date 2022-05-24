`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2020 03:31:51
// Design Name: 
// Module Name: m4_death_scrn
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


module m4_death_scrn(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                  pixels = 16'hF800;

//        Final boss death
        else if ((x >= 3 && x < 3+2)   && (y >= 6 && y < 6+6))          pixels = 16'hFFE0;  
        else if ((x >= 3+4 && x < 3+6) && (y >= 6+4 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 3 && x < 3+6)   && (y >= 6 && y < 6+2))          pixels = 16'hFFE0;  
        else if ((x >= 3 && x < 3+6)   && (y >= 6+4 && y < 6+6))        pixels = 16'hFFE0;  
        else if ((x >= 3 && x < 3+6)   && (y >= 6+8 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 10+2 && x < 10+4) && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 10 && x < 10+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFE0;  
        else if ((x >= 17 && x < 17+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 17+4 && x < 17+6) && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 17 && x < 17+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFE0;  
        else if ((x >= 17 && x < 17+6)   && (y >= 6+8 && y < 6+10))     pixels = 16'hFFE0;  
        else if ((x >= 24 && x < 24+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 24+4 && x < 24+6) && (y >= 6 && y < 6+6))        pixels = 16'hFFE0;  
        else if ((x >= 24 && x < 24+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFE0;  
        else if ((x >= 24 && x < 24+6)   && (y >= 6+4 && y < 6+6))      pixels = 16'hFFE0;  
        else if ((x >= 34+2 && x < 34+4) && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 34 && x < 34+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFE0;  
        else if ((x >= 41 && x < 41+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 41+4 && x < 41+6) && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 41 && x < 41+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFE0;  
        else if ((x >= 41 && x < 41+6)   && (y >= 6+8 && y < 6+10))     pixels = 16'hFFE0;  
        else if ((x >= 48 && x < 48+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 48+4 && x < 48+6) && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 48 && x < 48+6)   && (y >= 6+8 && y < 6+10))     pixels = 16'hFFE0;  
        else if ((x >= 55 && x < 55+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 55 && x < 55+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFE0;  
        else if ((x >= 55 && x < 55+6)   && (y >= 6+8 && y < 6+10))     pixels = 16'hFFE0;  
        else if ((x >= 62 && x < 62+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 62+4 && x < 62+6) && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 62 && x < 62+6)   && (y >= 6+4 && y < 6+6))      pixels = 16'hFFE0;  
        else if ((x >= 69+2 && x < 69+4) && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 69 && x < 69+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFE0;  
        else if ((x >= 69 && x < 69+6)   && (y >= 6+8 && y < 6+10))     pixels = 16'hFFE0;  
        else if ((x >= 76 && x < 76+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 76+4 && x < 76+6) && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 76 && x < 76+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFE0;  
        else if ((x >= 83 && x < 83+2)   && (y >= 6 && y < 6+10))       pixels = 16'hFFE0;  
        else if ((x >= 83+5 && x < 83+6) && (y >= 6+4 && y < 6+10))     pixels = 16'hFFE0;  
        else if ((x >= 83 && x < 83+6)   && (y >= 6 && y < 6+2))        pixels = 16'hFFE0;  
        else if ((x >= 83+3 && x < 83+5) && (y >= 6+4 && y < 6+6))      pixels = 16'hFFE0;  
        else if ((x >= 83+2 && x < 83+5) && (y >= 6+8 && y < 6+10))     pixels = 16'hFFE0;  
        else if ((x >= 17   && x < 17+2) && (y >= 20   && y < 20+6))    pixels = 16'hFFE0;  
        else if ((x >= 17+2 && x < 17+4) && (y >= 20+4 && y < 20+10))   pixels = 16'hFFE0;  
        else if ((x >= 17+4 && x < 17+6) && (y >= 20   && y < 20+6))    pixels = 16'hFFE0;  
        else if ((x >= 24 && x < 24+2)   && (y >= 20 && y < 20+10))     pixels = 16'hFFE0;  
        else if ((x >= 24+4 && x < 24+6) && (y >= 20 && y < 20+10))     pixels = 16'hFFE0;  
        else if ((x >= 24 && x < 24+6)   && (y >= 20 && y < 20+2))      pixels = 16'hFFE0;
        else if ((x >= 24 && x < 24+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hFFE0;  
        else if ((x >= 31 && x < 31+2)   && (y >= 20 && y < 20+10))     pixels = 16'hFFE0;  
        else if ((x >= 31+4 && x < 31+6) && (y >= 20 && y < 20+10))     pixels = 16'hFFE0;  
        else if ((x >= 31 && x < 31+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hFFE0;  
        else if ((x >= 38 && x < 38+2)   && (y >= 20 && y < 20+10))     pixels = 16'hFFE0;  
        else if ((x >= 38+4 && x < 38+6) && (y >= 20 && y < 20+6))      pixels = 16'hFFE0;  
        else if ((x >= 38+4 && x < 38+6) && (y >= 20+8 && y < 20+10))   pixels = 16'hFFE0;  
        else if ((x >= 38 && x < 38+6)   && (y >= 20 && y < 20+2))      pixels = 16'hFFE0;  
        else if ((x >= 38 && x < 38+4)   && (y >= 20+6 && y < 20+8))    pixels = 16'hFFE0;  
        else if ((x >= 48 && x < 48+2)   && (y >= 20 && y < 20+10))     pixels = 16'hFFE0;  
        else if ((x >= 48 && x < 48+6)   && (y >= 20 && y < 20+2))      pixels = 16'hFFE0;  
        else if ((x >= 48 && x < 48+4)   && (y >= 20+4 && y < 20+6))    pixels = 16'hFFE0;  
        else if ((x >= 55 && x < 55+2)   && (y >= 20 && y < 20+10))     pixels = 16'hFFE0;  
        else if ((x >= 55+4 && x < 55+6) && (y >= 20 && y < 20+10))     pixels = 16'hFFE0;  
        else if ((x >= 55 && x < 55+6)   && (y >= 20 && y < 20+2))      pixels = 16'hFFE0;  
        else if ((x >= 55 && x < 55+6)   && (y >= 20+6 && y < 20+8))    pixels = 16'hFFE0;  
        else if ((x >= 62 && x < 62+2)   && (y >= 20 && y < 20+10))     pixels = 16'hFFE0;  
        else if ((x >= 62 && x < 62+6)   && (y >= 20 && y < 20+2))      pixels = 16'hFFE0;  
        else if ((x >= 62 && x < 62+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hFFE0;  
        else if ((x >= 69 && x < 69+2)   && (y >= 20 && y < 20+10))     pixels = 16'hFFE0;  
        else if ((x >= 69 && x < 69+6)   && (y >= 20 && y < 20+2))      pixels = 16'hFFE0;  
        else if ((x >= 69 && x < 69+4)   && (y >= 20+4 && y < 20+6))    pixels = 16'hFFE0;  
        else if ((x >= 69 && x < 69+6)   && (y >= 20+8 && y < 20+10))   pixels = 16'hFFE0;  
        else if ((x >= 77 && x < 77+2) && (y >= 20   && y < 20+6))      pixels = 16'hFFE0;  
        else if ((x >= 77 && x < 77+2) && (y >= 20+8 && y < 20+10))     pixels = 16'hFFE0;  
        else if ((x >= 4   && x < 4+2) && (y >= 34   && y < 34+6))      pixels = 16'hFFFF;  
        else if ((x >= 4+2 && x < 4+4) && (y >= 34+4 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 4+4 && x < 4+6) && (y >= 34   && y < 34+6))      pixels = 16'hFFFF;  
        else if ((x >= 11 && x < 11+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 11+4 && x < 11+6) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 11 && x < 11+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;  
        else if ((x >= 11 && x < 11+6)   && (y >= 34+8 && y < 34+10))   pixels = 16'hFFFF;  
        else if ((x >= 18 && x < 18+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 18+4 && x < 18+6) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 18 && x < 18+6)   && (y >= 34+8 && y < 34+10))   pixels = 16'hFFFF;  
        else if ((x >= 28 && x < 28+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 28 && x < 28+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;  
        else if ((x >= 28 && x < 28+6)   && (y >= 34+8 && y < 34+10))   pixels = 16'hFFFF;  
        else if ((x >= 35 && x < 35+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 35+4 && x < 35+6) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 35 && x < 35+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;  
        else if ((x >= 35 && x < 35+6)   && (y >= 34+6 && y < 34+8))    pixels = 16'hFFFF;  
        else if ((x >= 42 && x < 42+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 42+4 && x < 42+6) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 42 && x < 42+6)   && (y >= 34+8 && y < 34+10))   pixels = 16'hFFFF;  
        else if ((x >= 49 && x < 49+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 49+5 && x < 49+6) && (y >= 34+4 && y < 34+10))   pixels = 16'hFFFF;  
        else if ((x >= 49 && x < 49+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;
        else if ((x >= 49+3 && x < 49+5) && (y >= 34+4 && y < 34+6))    pixels = 16'hFFFF;  
        else if ((x >= 49+2 && x < 49+5) && (y >= 34+8 && y < 34+10))   pixels = 16'hFFFF;  
        else if ((x >= 56 && x < 56+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 56+4 && x < 56+6) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 56 && x < 56+6)   && (y >= 34+4 && y < 34+6))    pixels = 16'hFFFF;  
        else if ((x >= 63+2 && x < 63+4) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 63 && x < 63+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;  
        else if ((x >= 73+2 && x < 73+4) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 73 && x < 73+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;  
        else if ((x >= 80 && x < 80+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 80+4 && x < 80+6) && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 80 && x < 80+6)   && (y >= 34+4 && y < 34+6))    pixels = 16'hFFFF;  
        else if ((x >= 87 && x < 87+2)   && (y >= 34 && y < 34+10))     pixels = 16'hFFFF;  
        else if ((x >= 87 && x < 87+6)   && (y >= 34 && y < 34+2))      pixels = 16'hFFFF;  
        else if ((x >= 87 && x < 87+4)   && (y >= 34+4 && y < 34+6))    pixels = 16'hFFFF;  
        else if ((x >= 87 && x < 87+6)   && (y >= 34+8 && y < 34+10))   pixels = 16'hFFFF;  
        else if ((x >= 26 && x < 26+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;  
        else if ((x >= 26 && x < 26+6)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;  
        else if ((x >= 26 && x < 26+6)   && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;  
        else if ((x >= 33 && x < 33+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;  
        else if ((x >= 33+4 && x < 33+6) && (y >= 48 && y < 48+10))     pixels = 16'hF800;  
        else if ((x >= 33 && x < 33+6)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;  
        else if ((x >= 33 && x < 33+6)   && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;  
        else if ((x >= 40 && x < 40+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;  
        else if ((x >= 40+4 && x < 40+6) && (y >= 48 && y < 48+6))      pixels = 16'hF800;  
        else if ((x >= 40+4 && x < 40+6) && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;  
        else if ((x >= 40 && x < 40+6)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;  
        else if ((x >= 40 && x < 40+4)   && (y >= 48+6 && y < 48+8))    pixels = 16'hF800;  
        else if ((x >= 47 && x < 47+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;  
        else if ((x >= 47+4 && x < 47+6) && (y >= 48 && y < 48+10))     pixels = 16'hF800;  
        else if ((x >= 47 && x < 47+6)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;  
        else if ((x >= 47 && x < 47+6)   && (y >= 48+8 && y < 48+10))   pixels = 16'hF800;  
        else if ((x >= 54 && x < 54+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;  
        else if ((x >= 54+4 && x < 54+6) && (y >= 48 && y < 48+10))     pixels = 16'hF800;  
        else if ((x >= 54 && x < 54+6)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;  
        else if ((x >= 61 && x < 61+2)   && (y >= 48 && y < 48+10))     pixels = 16'hF800;  
        else if ((x >= 61+4 && x < 61+6) && (y >= 48 && y < 48+10))     pixels = 16'hF800;  
        else if ((x >= 61 && x < 61+6)   && (y >= 48 && y < 48+2))      pixels = 16'hF800;  
        else if ((x >= 61 && x < 61+6)   && (y >= 48+6 && y < 48+8))    pixels = 16'hF800;  
        else if ((x >= 69 && x < 69+2) && (y >= 48   && y < 48+6))      pixels = 16'hF800;  
        else if ((x >= 69 && x < 69+2) && (y >= 48+8 && y < 48+10))     pixels = 16'hF800;
        else pixels = 16'h0000;
    end

endmodule
