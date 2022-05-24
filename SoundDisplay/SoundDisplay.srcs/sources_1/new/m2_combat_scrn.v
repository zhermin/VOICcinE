`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 15:54:30
// Design Name: 
// Module Name: m2_combat_scrn
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


module m2_combat_scrn(
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
        
        case (rand_num+2)
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
//       else if (x >= 90 && y == 7 ) pixels = (monster == 3)                 ? 16'h0000 : (monster_hp[0]) ? 16'hF800 : 16'h52AA;
       else if (x >= 90 && y == 15) pixels = 16'h0000;
//       else if (x >= 90 && y == 23) pixels = (monster == 0 || monster == 3) ? 16'h0000 : (monster_hp[2]) ? 16'hF800 : 16'h52AA;
       else if (x >= 90 && y == 31) pixels = 16'h0000;
//       else if (x >= 90 && y == 39) pixels = (monster == 3)                 ? 16'h0000 : (monster_hp[4]) ? 16'hF800 : 16'h52AA;
    
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
                                                                                 
        //dark green                                                             
        else if ((x >= 35+movement && x <= 36+movement) && (y >= 17 && y <= 20)) pixels = 16'h3310;
        else if ((x >= 40+movement && x <= 43+movement) && (y >= 12 && y <= 15)) pixels = 16'h3310;
        else if ((x >= 46+movement && x <= 49+movement) && (y >= 20 && y <= 23)) pixels = 16'h3310;
        else if ((x >= 52+movement && x <= 55+movement) && (y >= 12 && y <= 15)) pixels = 16'h3310;
        else if ((x >= 59+movement && x <= 62+movement) && (y >= 17 && y <= 20)) pixels = 16'h3310;
                                                                                 
        //dark blue                                                              
        else if ((x >= 35+movement && x <= 62+movement) && (y >= 13 && y <= 23)) pixels = 16'h0460;
        else if ((x >= 37+movement && x <= 60+movement) && (y >= 11 && y <= 25)) pixels = 16'h0460;
                                                                                 
        //light blue                                                             
        else if ((x >= 31+movement && x <= 66+movement) && (y >= 11 && y <= 25)) pixels = 16'h07E0;
        else if ((x >= 32+movement && x <= 65+movement) && (y >= 9 && y <= 27))  pixels = 16'h07E0;
        else if ((x >= 33+movement && x <= 64+movement) && (y >= 7 && y <= 29))  pixels = 16'h07E0;
        else if ((x >= 22+movement && x <= 75+movement) && (y >= 14 && y <= 15)) pixels = 16'h07E0;
        else if ((x >= 22+movement && x <= 75+movement) && (y >= 20 && y <= 22)) pixels = 16'h07E0;
        
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
