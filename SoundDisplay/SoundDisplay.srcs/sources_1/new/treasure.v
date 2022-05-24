`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2020 10:56:36
// Design Name: 
// Module Name: treasure
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


module treasure(
    input [6:0] x,
    input [5:0] y,
    input [5:0] player_hp,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
        // player hp
             if ((x <= 5) && (y >= 16 && y <= 23)) pixels = (player_hp[5]) ? 16'hF800 : 16'h52AA;
        else if ((x <= 5) && (y >= 25 && y <= 31)) pixels = (player_hp[4]) ? 16'hF800 : 16'h52AA;
        else if ((x <= 5) && (y >= 33 && y <= 39)) pixels = (player_hp[3]) ? 16'hF800 : 16'h52AA;
        else if ((x <= 5) && (y >= 41 && y <= 47)) pixels = (player_hp[2]) ? 16'hF800 : 16'h52AA;
        else if ((x <= 5) && (y >= 49 && y <= 55)) pixels = (player_hp[1]) ? 16'hF800 : 16'h52AA;
        else if ((x <= 5) && (y >= 57           )) pixels = (player_hp[0]) ? 16'hF800 : 16'h52AA;
        
        else if ((x == 6 && y >= 15) || (x <= 5 && y == 15)) pixels = 16'h0000;
        else if ((x <= 5 && y == 24) || (x <= 5 && y == 32) || (x <= 5 && y == 40) || (x <= 5 && y == 48) || (x <= 5 && y == 56)) pixels = 16'h0000;
   
//        Treasure screen
        
//        Heart red
        else if ((x >= 48 && x <= 61) && (y >= 45 && y <= 48)) pixels = 16'hF800;
        else if ((x >= 50 && x <= 53) && (y >= 43 && y <= 50)) pixels = 16'hF800;
        else if ((x >= 56 && x <= 59) && (y >= 43 && y <= 50)) pixels = 16'hF800;
        else if ((x >= 54 && x <= 55) && (y >= 45 && y <= 54)) pixels = 16'hF800;
        else if ((x >= 52 && x <= 57) && (y >= 51 && y <= 52)) pixels = 16'hF800;
        
//        Plus sign red
        else if ((x >= 37 && x <= 40) && (y >= 43 && y <= 54)) pixels = 16'hF800;
        else if ((x >= 33 && x <= 44) && (y >= 47 && y <= 50)) pixels = 16'hF800;
        
//        Mask black outline
        else if ((x == 23) && (y >= 20 && y <= 24))             pixels = 16'h0000;
        else if ((x == 24) && (y >= 25 && y <= 28))             pixels = 16'h0000;
        else if ((x == 25) && (y >= 29 && y <= 30))             pixels = 16'h0000;
        else if ((x == 34) && (y >= 25 && y <= 31))             pixels = 16'h0000;
        else if ((x == 61) && (y >= 25 && y <= 31))             pixels = 16'h0000;
        else if ((x == 72) && (y >= 20 && y <= 24))             pixels = 16'h0000;
        else if ((x == 71) && (y >= 25 && y <= 28))             pixels = 16'h0000;
        else if ((x == 70) && (y >= 29 && y <= 30))             pixels = 16'h0000;
        
        else if ((x >= 24 && x <= 28) && (y == 19))             pixels = 16'h0000;
        else if ((x >= 27 && x <= 28) && (y == 32))             pixels = 16'h0000;
        else if ((x >= 29 && x <= 31) && (y == 33))             pixels = 16'h0000;
        else if ((x >= 32 && x <= 33) && (y == 32))             pixels = 16'h0000;
        else if ((x >= 67 && x <= 71) && (y == 19))             pixels = 16'h0000;
        else if ((x >= 67 && x <= 68) && (y == 32))             pixels = 16'h0000;
        else if ((x >= 64 && x <= 66) && (y == 33))             pixels = 16'h0000;
        else if ((x >= 62 && x <= 63) && (y == 32))             pixels = 16'h0000;
        else if ((x >= 43 && x <= 52) && (y == 21))             pixels = 16'h0000;
        else if ((x >= 43 && x <= 52) && (y == 35))             pixels = 16'h0000;
        else if ((x >= 43 && x <= 52) && (y == 24))             pixels = 16'h0000;
        else if ((x >= 43 && x <= 52) && (y == 32))             pixels = 16'h0000;
        else if ((x >= 39 && x <= 42) && (y == 22))             pixels = 16'h0000;
        else if ((x >= 39 && x <= 42) && (y == 25))             pixels = 16'h0000;
        else if ((x >= 39 && x <= 42) && (y == 31))             pixels = 16'h0000;
        else if ((x >= 39 && x <= 42) && (y == 34))             pixels = 16'h0000;
        else if ((x >= 53 && x <= 56) && (y == 22))             pixels = 16'h0000;
        else if ((x >= 53 && x <= 56) && (y == 25))             pixels = 16'h0000;
        else if ((x >= 53 && x <= 56) && (y == 31))             pixels = 16'h0000;
        else if ((x >= 53 && x <= 56) && (y == 34))             pixels = 16'h0000;
        else if ((x >= 37 && x <= 38) && (y == 23))             pixels = 16'h0000;
        else if ((x >= 37 && x <= 38) && (y == 26))             pixels = 16'h0000;
        else if ((x >= 37 && x <= 38) && (y == 30))             pixels = 16'h0000;
        else if ((x >= 37 && x <= 38) && (y == 33))             pixels = 16'h0000;
        else if ((x >= 35 && x <= 37) && (y == 27))             pixels = 16'h0000;
        else if ((x >= 35 && x <= 36) && (y == 29))             pixels = 16'h0000;
        else if ((x >= 57 && x <= 58) && (y == 23))             pixels = 16'h0000;
        else if ((x >= 57 && x <= 58) && (y == 26))             pixels = 16'h0000;
        else if ((x >= 57 && x <= 58) && (y == 30))             pixels = 16'h0000;
        else if ((x >= 57 && x <= 58) && (y == 33))             pixels = 16'h0000;
        else if ((x >= 59 && x <= 60) && (y == 27))             pixels = 16'h0000;
        else if ((x >= 59 && x <= 60) && (y == 29))             pixels = 16'h0000;
        
        else if (x == 26 && y == 31)                            pixels = 16'h0000;
        else if (x == 29 && y == 20)                            pixels = 16'h0000;
        else if (x == 30 && y == 21)                            pixels = 16'h0000;
        else if (x == 31 && y == 22)                            pixels = 16'h0000;
        else if (x == 32 && y == 23)                            pixels = 16'h0000;
        else if (x == 33 && y == 24)                            pixels = 16'h0000;
        else if (x == 35 && y == 25)                            pixels = 16'h0000;
        else if (x == 36 && y == 24)                            pixels = 16'h0000;
        else if (x == 35 && y == 31)                            pixels = 16'h0000;
        else if (x == 36 && y == 32)                            pixels = 16'h0000;
        else if (x == 69 && y == 31)                            pixels = 16'h0000;
        else if (x == 62 && y == 24)                            pixels = 16'h0000;
        else if (x == 63 && y == 23)                            pixels = 16'h0000;
        else if (x == 64 && y == 22)                            pixels = 16'h0000;
        else if (x == 65 && y == 21)                            pixels = 16'h0000;
        else if (x == 66 && y == 20)                            pixels = 16'h0000;
        else if (x == 60 && y == 25)                            pixels = 16'h0000;
        else if (x == 59 && y == 24)                            pixels = 16'h0000;
        else if (x == 60 && y == 31)                            pixels = 16'h0000;
        else if (x == 59 && y == 32)                            pixels = 16'h0000;
        
//        Mask dark blue
        else if ((x >= 37 && x <= 38) && (y == 24))             pixels = 16'h001F;
        else if ((x >= 39 && x <= 42) && (y == 23))             pixels = 16'h001F;
        else if ((x >= 43 && x <= 52) && (y == 22))             pixels = 16'h001F;
        else if ((x >= 53 && x <= 56) && (y == 23))             pixels = 16'h001F;
        else if ((x >= 57 && x <= 58) && (y == 24))             pixels = 16'h001F;
        else if ((x >= 43 && x <= 52) && (y == 25))             pixels = 16'h001F;
        else if ((x >= 39 && x <= 42) && (y == 26))             pixels = 16'h001F;
        else if ((x >= 37 && x <= 38) && (y == 27))             pixels = 16'h001F;
        else if ((x >= 35 && x <= 36) && (y == 28))             pixels = 16'h001F;
        else if ((x >= 37 && x <= 38) && (y == 29))             pixels = 16'h001F;
        else if ((x >= 39 && x <= 42) && (y == 30))             pixels = 16'h001F;
        else if ((x >= 43 && x <= 52) && (y == 31))             pixels = 16'h001F;
        else if ((x >= 53 && x <= 56) && (y == 26))             pixels = 16'h001F;
        else if ((x >= 53 && x <= 56) && (y == 30))             pixels = 16'h001F;
        else if ((x >= 57 && x <= 58) && (y == 27))             pixels = 16'h001F;
        else if ((x >= 57 && x <= 58) && (y == 29))             pixels = 16'h001F;
        else if ((x >= 59 && x <= 60) && (y == 28))             pixels = 16'h001F;
        else if ((x >= 37 && x <= 38) && (y == 32))             pixels = 16'h001F;
        else if ((x >= 39 && x <= 42) && (y == 33))             pixels = 16'h001F;
        else if ((x >= 43 && x <= 52) && (y == 34))             pixels = 16'h001F;
        else if ((x >= 53 && x <= 56) && (y == 33))             pixels = 16'h001F;
        else if ((x >= 57 && x <= 58) && (y == 32))             pixels = 16'h001F;
        
        else if (x == 36 && y == 25)                            pixels = 16'h001F;
        else if (x == 35 && y == 26)                            pixels = 16'h001F;
        else if (x == 35 && y == 30)                            pixels = 16'h001F;
        else if (x == 36 && y == 31)                            pixels = 16'h001F;
        else if (x == 59 && y == 25)                            pixels = 16'h001F;
        else if (x == 60 && y == 26)                            pixels = 16'h001F;
        else if (x == 60 && y == 30)                            pixels = 16'h001F;
        else if (x == 59 && y == 31)                            pixels = 16'h001F;
        
//        Mask light blue
        else if ((x >= 37 && x <= 58) && (y >= 23 && y <= 33))  pixels = 16'h5E7C;
        else if (x == 36 && y == 26)                            pixels = 16'h5E7C;
        else if (x == 36 && y == 30)                            pixels = 16'h5E7C;
        else if (x == 59 && y == 26)                            pixels = 16'h5E7C;
        else if (x == 59 && y == 30)                            pixels = 16'h5E7C;
   
        else if (x < 1 || y < 1 || x >= 95 || y >= 63)          pixels = 16'h07E0;
        else pixels = 16'hFFFF;
    end
    
    
    
endmodule
