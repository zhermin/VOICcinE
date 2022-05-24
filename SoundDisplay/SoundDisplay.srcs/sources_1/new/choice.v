`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 03:46:38
// Design Name: 
// Module Name: choice
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


module choice(
    input [6:0] x,                
    input [5:0] y,
    input clk_animation,
    output reg [15:0] pixels
    );
    
    reg [1:0] movement;                                                                                 
    always @ (posedge clk_animation) movement <= ~movement; // toggles between 0 and 1 to shift x-coords
    
    always @ (*) begin    
        //         Choice screen
        //         Pavement outline brown:
             if ((x >= 21 && x <= 22) && (y >= 60 && y <= 63))     pixels = 16'h0000;
        else if ((x >= 22 && x <= 23) && (y >= 56 && y <= 60))     pixels = 16'h0000;
        else if ((x >= 23 && x <= 24) && (y >= 52 && y <= 56))     pixels = 16'h0000;
        else if ((x >= 24 && x <= 25) && (y >= 48 && y <= 52))     pixels = 16'h0000;
        else if ((x >= 25 && x <= 26) && (y >= 44 && y <= 48))     pixels = 16'h0000;
        else if ((x >= 26 && x <= 27) && (y >= 40 && y <= 44))     pixels = 16'h0000;
        else if ((x >= 27 && x <= 28) && (y >= 36 && y <= 40))     pixels = 16'h0000;
        else if ((x >= 28 && x <= 29) && (y >= 32 && y <= 35))     pixels = 16'h0000;
        else if ((x >= 29 && x <= 30) && (y >= 28 && y <= 32))     pixels = 16'h0000;
        else if ((x >= 30 && x <= 31) && (y >= 24 && y <= 28))     pixels = 16'h0000;
        else if ((x >= 31 && x <= 32) && (y >= 20 && y <= 24))     pixels = 16'h0000;
        else if ((x >= 32 && x <= 33) && (y >= 16 && y <= 20))     pixels = 16'h0000;
        else if ((x >= 33 && x <= 34) && (y >= 14 && y <= 16))     pixels = 16'h0000;
        
        else if ((x >= 73 && x <= 74) && (y >= 60 && y <= 63))     pixels = 16'h0000;
        else if ((x >= 72 && x <= 73) && (y >= 56 && y <= 60))     pixels = 16'h0000;
        else if ((x >= 71 && x <= 72) && (y >= 52 && y <= 56))     pixels = 16'h0000;
        else if ((x >= 70 && x <= 71) && (y >= 48 && y <= 52))     pixels = 16'h0000;
        else if ((x >= 69 && x <= 70) && (y >= 44 && y <= 48))     pixels = 16'h0000;
        else if ((x >= 68 && x <= 69) && (y >= 40 && y <= 44))     pixels = 16'h0000;
        else if ((x >= 67 && x <= 68) && (y >= 36 && y <= 40))     pixels = 16'h0000;
        else if ((x >= 66 && x <= 67) && (y >= 32 && y <= 36))     pixels = 16'h0000;
        else if ((x >= 65 && x <= 66) && (y >= 28 && y <= 32))     pixels = 16'h0000;
        else if ((x >= 64 && x <= 65) && (y >= 24 && y <= 28))     pixels = 16'h0000;
        else if ((x >= 63 && x <= 64) && (y >= 20 && y <= 24))     pixels = 16'h0000;
        else if ((x >= 62 && x <= 63) && (y >= 16 && y <= 20))     pixels = 16'h0000;
        else if ((x >= 61 && x <= 62) && (y >= 14 && y <= 16))     pixels = 16'h0000;
        
        //         Road white:
        //         H lines:
        //         [4,6 to 11,6][18,6 to 25,6][32,6 to 39,6][55,6 to 63,6][70,6 to 77,6][84,6 to 91,6]
        
        else if ((x >= 4 && x <= 11) && (y == 6))                  pixels = 16'hFFFF;
        else if ((x >= 18 && x <= 25) && (y == 6))                 pixels = 16'hFFFF;
        else if ((x >= 32 && x <= 39) && (y == 6))                 pixels = 16'hFFFF;
        else if ((x >= 55 && x <= 63) && (y == 6))                 pixels = 16'hFFFF;
        else if ((x >= 70 && x <= 77) && (y == 6))                 pixels = 16'hFFFF;
        else if ((x >= 84 && x <= 91) && (y == 6))                 pixels = 16'hFFFF;
        
        //         V lines:
        //         [47,11 to 47,18][47,25 to 47,32]
        
        else if ((x == 47) && (y >= 11 && y <= 18))                pixels = 16'hFFFF;
        else if ((x == 47) && (y >= 25 && y <= 32))                pixels = 16'hFFFF;
        
        //         Left arrow:
        else if ((x >= 4+3-movement && x <= 21+3-movement) && (y >= 29 && y <= 34))      pixels = 16'h0000;
        else if ((x >= 6+3-movement && x <= 7+3-movement) && (y >= 27 && y <= 36))       pixels = 16'h0000;
        else if ((x >= 8+3-movement && x <= 9+3-movement) && (y >= 25 && y <= 38))       pixels = 16'h0000;
        else if ((x >= 2+3-movement && x <= 3+3-movement) && (y >= 31 && y <= 32))       pixels = 16'h0000;
        
        //         Right arrow:
        else if ((x >= 74-3+movement && x <= 91-3+movement) && (y >= 29 && y <= 34))     pixels = 16'h0000;
        else if ((x >= 86-3+movement && x <= 87-3+movement) && (y >= 25 && y <= 38))     pixels = 16'h0000;
        else if ((x >= 88-3+movement && x <= 89-3+movement) && (y >= 27 && y <= 36))     pixels = 16'h0000;
        else if ((x >= 92-3+movement && x <= 93-3+movement) && (y >= 31 && y <= 32))     pixels = 16'h0000;
        
        //         Doctor black outline:
        //         Blocks:
        else if ((x >= 29 && x <= 30) && (y >= 46 && y <= 63))     pixels = 16'h0000;
        else if ((x >= 31 && x <= 32) && (y >= 42 && y <= 47))     pixels = 16'h0000;
        else if ((x >= 29 && x <= 32) && (y >= 46 && y <= 47))     pixels = 16'h0000;
        else if ((x >= 29 && x <= 32) && (y >= 53 && y <= 54))     pixels = 16'h0000;
        else if ((x >= 33 && x <= 34) && (y >= 39 && y <= 41))     pixels = 16'h0000;
        else if ((x >= 35 && x <= 36) && (y >= 37 && y <= 38))     pixels = 16'h0000;
        else if ((x >= 37 && x <= 59) && (y >= 35 && y <= 36))     pixels = 16'h0000;
        else if ((x >= 33 && x <= 63) && (y >= 44 && y <= 45))     pixels = 16'h0000;
        else if ((x >= 60 && x <= 61) && (y >= 37 && y <= 38))     pixels = 16'h0000;
        else if ((x >= 62 && x <= 63) && (y >= 39 && y <= 41))     pixels = 16'h0000;
        else if ((x >= 64 && x <= 65) && (y >= 42 && y <= 47))     pixels = 16'h0000;
        else if ((x >= 66 && x <= 67) && (y >= 46 && y <= 63))     pixels = 16'h0000;
        else if ((x >= 64 && x <= 67) && (y >= 53 && y <= 54))     pixels = 16'h0000;
        else if ((x >= 33 && x <= 34) && (y >= 55 && y <= 59))     pixels = 16'h0000;
        else if ((x >= 35 && x <= 38) && (y >= 60 && y <= 61))     pixels = 16'h0000;
        else if ((x >= 39 && x <= 40) && (y >= 62 && y <= 63))     pixels = 16'h0000;
        else if ((x >= 62 && x <= 63) && (y >= 55 && y <= 59))     pixels = 16'h0000;
        else if ((x >= 58 && x <= 61) && (y >= 60 && y <= 61))     pixels = 16'h0000;
        else if ((x >= 56 && x <= 57) && (y >= 62 && y <= 63))     pixels = 16'h0000;
        
        //         Mask blue:
        //         [41,57 to 55,63][39,60 to 57,61][43,55 to 53,56]
        else if ((x >= 41 && x <= 55) && (y >= 57 && y <= 63))     pixels = 16'h5E7C;
        else if ((x >= 39 && x <= 57) && (y >= 60 && y <= 61))     pixels = 16'h5E7C;
        else if ((x >= 43 && x <= 53) && (y >= 55 && y <= 56))     pixels = 16'h5E7C;                    
             
        //         Brown eyes:
        //         blocks:
        //         [41,51 to 42,52][54,51 to 55,52] 
        else if ((x >= 41 && x <= 42) && (y >= 51 && y <= 52))     pixels = 16'h61C6;
        else if ((x >= 54 && x <= 55) && (y >= 51 && y <= 52 ))    pixels = 16'h61C6;
                 
        //         Mask gray string:
        //         [31,48 to 32,50][33,51 to 34,52][35,53 to 36,54][37,55 to 38,56][39,57 to 40,59][64,48 to 65,50][62,51 to 63,52][60,53 to 61,54][58,55 to 59,56][56,57 to 57,59]
        else if ((x >= 31 && x <= 32) && (y >= 48 && y <= 50))     pixels = 16'h0000;
        else if ((x >= 33 && x <= 34) && (y >= 51 && y <= 52))     pixels = 16'h0000;
        else if ((x >= 35 && x <= 36) && (y >= 53 && y <= 54))     pixels = 16'h0000;
        else if ((x >= 37 && x <= 38) && (y >= 55 && y <= 56))     pixels = 16'h0000;
        else if ((x >= 39 && x <= 40) && (y >= 57 && y <= 59))     pixels = 16'h0000;
        else if ((x >= 64 && x <= 65) && (y >= 48 && y <= 50))     pixels = 16'h0000;
        else if ((x >= 62 && x <= 63) && (y >= 51 && y <= 52))     pixels = 16'h0000;
        else if ((x >= 60 && x <= 61) && (y >= 53 && y <= 54))     pixels = 16'h0000;
        else if ((x >= 58 && x <= 59) && (y >= 55 && y <= 56))     pixels = 16'h0000;
        else if ((x >= 56 && x <= 57) && (y >= 57 && y <= 59))     pixels = 16'h0000;
         
                 
        //         Hat blue:
        //         [35,39 to 61,43][33,42 to 63,43][37,37 to 59,38]  
        else if ((x >= 35 && x <= 61) && (y >= 39 && y <= 43))     pixels = 16'h5E7C;
        else if ((x >= 33 && x <= 63) && (y >= 42 && y <= 43))     pixels = 16'h5E7C;
        else if ((x >= 37 && x <= 59) && (y >= 37 && y <= 38))     pixels = 16'h5E7C;
        
        //         Brown hair:
        //         Blocks
        //         [33,46 to 40,47][56,46 to 63,47][31,55 to 32,63][33,60 to 34,63][35,62 to 38,63][64,55 to 65,63][62,60 to 63,63][58,62 to 61,63]
        else if ((x >= 33 && x <= 40) && (y >= 46 && y <= 47))     pixels = 16'h61C6;
        else if ((x >= 56 && x <= 63) && (y >= 46 && y <= 47))     pixels = 16'h61C6;
        else if ((x >= 31 && x <= 32) && (y >= 55 && y <= 63))     pixels = 16'h61C6;
        else if ((x >= 33 && x <= 34) && (y >= 60 && y <= 63))     pixels = 16'h61C6;
        else if ((x >= 35 && x <= 38) && (y >= 62 && y <= 63))     pixels = 16'h61C6;
        else if ((x >= 64 && x <= 65) && (y >= 55 && y <= 63))     pixels = 16'h61C6;
        else if ((x >= 62 && x <= 63) && (y >= 60 && y <= 63))     pixels = 16'h61C6;
        else if ((x >= 58 && x <= 61) && (y >= 62 && y <= 63))     pixels = 16'h61C6;

        
        //         Beige skin:
        //         blocks
        //         [31,46 to 65,59]
        else if ((x >= 31 && x <= 65) && (y >= 46 && y <= 59))     pixels = 16'hFFFF;
         
        //         Pavement beige:
        else if ((x >= 0 && x <= 20) && (y >= 14 && y <= 63))      pixels = 16'hEE13;
        else if ((x >= 21 && x <= 23) && (y >= 14 && y <= 59))     pixels = 16'hEE13;
        else if ((x >= 24 && x <= 26) && (y >= 14 && y <= 47))     pixels = 16'hEE13;
        else if ((x >= 27 && x <= 28) && (y >= 14 && y <= 35))     pixels = 16'hEE13;
        else if ((x >= 29 && x <= 31) && (y >= 14 && y <= 27))     pixels = 16'hEE13;
        else if ((x >= 32 && x <= 32) && (y >= 14 && y <= 15))     pixels = 16'hEE13;
        
        else if ((x >= 75 && x <= 95) && (y >= 14 && y <= 63))     pixels = 16'hEE13;
        else if ((x >= 72 && x <= 74) && (y >= 14 && y <= 59))     pixels = 16'hEE13;
        else if ((x >= 69 && x <= 71) && (y >= 14 && y <= 47))     pixels = 16'hEE13;
        else if ((x >= 66 && x <= 68) && (y >= 14 && y <= 35))     pixels = 16'hEE13;
        else if ((x >= 63 && x <= 65) && (y >= 14 && y <= 23))     pixels = 16'hEE13;
             
        else pixels = 16'h4208;
    end

endmodule
