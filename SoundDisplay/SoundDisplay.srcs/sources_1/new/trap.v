`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2020 10:56:36
// Design Name: 
// Module Name: trap
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


module trap(
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
        
//        Trap screen
        
//        Texts
        else if ((x >= 26 && x <= 28) && (y >= 22 && y <= 35)) pixels = 16'hFFE0;   
        else if ((x >= 32 && x <= 34) && (y >= 22 && y <= 35)) pixels = 16'hFFE0;
        else if ((x >= 26 && x <= 34) && (y >= 22 && y <= 24)) pixels = 16'hFFE0;  
        else if ((x >= 26 && x <= 34) && (y >= 33 && y <= 35)) pixels = 16'hFFE0;
        else if ((x >= 38 && x <= 40) && (y >= 22 && y <= 35)) pixels = 16'hFFE0;
        else if ((x >= 44 && x <= 46) && (y >= 22 && y <= 35)) pixels = 16'hFFE0;
        else if ((x >= 38 && x <= 46) && (y >= 33 && y <= 35)) pixels = 16'hFFE0;
        else if ((x >= 50 && x <= 52) && (y >= 22 && y <= 35)) pixels = 16'hFFE0;
        else if ((x >= 50 && x <= 58) && (y >= 22 && y <= 24)) pixels = 16'hFFE0;
        else if ((x >= 50 && x <= 58) && (y >= 33 && y <= 35)) pixels = 16'hFFE0;
        else if ((x >= 62 && x <= 64) && (y >= 22 && y <= 35)) pixels = 16'hFFE0;
        else if ((x >= 68 && x <= 70) && (y >= 22 && y <= 35)) pixels = 16'hFFE0;
        else if ((x >= 62 && x <= 70) && (y >= 28 && y <= 29)) pixels = 16'hFFE0;
        else if ((x >= 74 && x <= 76) && (y >= 22 && y <= 29)) pixels = 16'hFFE0;
        else if ((x >= 74 && x <= 76) && (y >= 33 && y <= 35)) pixels = 16'hFFE0;
        
        
//        Red minus
        else if ((x >= 26 && x <= 37) && (y >= 47 && y <= 50)) pixels = 16'hF800;
        
//        Red heart
        else if ((x >= 41 && x <= 54) && (y >= 45 && y <= 48)) pixels = 16'hF800;
        else if ((x >= 43 && x <= 46) && (y >= 43 && y <= 50)) pixels = 16'hF800; 
        else if ((x >= 49 && x <= 52) && (y >= 43 && y <= 50)) pixels = 16'hF800;
        else if ((x >= 47 && x <= 48) && (y >= 45 && y <= 54)) pixels = 16'hF800;
        else if ((x >= 45 && x <= 50) && (y >= 51 && y <= 52)) pixels = 16'hF800;
        
//        Red heart
        else if ((x >= 58 && x <= 71) && (y >= 45 && y <= 48)) pixels = 16'hF800;
        else if ((x >= 60 && x <= 63) && (y >= 43 && y <= 50)) pixels = 16'hF800;
        else if ((x >= 66 && x <= 69) && (y >= 43 && y <= 50)) pixels = 16'hF800;
        else if ((x >= 64 && x <= 65) && (y >= 45 && y <= 54)) pixels = 16'hF800; 
        else if ((x >= 62 && x <= 67) && (y >= 51 && y <= 52)) pixels = 16'hF800;
        
        
//        finger red
        else if ((x == 14) && (y >= 30 && y <= 40))            pixels = 16'hF800;
        else if (x == 15 && y == 29)                           pixels = 16'hF800;
        else if (x == 16 && y == 28)                           pixels = 16'hF800;
        else if (x == 17 && y == 27)                           pixels = 16'hF800;
        
//        finger beige
        else if ((x >= 2 && x <= 16) && (y >= 25 && y <= 32))  pixels = 16'hEE13;
        else if ((x >= 17 && x <= 18) && (y >= 26 && y <= 32)) pixels = 16'hEE13;
        else if ((x >= 19 && x <= 20) && (y >= 27 && y <= 31)) pixels = 16'hEE13;
        else if ((x == 21) && (y >= 28 && y <= 30))            pixels = 16'hEE13;
        
        else if (x < 1 || y < 1 || x >= 95 || y >= 63)                    pixels = 16'hF800;
        else pixels = 16'h0000;
    end

endmodule
