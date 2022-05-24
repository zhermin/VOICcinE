`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2020 18:28:19
// Design Name: 
// Module Name: gameover
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


module gameover(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x <= 1 || y <= 1 || x >= 94 || y >= 62)              pixels = 16'hF800;
//        Game over screen:
        else if ((x >= 13 && x <= 17) && (y >= 4 && y <= 28))         pixels = 16'hFFE0;
        else if ((x >= 23 && x <= 27) && (y >= 14 && y <= 28))        pixels = 16'hFFE0;
        else if ((x >= 13 && x <= 27) && (y >= 4 && y <= 8))          pixels = 16'hFFE0;
        else if ((x >= 13 && x <= 27) && (y >= 24 && y <= 28))        pixels = 16'hFFE0;
        else if ((x >= 21 && x <= 27) && (y >= 14 && y <= 18))        pixels = 16'hFFE0;
        else if ((x >= 31 && x <= 35) && (y >= 4 && y <= 28))         pixels = 16'hFFE0;
        else if ((x >= 41 && x <= 45) && (y >= 4 && y <= 28))         pixels = 16'hFFE0;
        else if ((x >= 31 && x <= 45) && (y >= 4 && y <= 8))          pixels = 16'hFFE0;
        else if ((x >= 31 && x <= 45) && (y >= 14 && y <= 18))        pixels = 16'hFFE0;
        else if ((x >= 49 && x <= 53) && (y >= 4 && y <= 28))         pixels = 16'hFFE0;
        else if ((x >= 57 && x <= 58) && (y >= 4 && y <= 19))         pixels = 16'hFFE0;
        else if ((x >= 62 && x <= 63) && (y >= 4 && y <= 28))         pixels = 16'hFFE0;
        else if ((x >= 49 && x <= 63) && (y >= 4 && y <= 8))          pixels = 16'hFFE0;
        else if ((x >= 67 && x <= 71) && (y >= 4 && y <= 28))         pixels = 16'hFFE0;
        else if ((x >= 67 && x <= 81) && (y >= 4 && y <= 8))          pixels = 16'hFFE0;
        else if ((x >= 67 && x <= 76) && (y >= 15 && y <= 19))        pixels = 16'hFFE0;
        else if ((x >= 67 && x <= 81) && (y >= 24 && y <= 28))        pixels = 16'hFFE0;
        else if ((x >= 13 && x <= 17) && (y >= 35 && y <= 59))        pixels = 16'hFFE0;
        else if ((x >= 23 && x <= 27) && (y >= 35 && y <= 59))        pixels = 16'hFFE0;
        else if ((x >= 13 && x <= 27) && (y >= 35 && y <= 39))        pixels = 16'hFFE0;
        else if ((x >= 13 && x <= 27) && (y >= 55 && y <= 59))        pixels = 16'hFFE0;
        else if ((x >= 31 && x <= 35) && (y >= 35 && y <= 54))        pixels = 16'hFFE0;
        else if ((x >= 41 && x <= 45) && (y >= 35 && y <= 54))        pixels = 16'hFFE0;
        else if ((x >= 36 && x <= 40) && (y >= 55 && y <= 59))        pixels = 16'hFFE0;
        else if ((x >= 49 && x <= 53) && (y >= 35 && y <= 59))        pixels = 16'hFFE0;
        else if ((x >= 49 && x <= 63) && (y >= 35 && y <= 39))        pixels = 16'hFFE0;
        else if ((x >= 49 && x <= 58) && (y >= 46 && y <= 50))        pixels = 16'hFFE0;
        else if ((x >= 49 && x <= 63) && (y >= 55 && y <= 59))        pixels = 16'hFFE0;
        else if ((x >= 67 && x <= 71) && (y >= 35 && y <= 59))        pixels = 16'hFFE0;
        else if ((x >= 77 && x <= 81) && (y >= 35 && y <= 49))        pixels = 16'hFFE0;
        else if ((x >= 77 && x <= 81) && (y >= 55 && y <= 59))        pixels = 16'hFFE0;
        else if ((x >= 67 && x <= 81) && (y >= 35 && y <= 39))        pixels = 16'hFFE0;
        else if ((x >= 67 && x <= 76) && (y >= 50 && y <= 54))        pixels = 16'hFFE0;
    
        else pixels = 16'h0000;
    end

endmodule
