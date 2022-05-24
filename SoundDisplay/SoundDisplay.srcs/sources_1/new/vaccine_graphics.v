`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 03:57:56
// Design Name: 
// Module Name: vaccine_graphics
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


module vaccine_graphics(
    input [6:0] x,
    input [5:0] y,
    input clk_oled,
    output reg [15:0] pixels
    );
    
    reg [19:0] animation_count;
    reg [2:0] color_changer;
    reg [15:0] border_color;
    
    always @ (posedge clk_oled) begin
        animation_count <= animation_count + 1;
        
    end
    
    always @ (posedge clk_oled) begin
        if (!animation_count) color_changer <= color_changer + 1;
        case (color_changer)
            0: border_color <= 16'hEE13;
            1: border_color <= 16'hFFE0;
            2: border_color <= 16'hCAA0;
            3: border_color <= 16'hFD00;
            4: border_color <= 16'h001F;  
            5: color_changer <= 0;
            default: border_color <= 16'hF800;
        endcase
    end
    
    always @ (*) begin
//        Vaccine screen
        
//        Black outline
             if ((x >= 41 && x <= 42) && (y >= 19 && y <= 48)) pixels = 16'h0000;
        else if ((x >= 53 && x <= 54) && (y >= 19 && y <= 48)) pixels = 16'h0000;
        else if ((x >= 47 && x <= 48) && (y >= 8 && y <= 14))  pixels = 16'h0000;
        else if ((x >= 43 && x <= 44) && (y >= 51 && y <= 57)) pixels = 16'h0000;
        else if ((x >= 51 && x <= 52) && (y >= 51 && y <= 57)) pixels = 16'h0000;
        else if ((x >= 45 && x <= 50) && (y >= 15 && y <= 16)) pixels = 16'h0000;
        else if ((x >= 43 && x <= 52) && (y >= 17 && y <= 18)) pixels = 16'h0000;
        else if ((x >= 41 && x <= 54) && (y >= 19 && y <= 20)) pixels = 16'h0000;
        else if ((x >= 49 && x <= 54) && (y >= 25 && y <= 26)) pixels = 16'h0000;
        else if ((x >= 51 && x <= 54) && (y >= 28 && y <= 29)) pixels = 16'h0000;
        else if ((x >= 49 && x <= 54) && (y >= 32 && y <= 33)) pixels = 16'h0000;
        else if ((x >= 51 && x <= 54) && (y >= 36 && y <= 37)) pixels = 16'h0000;
        else if ((x >= 49 && x <= 54) && (y >= 39 && y <= 40)) pixels = 16'h0000;
        else if ((x >= 41 && x <= 54) && (y >= 43 && y <= 44)) pixels = 16'h0000;
        else if ((x >= 37 && x <= 58) && (y >= 49 && y <= 50)) pixels = 16'h0000;
        else if ((x >= 41 && x <= 54) && (y >= 56 && y <= 57)) pixels = 16'h0000;
        
//        Blue blocks
        else if ((x >= 43 && x <= 52) && (y >= 21 && y <= 42)) pixels = 16'h5E7C;
        
//        White blocks
        else if ((x >= 43 && x <= 52) && (y >= 45 && y <= 48)) pixels = 16'hFFFF;
        else if ((x >= 45 && x <= 50) && (y >= 51 && y <= 55 )) pixels = 16'hFFFF;
        
//        Yellow background
        else if ((x >= 10 && x <= 85) && (y >= 10 && y <= 53)) pixels = 16'hEE13;
        
//        Beige
        else if ((x >= 8 && x <= 87) && (y >= 8 && y <= 55)) pixels = border_color;
        
//        Light brown
        else if ((x >= 6 && x <= 89) && (y >= 6 && y <= 57)) pixels = border_color;
        
//        Orange
        else if ((x >= 4 && x <= 91) && (y >= 4 && y <= 59)) pixels = border_color;
        
//        Red
        else if ((x >= 2 && x <= 93) && (y >= 2 && y <= 61)) pixels = border_color;
        
//        Purple
        else if ((x >= 0 && x <= 95) && (y >= 0 && y <= 63)) pixels = border_color;
        else pixels = 16'h0000;
    end

endmodule
