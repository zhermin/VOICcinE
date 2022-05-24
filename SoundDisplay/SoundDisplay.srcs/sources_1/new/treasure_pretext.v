`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 03:57:56
// Design Name: 
// Module Name: treasure_pretext
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


module treasure_pretext(
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
         
         else if ((x >= 14   && x < 14+2) && (y >= 19   && y < 19+6))      pixels = 16'hFFFF;
         else if ((x >= 14+2 && x < 14+4) && (y >= 19+4 && y < 19+10))     pixels = 16'hFFFF;
         else if ((x >= 14+4 && x < 14+6) && (y >= 19   && y < 19+6))      pixels = 16'hFFFF;
         else if ((x >= 21 && x < 21+2)   && (y >= 19 && y < 19+10))       pixels = 16'hFFFF;
         else if ((x >= 21+4 && x < 21+6) && (y >= 19 && y < 19+10))       pixels = 16'hFFFF;
         else if ((x >= 21 && x < 21+6)   && (y >= 19 && y < 19+2))        pixels = 16'hFFFF;
         else if ((x >= 21 && x < 21+6)   && (y >= 19+8 && y < 19+10))     pixels = 16'hFFFF;
         else if ((x >= 28 && x < 28+2)   && (y >= 19 && y < 19+10))       pixels = 16'hFFFF;
         else if ((x >= 28+4 && x < 28+6) && (y >= 19 && y < 19+10))       pixels = 16'hFFFF;
         else if ((x >= 28 && x < 28+6)   && (y >= 19+8 && y < 19+10))     pixels = 16'hFFFF;
         else if ((x >= 38 && x < 38+2)   && (y >= 19 && y < 19+10))       pixels = 16'hFFFF;
         else if ((x >= 38 && x < 38+6)   && (y >= 19 && y < 19+2))        pixels = 16'hFFFF;
         else if ((x >= 38 && x < 38+4)   && (y >= 19+4 && y < 19+6))      pixels = 16'hFFFF;
         else if ((x >= 45 && x < 45+2)   && (y >= 19 && y < 19+10))       pixels = 16'hFFFF;
         else if ((x >= 45+4 && x < 45+6) && (y >= 19 && y < 19+10))       pixels = 16'hFFFF;
         else if ((x >= 45 && x < 45+6)   && (y >= 19 && y < 19+2))        pixels = 16'hFFFF;
         else if ((x >= 45 && x < 45+6)   && (y >= 19+8 && y < 19+10))     pixels = 16'hFFFF;
         else if ((x >= 52 && x < 52+2)   && (y >= 19 && y < 19+10))       pixels = 16'hFFFF;
         else if ((x >= 52+4 && x < 52+6) && (y >= 19 && y < 19+10))       pixels = 16'hFFFF;
         else if ((x >= 52 && x < 52+6)   && (y >= 19+8 && y < 19+10))     pixels = 16'hFFFF;
         else if ((x >= 59 && x < 59+2)   && (y >= 19 && y < 19+10))       pixels = 16'hFFFF;
         else if ((x >= 59+4 && x < 59+6) && (y >= 19 && y < 19+10))       pixels = 16'hFFFF;
         else if ((x >= 59 && x < 59+6)   && (y >= 19 && y < 19+2))        pixels = 16'hFFFF;
         else if ((x >= 66 && x < 66+2)   && (y >= 19 && y < 19+10))       pixels = 16'hFFFF;
         else if ((x >= 66+4 && x < 66+6) && (y >= 19+2 && y < 19+8))      pixels = 16'hFFFF;
         else if ((x >= 66 && x < 66+4)   && (y >= 19 && y < 19+2))        pixels = 16'hFFFF;
         else if ((x >= 66 && x < 66+4)   && (y >= 19+8 && y < 19+10))     pixels = 16'hFFFF;
         else if ((x >= 76 && x < 76+2)   && (y >= 19 && y < 19+10))       pixels = 16'hFFFF;
         else if ((x >= 76+4 && x < 76+6) && (y >= 19 && y < 19+10))       pixels = 16'hFFFF;
         else if ((x >= 76 && x < 76+6)   && (y >= 19 && y < 19+2))        pixels = 16'hFFFF;
         else if ((x >= 76 && x < 76+6)   && (y >= 19+6 && y < 19+8))      pixels = 16'hFFFF;
         else if ((x >= 9 && x < 9+2)   && (y >= 34 && y < 34+10))         pixels = 16'hFFFF;
         else if ((x >= 9+4 && x < 9+6) && (y >= 34 && y < 34+6))          pixels = 16'hFFFF;
         else if ((x >= 9 && x < 9+6)   && (y >= 34 && y < 34+2))          pixels = 16'hFFFF;
         else if ((x >= 9 && x < 9+6)   && (y >= 34+4 && y < 34+6))        pixels = 16'hFFFF;
         else if ((x >= 16 && x < 16+2)   && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 16+4 && x < 16+6) && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 16 && x < 16+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
         else if ((x >= 16 && x < 16+6)   && (y >= 34+6 && y < 34+8))      pixels = 16'hFFFF;
         else if ((x >= 23 && x < 23+2)   && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 23 && x < 23+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
         else if ((x >= 23 && x < 23+6)   && (y >= 34+8 && y < 34+10))     pixels = 16'hFFFF;
         else if ((x >= 30   && x < 30+2) && (y >= 34   && y < 34+10))     pixels = 16'hFFFF;
         else if ((x >= 30+4 && x < 30+6) && (y >= 34   && y < 34+4))      pixels = 16'hFFFF;
         else if ((x >= 30+4 && x < 30+6) && (y >= 34+6 && y < 34+10))     pixels = 16'hFFFF;
         else if ((x >= 30 && x < 30+4) && (y >= 34+4 && y < 34+6))        pixels = 16'hFFFF;
         else if ((x >= 40 && x < 40+2)   && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 40+4 && x < 40+6) && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 40 && x < 40+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
         else if ((x >= 40 && x < 40+6)   && (y >= 34+8 && y < 34+10))     pixels = 16'hFFFF;
         else if ((x >= 47 && x < 47+2)   && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 47 && x < 47+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
         else if ((x >= 47 && x < 47+4)   && (y >= 34+4 && y < 34+6))      pixels = 16'hFFFF;
         else if ((x >= 57 && x < 57+2)   && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 57+3 && x < 57+4) && (y >= 34 && y < 34+6))        pixels = 16'hFFFF;
         else if ((x >= 57+5 && x < 57+6) && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 57 && x < 57+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
         else if ((x >= 64 && x < 64+2)   && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 64+4 && x < 64+6) && (y >= 34 && y < 34+10))       pixels = 16'hFFFF;
         else if ((x >= 64 && x < 64+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
         else if ((x >= 64 && x < 64+6)   && (y >= 34+6 && y < 34+8))      pixels = 16'hFFFF;
         else if ((x >= 71 && x < 71+2)   && (y >= 34 && y < 34+6))        pixels = 16'hFFFF;
         else if ((x >= 71+4 && x < 71+6) && (y >= 34+4 && y < 34+10))     pixels = 16'hFFFF;
         else if ((x >= 71 && x < 71+6)   && (y >= 34 && y < 34+2))        pixels = 16'hFFFF;
         else if ((x >= 71 && x < 71+6)   && (y >= 34+4 && y < 34+6))      pixels = 16'hFFFF;
         else if ((x >= 71 && x < 71+6)   && (y >= 34+8 && y < 34+10))     pixels = 16'hFFFF;
         else if ((x >= 78   && x < 78+2) && (y >= 34   && y < 34+10))     pixels = 16'hFFFF;
         else if ((x >= 78+4 && x < 78+6) && (y >= 34   && y < 34+4))      pixels = 16'hFFFF;
         else if ((x >= 78+4 && x < 78+6) && (y >= 34+6 && y < 34+10))     pixels = 16'hFFFF;
         else if ((x >= 78 && x < 78+4) && (y >= 34+4 && y < 34+6))        pixels = 16'hFFFF;
         else if ((x >= 86 && x < 86+2) && (y >= 34   && y < 34+6))        pixels = 16'hFFFF;
         else if ((x >= 86 && x < 86+2) && (y >= 34+8 && y < 34+10))       pixels = 16'hFFFF;
         
         else if (x < 1 || y < 1 || x >= 95 || y >= 63)                    pixels = 16'h07E0;
         else pixels = 16'h0000;
    end

endmodule
