`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 15:54:30
// Design Name: 
// Module Name: m4_combat_scrn
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


module m4_combat_scrn(
    input [6:0] x,
    input [5:0] y,
    input clk_animation,
    input [3:0] rand_num,
    input [5:0] monster_hp,
    input [5:0] player_hp,
    input atk, def,
    output reg [15:0] pixels
    );
    
    reg first_digit;
    reg [6:0] second_digit;
    reg third_digit;
    reg [6:0] fourth_digit;
    
    reg [1:0] movement;                                                                                 
    always @ (posedge clk_animation) movement <= ~movement; // toggles between 0 and 1 to shift x-coords
    
    always @ (*) begin
            
        case (rand_num)
            0:  begin first_digit = 0; second_digit = 7'b100_0000; end
            1:  begin first_digit = 0; second_digit = 7'b111_1001; end
            2:  begin first_digit = 0; second_digit = 7'b010_0100; end
            3:  begin first_digit = 0; second_digit = 7'b011_0000; end
            4:  begin first_digit = 0; second_digit = 7'b001_1001; end
            5:  begin first_digit = 0; second_digit = 7'b001_0010; end
            6:  begin first_digit = 0; second_digit = 7'b000_0010; end
            7:  begin first_digit = 0; second_digit = 7'b111_1000; end
            8:  begin first_digit = 0; second_digit = 7'b000_0000; end
            9:  begin first_digit = 0; second_digit = 7'b001_0000; end
            10: begin first_digit = 1; second_digit = 7'b100_0000; end
            11: begin first_digit = 1; second_digit = 7'b111_1001; end
            12: begin first_digit = 1; second_digit = 7'b010_0100; end
            13: begin first_digit = 1; second_digit = 7'b011_0000; end
            14: begin first_digit = 1; second_digit = 7'b001_1001; end
            15: begin first_digit = 1; second_digit = 7'b001_0010; end
            16: begin first_digit = 1; second_digit = 7'b000_0010; end
        endcase
        
        case (rand_num+1)
            0:  begin third_digit = 0; fourth_digit = 7'b100_0000; end
            1:  begin third_digit = 0; fourth_digit = 7'b111_1001; end
            2:  begin third_digit = 0; fourth_digit = 7'b010_0100; end
            3:  begin third_digit = 0; fourth_digit = 7'b011_0000; end
            4:  begin third_digit = 0; fourth_digit = 7'b001_1001; end
            5:  begin third_digit = 0; fourth_digit = 7'b001_0010; end
            6:  begin third_digit = 0; fourth_digit = 7'b000_0010; end
            7:  begin third_digit = 0; fourth_digit = 7'b111_1000; end
            8:  begin third_digit = 0; fourth_digit = 7'b000_0000; end
            9:  begin third_digit = 0; fourth_digit = 7'b001_0000; end
            10: begin third_digit = 1; fourth_digit = 7'b100_0000; end
            11: begin third_digit = 1; fourth_digit = 7'b111_1001; end
            12: begin third_digit = 1; fourth_digit = 7'b010_0100; end
            13: begin third_digit = 1; fourth_digit = 7'b011_0000; end
            14: begin third_digit = 1; fourth_digit = 7'b001_1001; end
            15: begin third_digit = 1; fourth_digit = 7'b001_0010; end
            16: begin third_digit = 1; fourth_digit = 7'b000_0010; end
            default: begin third_digit = 1; fourth_digit = 7'b000_0010; end
        endcase
        
        // combat range
        if ((x >= 43    && x < 43+10) && (y >= 51 && y < 51+3)) pixels = 16'h0000;
        
        else if ((x >= 31 && x <= 36) && (y >= 42 && y <= 44)) pixels = (!second_digit[0]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 37 && x <= 39) && (y >= 45 && y <= 50)) pixels = (!second_digit[1]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 37 && x <= 39) && (y >= 54 && y <= 59)) pixels = (!second_digit[2]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 31 && x <= 36) && (y >= 60 && y <= 62)) pixels = (!second_digit[3]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 28 && x <= 30) && (y >= 54 && y <= 59)) pixels = (!second_digit[4]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 28 && x <= 30) && (y >= 45 && y <= 50)) pixels = (!second_digit[5]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 31 && x <= 36) && (y >= 51 && y <= 53)) pixels = (!second_digit[6]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        
        else if ((x >= 22 && x <= 24) && (y >= 45 && y <= 50)) pixels = (first_digit) ? 16'h0000 : 16'hFFFF; // pixels =  16'h0000;
        else if ((x >= 22 && x <= 24) && (y >= 54 && y <= 59)) pixels = (first_digit) ? 16'h0000 : 16'hFFFF;
        
        else if ((x >= 31+34 && x <= 36+34) && (y >= 42 && y <= 44)) pixels = (!fourth_digit[0]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 37+34 && x <= 39+34) && (y >= 45 && y <= 50)) pixels = (!fourth_digit[1]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 37+34 && x <= 39+34) && (y >= 54 && y <= 59)) pixels = (!fourth_digit[2]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 31+34 && x <= 36+34) && (y >= 60 && y <= 62)) pixels = (!fourth_digit[3]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 28+34 && x <= 30+34) && (y >= 54 && y <= 59)) pixels = (!fourth_digit[4]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 28+34 && x <= 30+34) && (y >= 45 && y <= 50)) pixels = (!fourth_digit[5]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 31+34 && x <= 36+34) && (y >= 51 && y <= 53)) pixels = (!fourth_digit[6]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        
        else if ((x >= 56 && x <= 58) && (y >= 45 && y <= 50)) pixels = (third_digit) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 56 && x <= 58) && (y >= 54 && y <= 59)) pixels = (third_digit) ? 16'h0000 : 16'hFFFF;

    
         // monster hp
        else if ((x == 89 && y <= 48) || (x >= 90 && y == 48)) pixels = 16'h0000;
        else if (x >= 90 && y == 7 ) pixels = 16'h0000;
        else if (x >= 90 && y == 15) pixels = 16'h0000;
        else if (x >= 90 && y == 23) pixels = 16'h0000;
        else if (x >= 90 && y == 31) pixels = 16'h0000;
        else if (x >= 90 && y == 39) pixels = 16'h0000;
    
        else if ((x >= 90) && (           y <= 7 )) pixels = (monster_hp[0]) ? 16'hF800 : 16'h52AA;
        else if ((x >= 90) && (y >= 8  && y <= 15)) pixels = (monster_hp[1]) ? 16'hF800 : 16'h52AA;
        else if ((x >= 90) && (y >= 16 && y <= 23)) pixels = (monster_hp[2]) ? 16'hF800 : 16'h52AA;
        else if ((x >= 90) && (y >= 24 && y <= 31)) pixels = (monster_hp[3]) ? 16'hF800 : 16'h52AA;
        else if ((x >= 90) && (y >= 32 && y <= 39)) pixels = (monster_hp[4]) ? 16'hF800 : 16'h52AA;
        else if ((x >= 90) && (y >= 40 && y <= 47)) pixels = (monster_hp[5]) ? 16'hF800 : 16'h52AA;
        
        // player hp
        else if ((x == 6 && y >= 15) || (x <= 5 && y == 15) || (x <= 5 && y == 24) || (x <= 5 && y == 32) || (x <= 5 && y == 40) || (x <= 5 && y == 48) || (x <= 5 && y == 56)) pixels = 16'h0000;
        else if ((x <= 5) && (y >= 16 && y <= 23)) pixels = (player_hp[5]) ? 16'hF800 : 16'h52AA;
        else if ((x <= 5) && (y >= 25 && y <= 31)) pixels = (player_hp[4]) ? 16'hF800 : 16'h52AA;
        else if ((x <= 5) && (y >= 33 && y <= 39)) pixels = (player_hp[3]) ? 16'hF800 : 16'h52AA;
        else if ((x <= 5) && (y >= 41 && y <= 47)) pixels = (player_hp[2]) ? 16'hF800 : 16'h52AA;
        else if ((x <= 5) && (y >= 49 && y <= 55)) pixels = (player_hp[1]) ? 16'hF800 : 16'h52AA;
        else if ((x <= 5) && (y >= 57           )) pixels = (player_hp[0]) ? 16'hF800 : 16'h52AA;
        
        // icon borders
        else if ((x >= 0 && x <= 15) && (y == 15)) pixels = 16'h0000;
        else if ((x == 15) && (y >= 0 && y <= 15)) pixels = 16'h0000;
        
        
        // monster sprite
        
        // black outlines
        // top horizontal
    //        [45,2 to 50,2]
    //        [44,3][43,4][44,5][45,6][46,6 to 46,11][43,9 to 45,9][41,10 to 42,10]
    //        [51,3][52,3][51,5][50,6][49,6 to 49,11][50,9 to 52,9][53,10 to 54,10]
        else if ((x >= 45+movement && x <= 50+movement) && (y == 2))          pixels = 16'h0000;
        else if ((x >= 43+movement && x <= 45+movement) && (y == 9))          pixels = 16'h0000;
        else if ((x >= 41+movement && x <= 42+movement) && (y == 10))         pixels = 16'h0000;
        else if ((x >= 50+movement && x <= 52+movement) && (y == 9))          pixels = 16'h0000;
        else if ((x >= 53+movement && x <= 54+movement) && (y == 10))         pixels = 16'h0000;
        else if ((x == 46+movement) && (y >= 6 && y <= 11))          pixels = 16'h0000;
        else if ((x == 49+movement) && (y >= 6 && y <= 11))          pixels = 16'h0000;
        else if (x == 44+movement && y == 3)                         pixels = 16'h0000;
        else if (x == 43+movement && y == 4)                         pixels = 16'h0000;
        else if (x == 44+movement && y == 5)                         pixels = 16'h0000;
        else if (x == 45+movement && y == 6)                         pixels = 16'h0000;
        else if (x == 51+movement && y == 3)                         pixels = 16'h0000;
        else if (x == 52+movement && y == 4)                         pixels = 16'h0000;
        else if (x == 51+movement && y == 5)                         pixels = 16'h0000;
        else if (x == 50+movement && y == 6)                         pixels = 16'h0000;
        
    //        // top left vertical
    //        [34,8 to 34,10][35,11 to 36,11][37,10][38,11][39,12][40,13][35,7]
    //        [36,6 to 38,6] [39,7 to 39,8]  [38,9] [39,10][40,11][41,12]
        else if ((x == 34+movement) && (y >= 8 && y <= 10))          pixels = 16'h0000;
        else if ((x == 39+movement) && (y >= 7 && y <= 8))           pixels = 16'h0000;
        else if ((x >= 35+movement && x <= 36+movement) && (y == 11))         pixels = 16'h0000;
        else if ((x >= 36+movement && x <= 38+movement) && (y == 6))          pixels = 16'h0000;
        else if (x == 37+movement && y == 10)                        pixels = 16'h0000;
        else if (x == 38+movement && y == 11)                        pixels = 16'h0000;
        else if (x == 39+movement && y == 12)                        pixels = 16'h0000;
        else if (x == 40+movement && y == 13)                        pixels = 16'h0000;
        else if (x == 35+movement && y == 7)                         pixels = 16'h0000;
        else if (x == 38+movement && y == 9)                         pixels = 16'h0000;
        else if (x == 39+movement && y == 10)                        pixels = 16'h0000;
        else if (x == 40+movement && y == 11)                        pixels = 16'h0000;
        else if (x == 41+movement && y == 12)                        pixels = 16'h0000;
        
    //        // top right vertical
    //        [61,8 to 61,10][59,11 to 60,11][58,10][57,11][56,12][55,13][60,7]
    //        [57,6 to 59,6] [56,7 to 56,8]  [57,9] [56,10][55,11][54,12]
        else if ((x == 61+movement ) && (y >= 8 && y <= 10))          pixels = 16'h0000;
        else if ((x == 56+movement ) && (y >= 7 && y <= 8))           pixels = 16'h0000;
        else if ((x >= 59+movement  && x <= 60+movement) && (y == 11))         pixels = 16'h0000;
        else if ((x >= 57+movement  && x <= 59+movement) && (y == 6))          pixels = 16'h0000;
        else if (x == 58 +movement && y == 10)                        pixels = 16'h0000;
        else if (x == 57 +movement && y == 11)                        pixels = 16'h0000;
        else if (x == 56 +movement && y == 12)                        pixels = 16'h0000;
        else if (x == 55 +movement && y == 13)                        pixels = 16'h0000;
        else if (x == 60 +movement && y == 7)                         pixels = 16'h0000;
        else if (x == 57 +movement && y == 9)                         pixels = 16'h0000;
        else if (x == 56 +movement && y == 10)                        pixels = 16'h0000;
        else if (x == 55 +movement && y == 11)                        pixels = 16'h0000;
        else if (x == 54 +movement && y == 12)                        pixels = 16'h0000;
        
    //        // left vertical
    //        [30,17 to 30,22]
    //        [31,16][32,15][33,16][34,17][34,18 to 39,18][37,15 to 37,17][38,13 to 38,14]
    //        [31,23][32,24][33,23][34,22][34,21 to 39,21][37,22 to 37,24][38,25 to 38,26]
        else if ((x == 30+movement ) && (y >= 17 && y <= 22))         pixels = 16'h0000;
        else if ((x == 37+movement ) && (y >= 15 && y <= 17))         pixels = 16'h0000;
        else if ((x == 37+movement ) && (y >= 22 && y <= 24))         pixels = 16'h0000;
        else if ((x == 38+movement ) && (y >= 13 && y <= 14))         pixels = 16'h0000;
        else if ((x == 38+movement ) && (y >= 25 && y <= 26))         pixels = 16'h0000;
        else if ((x >= 34+movement  && x <= 39+movement) && (y == 18))         pixels = 16'h0000;
        else if ((x >= 34+movement  && x <= 39+movement) && (y == 21))         pixels = 16'h0000;
        else if (x == 31 +movement && y == 16)                        pixels = 16'h0000;
        else if (x == 32 +movement && y == 15)                        pixels = 16'h0000;
        else if (x == 33 +movement && y == 16)                        pixels = 16'h0000;
        else if (x == 34 +movement && y == 17)                        pixels = 16'h0000;
        else if (x == 31 +movement && y == 23)                        pixels = 16'h0000;
        else if (x == 32 +movement && y == 24)                        pixels = 16'h0000;
        else if (x == 33 +movement && y == 23)                        pixels = 16'h0000;
        else if (x == 34 +movement && y == 22)                        pixels = 16'h0000;
        
    //        // right vertical
    //        [65,17 to 65,22]
    //        [64,16][63,15][62,16][61,17][56,18 to 61,18][58,15 to 58,17][57,13 to 57,14]
    //        [64,23][63,24][62,23][61,22][56,21 to 61,21][58,22 to 58,24][57,25 to 57,26]
        else if ((x == 65+movement ) && (y >= 17 && y <= 22))         pixels = 16'h0000;
        else if ((x == 58+movement ) && (y >= 15 && y <= 17))         pixels = 16'h0000;
        else if ((x == 58+movement ) && (y >= 22 && y <= 24))         pixels = 16'h0000;
        else if ((x == 57+movement ) && (y >= 13 && y <= 14))         pixels = 16'h0000;
        else if ((x == 57+movement ) && (y >= 25 && y <= 26))         pixels = 16'h0000;
        else if ((x >= 56+movement  && x <= 61+movement) && (y == 18))         pixels = 16'h0000;
        else if ((x >= 56+movement  && x <= 61+movement) && (y == 21))         pixels = 16'h0000;
        else if (x == 64 +movement && y == 16)                        pixels = 16'h0000;
        else if (x == 63 +movement && y == 15)                        pixels = 16'h0000;
        else if (x == 62 +movement && y == 16)                        pixels = 16'h0000;
        else if (x == 61 +movement && y == 7)                         pixels = 16'h0000;
        else if (x == 64 +movement && y == 23)                        pixels = 16'h0000;
        else if (x == 63 +movement && y == 24)                        pixels = 16'h0000;
        else if (x == 62 +movement && y == 23)                        pixels = 16'h0000;
        else if (x == 61 +movement && y == 22)                        pixels = 16'h0000;
        
    //        // bottom left vertical
    //        [34,29 to 34,31][35,28 to 36,28][37,29][38,28][39,27][40,26][35,32]
    //        [36,33 to 38,33][39,31 to 39,32][38,30][39,29][40,28][41,27]
        else if ((x == 34+movement ) && (y >= 29 && y <= 31))         pixels = 16'h0000;
        else if ((x == 39+movement ) && (y >= 31 && y <= 32))         pixels = 16'h0000;
        else if ((x >= 35+movement  && x <= 36+movement) && (y == 28))         pixels = 16'h0000;
        else if ((x >= 36+movement  && x <= 38+movement) && (y == 33))         pixels = 16'h0000;
        else if (x == 37 +movement && y == 29)                        pixels = 16'h0000;
        else if (x == 38 +movement && y == 28)                        pixels = 16'h0000;
        else if (x == 39 +movement && y == 27)                        pixels = 16'h0000;
        else if (x == 40 +movement && y == 26)                        pixels = 16'h0000;
        else if (x == 35 +movement && y == 32)                        pixels = 16'h0000;
        else if (x == 38 +movement && y == 30)                        pixels = 16'h0000;
        else if (x == 39 +movement && y == 29)                        pixels = 16'h0000;
        else if (x == 40 +movement && y == 28)                        pixels = 16'h0000;
        else if (x == 41 +movement && y == 27)                        pixels = 16'h0000;
        
    //        // bottom right vertical
    //        [61,29 to 61,31][59,28 to 60,28][58,29][57,28][56,27][55,26][60,32]
    //        [57,33 to 59,33][56,31 to 56,32][57,30][56,29][55,28][54,27]
        else if ((x == 61+movement ) && (y >= 29 && y <= 31))         pixels = 16'h0000;
        else if ((x == 56+movement ) && (y >= 31 && y <= 32))         pixels = 16'h0000;
        else if ((x >= 59+movement  && x <= 60+movement) && (y == 28))         pixels = 16'h0000;
        else if ((x >= 57+movement  && x <= 59+movement) && (y == 33))         pixels = 16'h0000;
        else if (x == 58 +movement && y == 29)                        pixels = 16'h0000;
        else if (x == 57 +movement && y == 28)                        pixels = 16'h0000;
        else if (x == 56 +movement && y == 27)                        pixels = 16'h0000;
        else if (x == 55 +movement && y == 26)                        pixels = 16'h0000;
        else if (x == 60 +movement && y == 32)                        pixels = 16'h0000;
        else if (x == 57 +movement && y == 30)                        pixels = 16'h0000;
        else if (x == 56 +movement && y == 29)                        pixels = 16'h0000;
        else if (x == 55 +movement && y == 28)                        pixels = 16'h0000;
        else if (x == 54 +movement && y == 27)                        pixels = 16'h0000;
        
    //        // bottom horizontal
    //        [45,37 to 50,37]
    //        [44,36][43,35][44,34][45,33][46,28 to 46,33][43,30 to 45,30][41,29 to 42,29]
    //        [51,36][52,35][51,34][50,33][49,28 to 49,33][50,30 to 52,30][53,29 to 54,29]
        else if ((x >= 45+movement  && x <= 50+movement) && (y == 37))         pixels = 16'h0000;
        else if ((x == 46+movement ) && (y >= 28 && y <= 33))         pixels = 16'h0000;
        else if ((x == 49+movement ) && (y >= 28 && y <= 33))         pixels = 16'h0000;
        else if ((x >= 43+movement  && x <= 45+movement) && (y == 30))         pixels = 16'h0000;
        else if ((x >= 50+movement  && x <= 52+movement) && (y == 30))         pixels = 16'h0000;
        else if ((x >= 41+movement  && x <= 42+movement) && (y == 29))         pixels = 16'h0000;
        else if ((x >= 53+movement  && x <= 54+movement) && (y == 29))         pixels = 16'h0000;
        else if (x == 44 +movement && y == 36)                        pixels = 16'h0000;
        else if (x == 43 +movement && y == 35)                        pixels = 16'h0000;
        else if (x == 44 +movement && y == 34)                        pixels = 16'h0000;
        else if (x == 45 +movement && y == 33)                        pixels = 16'h0000;
        else if (x == 51 +movement && y == 36)                        pixels = 16'h0000;
        else if (x == 52 +movement && y == 35)                        pixels = 16'h0000;
        else if (x == 51 +movement && y == 34)                        pixels = 16'h0000;
        else if (x == 50 +movement && y == 33)                        pixels = 16'h0000;
        
        
    //        // face
    //        [42,15][43,16][44,17][45,18]
    //        [53,15][52,16][51,17][50,18]
    //        [46,21 to 49,21]
    //        [44,22 to 45,22]
    //        [43,23 to 44,23]
    //        [43,24 to 43,25]
    //        [50,22 to 51,22]
    //        [51,23 to 52,23]
    //        [52,24 to 52,25]
        else if (x == 42+movement && y == 15)                        pixels = 16'h0000;
        else if (x == 43+movement && y == 16)                        pixels = 16'h0000;
        else if (x == 44+movement && y == 17)                        pixels = 16'h0000;
        else if (x == 45+movement && y == 18)                        pixels = 16'h0000;
        else if (x == 53+movement && y == 15)                        pixels = 16'h0000;
        else if (x == 52+movement && y == 16)                        pixels = 16'h0000;
        else if (x == 51+movement && y == 17)                        pixels = 16'h0000;
        else if (x == 50+movement && y == 18)                        pixels = 16'h0000;
        else if ((x >= 46+movement && x <= 49+movement) && (y == 21))         pixels = 16'h0000; 
        else if ((x >= 44+movement && x <= 45+movement) && (y == 22))         pixels = 16'h0000; 
        else if ((x >= 43+movement && x <= 44+movement) && (y == 23))         pixels = 16'h0000; 
        else if ((x >= 50+movement && x <= 51+movement) && (y == 22))         pixels = 16'h0000; 
        else if ((x >= 51+movement && x <= 52+movement) && (y == 23))         pixels = 16'h0000; 
        else if ((x == 43+movement) && (y >= 24 && y <= 25))         pixels = 16'h0000; 
        else if ((x == 52+movement) && (y >= 24 && y <= 25))         pixels = 16'h0000; 
    
        
        // body
        else if ((x >= 44+movement && x <= 51+movement) && (y >= 3 && y <= 5))    pixels = 16'h07E0;
        else if ((x >= 46+movement && x <= 49+movement) && (y >= 6 && y <= 33))   pixels = 16'h07E0;
        else if ((x >= 44+movement && x <= 51+movement) && (y >= 34 && y <= 36))  pixels = 16'h07E0;
        else if ((x >= 31+movement && x <= 33+movement) && (y >= 16 && y <= 23))  pixels = 16'h07E0;
        else if ((x >= 34+movement && x <= 61+movement) && (y >= 18 && y <= 21))  pixels = 16'h07E0;
        else if ((x >= 62+movement && x <= 64+movement) && (y >= 16 && y <= 23))  pixels = 16'h07E0;
        else if ((x >= 35+movement && x <= 38+movement) && (y >= 7 && y <= 10))   pixels = 16'h07E0;
        else if ((x >= 57+movement && x <= 60+movement) && (y >= 7 && y <= 10))   pixels = 16'h07E0;
        else if ((x >= 35+movement && x <= 38+movement) && (y >= 29 && y <= 32))  pixels = 16'h07E0;
        else if ((x >= 57+movement && x <= 60+movement) && (y >= 29 && y <= 32))  pixels = 16'h07E0;
        else if ((x >= 39+movement && x <= 56+movement) && (y >= 11 && y <= 28))  pixels = 16'h07E0;
        else if ((x >= 38+movement && x <= 57+movement) && (y >= 15 && y <= 24))  pixels = 16'h07E0;
        else if ((x >= 43+movement && x <= 52+movement) && (y >= 10 && y <= 29))  pixels = 16'h07E0;
    
        else pixels = 16'hFFFF;
        
        // combat icon (sword / shield)
        if (atk) begin
                 if ((x >= 12 && x <= 13) && (y >= 1 && y <= 2)) pixels = 16'hF800;
            else if ((x >= 11 && x <= 12) && (y >= 2 && y <= 3)) pixels = 16'hF800;
            else if ((x >= 10 && x <= 11) && (y >= 3 && y <= 4)) pixels = 16'hF800;
            else if ((x >= 9 && x <= 10) && (y >= 4 && y <= 5))  pixels = 16'hF800;
            else if ((x >= 8 && x <= 9) && (y >= 5 && y <= 6))   pixels = 16'hF800;
            else if ((x >= 7 && x <= 8) && (y >= 6 && y <= 7))   pixels = 16'hF800;
            else if ((x >= 6 && x <= 7) && (y >= 7 && y <= 8))   pixels = 16'hF800;
            else if ((x >= 3 && x <= 4) && (y >= 10 && y <= 11)) pixels = 16'hF800;
            else if ((x >= 1 && x <= 2) && (y >= 12 && y <= 13)) pixels = 16'hF800;
            else if ((x >= 5 && x <= 6) && (y == 8))             pixels = 16'hF800;
            else if ((x >= 4 && x <= 5) && (y == 10))            pixels = 16'hF800;
            else if ((x >= 2 && x <= 3) && (y == 7))             pixels = 16'hF800;
            else if ((x >= 6 && x <= 7) && (y == 11))            pixels = 16'hF800;
            else if ((x >= 7 && x <= 8) && (y == 12))            pixels = 16'hF800;
            else if ((x >= 1 && x <= 2) && (y == 6))             pixels = 16'hF800;
            else if ((x == 6) && (y >= 8 && y <= 9))             pixels = 16'hF800;
            else if ((x == 4) && (y >= 9 && y <= 10))            pixels = 16'hF800;
            else if ((x == 2) && (y >= 6 && y <= 7))             pixels = 16'hF800;
            else if ((x == 3) && (y >= 7 && y <= 8))             pixels = 16'hF800;
            else if ((x == 7) && (y >= 11 && y <= 12))           pixels = 16'hF800;
            else if ((x == 8) && (y >= 12 && y <= 13))           pixels = 16'hF800;
        end else if (def) begin
                 if ((x == 2) && (y >= 3 && y <= 9))             pixels = 16'h001F;
            else if ((x == 7) && (y >= 2 && y <= 12))            pixels = 16'h001F;
            else if ((x == 12) && (y >= 3 && y <= 9))            pixels = 16'h001F;
            else if ((x >= 4 && x <= 10) && (y == 1))            pixels = 16'h001F;
            else if ((x >= 2 && x <= 12) && (y == 6))            pixels = 16'h001F;
            else if ((x >= 6 && x <= 8) && (y == 13))            pixels = 16'h001F;
            else if (x == 3 && y == 2)                           pixels = 16'h001F;
            else if (x == 11 && y == 2)                          pixels = 16'h001F;
            else if (x == 3 && y == 10)                          pixels = 16'h001F;
            else if (x == 4 && y == 11)                          pixels = 16'h001F;
            else if (x == 5 && y == 12)                          pixels = 16'h001F;
            else if (x == 9 && y == 12)                          pixels = 16'h001F;
            else if (x == 10 && y == 11)                         pixels = 16'h001F;
            else if (x == 11 && y == 10)                         pixels = 16'h001F;
            else if ((x >= 3 && x <= 11) && (y >= 2 && y <= 10)) pixels = 16'h7DFF;
            else if ((x >= 5 && x <= 9) && (y >= 11 && y <= 12)) pixels = 16'h7DFF;
        end
        
//        if (!player_hp) pixels = 16'h07FF;
//        if (!monster_hp) pixels = 16'hFBDE;
    
    end

endmodule
