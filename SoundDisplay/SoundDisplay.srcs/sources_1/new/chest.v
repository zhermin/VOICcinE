`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2020 17:44:56
// Design Name: 
// Module Name: chest
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


module chest(
    input [6:0] x,
    input [5:0] y,
    input [3:0] rand_num,
    output reg [15:0] pixels
    );
    
    reg first_digit;
    reg [6:0] second_digit;
    reg third_digit;
    reg [6:0] fourth_digit;
    
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
        if ((x >= 43    && x < 43+10) && (y >= 51-36 && y < 51+3-36)) pixels = 16'h0000;
        
        else if ((x >= 31 && x <= 36) && (y >= 42-36 && y <= 44-36)) pixels = (!second_digit[0]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 37 && x <= 39) && (y >= 45-36 && y <= 50-36)) pixels = (!second_digit[1]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 37 && x <= 39) && (y >= 54-36 && y <= 59-36)) pixels = (!second_digit[2]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 31 && x <= 36) && (y >= 60-36 && y <= 62-36)) pixels = (!second_digit[3]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 28 && x <= 30) && (y >= 54-36 && y <= 59-36)) pixels = (!second_digit[4]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 28 && x <= 30) && (y >= 45-36 && y <= 50-36)) pixels = (!second_digit[5]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 31 && x <= 36) && (y >= 51-36 && y <= 53-36)) pixels = (!second_digit[6]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        
        else if ((x >= 22 && x <= 24) && (y >= 45-36 && y <= 50-36)) pixels = (first_digit) ? 16'h0000 : 16'hFFFF; // pixels =  16'h0000;
        else if ((x >= 22 && x <= 24) && (y >= 54-36 && y <= 59-36)) pixels = (first_digit) ? 16'h0000 : 16'hFFFF;
        
        else if ((x >= 31+34 && x <= 36+34) && (y >= 42-36 && y <= 44-36)) pixels = (!fourth_digit[0]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 37+34 && x <= 39+34) && (y >= 45-36 && y <= 50-36)) pixels = (!fourth_digit[1]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 37+34 && x <= 39+34) && (y >= 54-36 && y <= 59-36)) pixels = (!fourth_digit[2]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 31+34 && x <= 36+34) && (y >= 60-36 && y <= 62-36)) pixels = (!fourth_digit[3]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 28+34 && x <= 30+34) && (y >= 54-36 && y <= 59-36)) pixels = (!fourth_digit[4]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 28+34 && x <= 30+34) && (y >= 45-36 && y <= 50-36)) pixels = (!fourth_digit[5]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 31+34 && x <= 36+34) && (y >= 51-36 && y <= 53-36)) pixels = (!fourth_digit[6]) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        
        else if ((x >= 56 && x <= 58) && (y >= 45-36 && y <= 50-36)) pixels = (third_digit) ? 16'h0000 : 16'hFFFF; // pixels = 16'h0000;
        else if ((x >= 56 && x <= 58) && (y >= 54-36 && y <= 59-36)) pixels = (third_digit) ? 16'h0000 : 16'hFFFF;


        else if ((x >= 32 && x <= 33) && (y >= 36 && y <= 48)) pixels = 16'hFFE0;
        else if ((x >= 32 && x <= 63) && (y >= 47 && y <= 48)) pixels = 16'hFFE0;
        else if ((x >= 62 && x <= 63) && (y >= 36 && y <= 48)) pixels = 16'hFFE0;
        else if ((x >= 47 && x <= 48) && (y >= 45 && y <= 52)) pixels = 16'hFFE0;
        else if ((x >= 32 && x <= 33) && (y >= 51 && y <= 56)) pixels = 16'hFFE0;
        else if ((x >= 32 && x <= 37) && (y >= 55 && y <= 56)) pixels = 16'hFFE0;
        else if ((x >= 62 && x <= 63) && (y >= 51 && y <= 56)) pixels = 16'hFFE0;
        else if ((x >= 58 && x <= 63) && (y >= 55 && y <= 56)) pixels = 16'hFFE0;
        
        else if ((x >= 36 && x <= 59) && (y >= 36 && y <= 44)) pixels = 16'hCAA0;
        else if ((x >= 36 && x <= 46) && (y >= 51 && y <= 52)) pixels = 16'hCAA0;
        else if ((x >= 49 && x <= 59) && (y >= 51 && y <= 52)) pixels = 16'hCAA0;
        else if ((x >= 38 && x <= 57) && (y >= 55 && y <= 56)) pixels = 16'hCAA0;
                
        else if ((x >= 30 && x <= 65) && (y >= 34 && y <= 58)) pixels = 16'h6940;
    
        else pixels = 16'hFFFF;
    end

endmodule
