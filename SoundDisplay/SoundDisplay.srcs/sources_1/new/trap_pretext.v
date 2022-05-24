`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 03:57:56
// Design Name: 
// Module Name: trap_pretext
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


module trap_pretext(
    input [6:0] x,                
    input [5:0] y,
    input [5:0] player_hp,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
         // player hp
              if ((x <= 5) && (y >= 16 && y <= 23)) pixels = (player_hp[5]) ? 16'hF800 : 16'hFFFF;
         else if ((x <= 5) && (y >= 25 && y <= 31)) pixels = (player_hp[4]) ? 16'hF800 : 16'hFFFF;
         else if ((x <= 5) && (y >= 33 && y <= 39)) pixels = (player_hp[3]) ? 16'hF800 : 16'hFFFF;
         else if ((x <= 5) && (y >= 41 && y <= 47)) pixels = (player_hp[2]) ? 16'hF800 : 16'hFFFF;
         else if ((x <= 5) && (y >= 49 && y <= 55)) pixels = (player_hp[1]) ? 16'hF800 : 16'hFFFF;
         else if ((x <= 5) && (y >= 57           )) pixels = (player_hp[0]) ? 16'hF800 : 16'hFFFF;
         
         else if ((x == 6 && y >= 15) || (x <= 5 && y == 15)) pixels = 16'h6B4D;
         else if ((x <= 5 && y == 24) || (x <= 5 && y == 32) || (x <= 5 && y == 40) || (x <= 5 && y == 48) || (x <= 5 && y == 56)) pixels = 16'h0000;
         
         else if ((x >= 11   && x < 11+2) && (y >= 6   && y < 6+6))        pixels = 16'hFFFF;
         else if ((x >= 11+2 && x < 11+4) && (y >= 6+4 && y < 6+10))       pixels = 16'hFFFF;
         else if ((x >= 11+4 && x < 11+6) && (y >= 6   && y < 6+6))        pixels = 16'hFFFF;
         else if ((x >= 18 && x < 18+2)   && (y >= 6 && y < 6+10))         pixels = 16'hFFFF;
         else if ((x >= 18+4 && x < 18+6) && (y >= 6 && y < 6+10))         pixels = 16'hFFFF;
         else if ((x >= 18 && x < 18+6)   && (y >= 6 && y < 6+2))          pixels = 16'hFFFF;
         else if ((x >= 18 && x < 18+6)   && (y >= 6+8 && y < 6+10))       pixels = 16'hFFFF;
         else if ((x >= 25 && x < 25+2)   && (y >= 6 && y < 6+10))         pixels = 16'hFFFF;
         else if ((x >= 25+4 && x < 25+6) && (y >= 6 && y < 6+10))         pixels = 16'hFFFF;
         else if ((x >= 25 && x < 25+6)   && (y >= 6+8 && y < 6+10))       pixels = 16'hFFFF;
         else if ((x >= 35 && x < 35+2)   && (y >= 6 && y < 6+10))         pixels = 16'hF800;
         else if ((x >= 35+4 && x < 35+6) && (y >= 6 && y < 6+6))          pixels = 16'hF800;
         else if ((x >= 35 && x < 35+6)   && (y >= 6 && y < 6+2))          pixels = 16'hF800;
         else if ((x >= 35 && x < 35+6)   && (y >= 6+4 && y < 6+6))        pixels = 16'hF800;
         else if ((x >= 42 && x < 42+2)   && (y >= 6 && y < 6+10))         pixels = 16'hF800;
         else if ((x >= 42+4 && x < 42+6) && (y >= 6 && y < 6+6))          pixels = 16'hF800;
         else if ((x >= 42+4 && x < 42+6) && (y >= 6+8 && y < 6+10))       pixels = 16'hF800;
         else if ((x >= 42 && x < 42+6)   && (y >= 6 && y < 6+2))          pixels = 16'hF800;
         else if ((x >= 42 && x < 42+4)   && (y >= 6+6 && y < 6+8))        pixels = 16'hF800;
         else if ((x >= 49+2 && x < 49+4) && (y >= 6 && y < 6+10))         pixels = 16'hF800;
         else if ((x >= 49 && x < 49+6)   && (y >= 6 && y < 6+2))          pixels = 16'hF800;
         else if ((x >= 49 && x < 49+6)   && (y >= 6+8 && y < 6+10))       pixels = 16'hF800;
         else if ((x >= 56 && x < 56+2)   && (y >= 6 && y < 6+10))         pixels = 16'hF800;
         else if ((x >= 56 && x < 56+6)   && (y >= 6 && y < 6+2))          pixels = 16'hF800;
         else if ((x >= 56 && x < 56+6)   && (y >= 6+8 && y < 6+10))       pixels = 16'hF800;
         else if ((x >= 63   && x < 63+2) && (y >= 6   && y < 6+10))       pixels = 16'hF800;
         else if ((x >= 63+4 && x < 63+6) && (y >= 6   && y < 6+4))        pixels = 16'hF800;
         else if ((x >= 63+4 && x < 63+6) && (y >= 6+6 && y < 6+10))       pixels = 16'hF800;
         else if ((x >= 63 && x < 63+4) && (y >= 6+4 && y < 6+6))          pixels = 16'hF800;
         else if ((x >= 70 && x < 70+2)   && (y >= 6 && y < 6+10))         pixels = 16'hF800;
         else if ((x >= 70 && x < 70+6)   && (y >= 6 && y < 6+2))          pixels = 16'hF800;
         else if ((x >= 70 && x < 70+4)   && (y >= 6+4 && y < 6+6))        pixels = 16'hF800;
         else if ((x >= 70 && x < 70+6)   && (y >= 6+8 && y < 6+10))       pixels = 16'hF800;
         else if ((x >= 77 && x < 77+2)   && (y >= 6 && y < 6+10))         pixels = 16'hF800;
         else if ((x >= 77+4 && x < 77+6) && (y >= 6+2 && y < 6+8))        pixels = 16'hF800;
         else if ((x >= 77 && x < 77+4)   && (y >= 6 && y < 6+2))          pixels = 16'hF800;
         else if ((x >= 77 && x < 77+4)   && (y >= 6+8 && y < 6+10))       pixels = 16'hF800;
         else if ((x >= 20   && x < 20+2) && (y >= 20   && y < 20+6))      pixels = 16'hFFFF;
         else if ((x >= 20+2 && x < 20+4) && (y >= 20+4 && y < 20+10))     pixels = 16'hFFFF;
         else if ((x >= 20+4 && x < 20+6) && (y >= 20   && y < 20+6))      pixels = 16'hFFFF;
         else if ((x >= 27 && x < 27+2)   && (y >= 20 && y < 20+10))       pixels = 16'hFFFF;
         else if ((x >= 27+4 && x < 27+6) && (y >= 20 && y < 20+10))       pixels = 16'hFFFF;
         else if ((x >= 27 && x < 27+6)   && (y >= 20 && y < 20+2))        pixels = 16'hFFFF;
         else if ((x >= 27 && x < 27+6)   && (y >= 20+8 && y < 20+10))     pixels = 16'hFFFF;
         else if ((x >= 34 && x < 34+2)   && (y >= 20 && y < 20+10))       pixels = 16'hFFFF;
         else if ((x >= 34+4 && x < 34+6) && (y >= 20 && y < 20+10))       pixels = 16'hFFFF;
         else if ((x >= 34 && x < 34+6)   && (y >= 20+8 && y < 20+10))     pixels = 16'hFFFF;
         else if ((x >= 41 && x < 41+2)   && (y >= 20 && y < 20+10))       pixels = 16'hFFFF;
         else if ((x >= 41+4 && x < 41+6) && (y >= 20 && y < 20+6))        pixels = 16'hFFFF;
         else if ((x >= 41+4 && x < 41+6) && (y >= 20+8 && y < 20+10))     pixels = 16'hFFFF;
         else if ((x >= 41 && x < 41+6)   && (y >= 20 && y < 20+2))        pixels = 16'hFFFF;
         else if ((x >= 41 && x < 41+4)   && (y >= 20+6 && y < 20+8))      pixels = 16'hFFFF;
         else if ((x >= 48 && x < 48+2)   && (y >= 20 && y < 20+6))        pixels = 16'hFFFF;
         else if ((x >= 48+4 && x < 48+6) && (y >= 20+4 && y < 20+10))     pixels = 16'hFFFF;
         else if ((x >= 48 && x < 48+6)   && (y >= 20 && y < 20+2))        pixels = 16'hFFFF;
         else if ((x >= 48 && x < 48+6)   && (y >= 20+4 && y < 20+6))      pixels = 16'hFFFF;
         else if ((x >= 48 && x < 48+6)   && (y >= 20+8 && y < 20+10))     pixels = 16'hFFFF;
         else if ((x >= 55 && x < 55+2)   && (y >= 20 && y < 20+10))       pixels = 16'hFFFF;
         else if ((x >= 55 && x < 55+6)   && (y >= 20 && y < 20+2))        pixels = 16'hFFFF;
         else if ((x >= 55 && x < 55+4)   && (y >= 20+4 && y < 20+6))      pixels = 16'hFFFF;
         else if ((x >= 55 && x < 55+6)   && (y >= 20+8 && y < 20+10))     pixels = 16'hFFFF;
         else if ((x >= 62 && x < 62+2)   && (y >= 20 && y < 20+10))       pixels = 16'hFFFF;
         else if ((x >= 62 && x < 62+6)   && (y >= 20+8 && y < 20+10))     pixels = 16'hFFFF;
         else if ((x >= 69 && x < 69+2)   && (y >= 20 && y < 20+10))       pixels = 16'hFFFF;
         else if ((x >= 69 && x < 69+6)   && (y >= 20 && y < 20+2))        pixels = 16'hFFFF;
         else if ((x >= 69 && x < 69+4)   && (y >= 20+4 && y < 20+6))      pixels = 16'hFFFF;
         else if ((x >= 23 && x < 23+2)   && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 23+4 && x < 23+6) && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 23 && x < 23+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
         else if ((x >= 23 && x < 23+6)   && (y >= 34+8 && y < 34+10))     pixels = 16'hFFFF;
         else if ((x >= 30 && x < 30+2)   && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 30+4 && x < 30+6) && (y >= 34 && y < 34+6))        pixels = 16'hFFFF;
         else if ((x >= 30 && x < 30+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
         else if ((x >= 30 && x < 30+6)   && (y >= 34+4 && y < 34+6))      pixels = 16'hFFFF;
         else if ((x >= 37 && x < 37+2)   && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 37 && x < 37+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
         else if ((x >= 37 && x < 37+4)   && (y >= 34+4 && y < 34+6))      pixels = 16'hFFFF;
         else if ((x >= 37 && x < 37+6)   && (y >= 34+8 && y < 34+10))     pixels = 16'hFFFF;
         else if ((x >= 44 && x < 44+2)   && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 44+4 && x < 44+6) && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 44 && x < 44+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
         else if ((x >= 51+2 && x < 51+4) && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 51 && x < 51+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
         else if ((x >= 51 && x < 51+6)   && (y >= 34+8 && y < 34+10))     pixels = 16'hFFFF;
         else if ((x >= 58 && x < 58+2)   && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 58+4 && x < 58+6) && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 58 && x < 58+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
         else if ((x >= 65 && x < 65+2)   && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 65+5 && x < 65+6) && (y >= 34+4 && y < 34+10))     pixels = 16'hFFFF;
         else if ((x >= 65 && x < 65+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
         else if ((x >= 65+3 && x < 65+5) && (y >= 34+4 && y < 34+6))      pixels = 16'hFFFF;
         else if ((x >= 65+2 && x < 65+5) && (y >= 34+8 && y < 34+10))     pixels = 16'hFFFF;
         else if ((x >= 14+2 && x < 14+4) && (y >= 48 && y < 48+10))       pixels = 16'hFFE0;
         else if ((x >= 14 && x < 14+6)   && (y >= 48 && y < 48+2))        pixels = 16'hFFE0;
         else if ((x >= 21 && x < 21+2)   && (y >= 48 && y < 48+10))       pixels = 16'hFFE0;
         else if ((x >= 21+4 && x < 21+6) && (y >= 48 && y < 48+10))       pixels = 16'hFFE0;
         else if ((x >= 21 && x < 21+6)   && (y >= 48+4 && y < 48+6))      pixels = 16'hFFE0;
         else if ((x >= 28 && x < 28+2)   && (y >= 48 && y < 48+10))       pixels = 16'hFFE0;
         else if ((x >= 28 && x < 28+6)   && (y >= 48 && y < 48+2))        pixels = 16'hFFE0;
         else if ((x >= 28 && x < 28+4)   && (y >= 48+4 && y < 48+6))      pixels = 16'hFFE0;
         else if ((x >= 28 && x < 28+6)   && (y >= 48+8 && y < 48+10))     pixels = 16'hFFE0;
         else if ((x >= 38 && x < 38+2)   && (y >= 48 && y < 48+10))       pixels = 16'hFFE0;
         else if ((x >= 38 && x < 38+6)   && (y >= 48 && y < 48+2))        pixels = 16'hFFE0;
         else if ((x >= 38 && x < 38+6)   && (y >= 48+8 && y < 48+10))     pixels = 16'hFFE0;
         else if ((x >= 45 && x < 45+2)   && (y >= 48 && y < 48+10))       pixels = 16'hFFE0;
         else if ((x >= 45+4 && x < 45+6) && (y >= 48 && y < 48+10))       pixels = 16'hFFE0;
         else if ((x >= 45 && x < 45+6)   && (y >= 48+4 && y < 48+6))      pixels = 16'hFFE0;
         else if ((x >= 52 && x < 52+2)   && (y >= 48 && y < 48+10))       pixels = 16'hFFE0;
         else if ((x >= 52 && x < 52+6)   && (y >= 48 && y < 48+2))        pixels = 16'hFFE0;
         else if ((x >= 52 && x < 52+4)   && (y >= 48+4 && y < 48+6))      pixels = 16'hFFE0;
         else if ((x >= 52 && x < 52+6)   && (y >= 48+8 && y < 48+10))     pixels = 16'hFFE0;
         else if ((x >= 59 && x < 59+2)   && (y >= 48 && y < 48+6))        pixels = 16'hFFE0;
         else if ((x >= 59+4 && x < 59+6) && (y >= 48+4 && y < 48+10))     pixels = 16'hFFE0;
         else if ((x >= 59 && x < 59+6)   && (y >= 48 && y < 48+2))        pixels = 16'hFFE0;
         else if ((x >= 59 && x < 59+6)   && (y >= 48+4 && y < 48+6))      pixels = 16'hFFE0;
         else if ((x >= 59 && x < 59+6)   && (y >= 48+8 && y < 48+10))     pixels = 16'hFFE0;
         else if ((x >= 66+2 && x < 65+4) && (y >= 48 && y < 48+10))       pixels = 16'hFFE0;
         else if ((x >= 66 && x < 65+6)   && (y >= 48 && y < 48+2))        pixels = 16'hFFE0;
         else if ((x >= 74   && x < 74+2) && (y >= 55 && y < 55+2))        pixels = 16'hFFE0;
         else if ((x >= 74+3 && x < 74+5) && (y >= 55 && y < 55+2))        pixels = 16'hFFE0;
         else if ((x >= 74+6 && x < 74+8) && (y >= 55 && y < 55+2))        pixels = 16'hFFE0;
         
         else if (x < 1 || y < 1 || x >= 95 || y >= 63)                    pixels = 16'hF800;
         else pixels = 16'h0000;
    end

endmodule
