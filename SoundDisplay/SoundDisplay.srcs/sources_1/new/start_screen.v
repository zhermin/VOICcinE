`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2020 17:23:42
// Design Name: 
// Module Name: start_screen
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


module start_screen(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
    
    //    Main screen           
                                                   
        //    Border:                                              
             if ((x >= 0 && x <= 1) && (y >= 0 && y <= 63))    pixels = 16'hB81F;
        else if ((x >= 94 && x <= 95) && (y >= 0 && y <= 63))  pixels = 16'hB81F;
        else if ((x >= 0 && x <= 95) && (y >= 0 && y <= 1))    pixels = 16'hB81F;
        else if ((x >= 0 && x <= 95) && (y >= 62 && y <= 63))  pixels = 16'hB81F;
        
        
        //    VOICCINE  black outline
        else if ((x == 8) && (y >= 4 && y <= 14))              pixels = 16'h0000;
        else if ((x == 11) && (y >= 4 && y <= 12))             pixels = 16'h0000;
        else if ((x == 13) && (y >= 4 && y <= 12))             pixels = 16'h0000;
        else if ((x == 16) && (y >= 4 && y <= 14))             pixels = 16'h0000;
        else if ((x >= 8 && x <= 11) && (y == 4))              pixels = 16'h0000;
        else if ((x >= 13 && x <= 16) && (y == 4))             pixels = 16'h0000;
        else if ((x >= 11 && x <= 13) && (y == 17))            pixels = 16'h0000;
        else if (x == 12 && y == 13)                           pixels = 16'h0000;
        else if (x == 9 && y == 15)                            pixels = 16'h0000;
        else if (x == 10 && y == 16)                           pixels = 16'h0000;
        else if (x == 15 && y == 15)                           pixels = 16'h0000;
        else if (x == 14 && y == 16)                           pixels = 16'h0000;

        else if ((x == 18) && (y >= 4 && y <= 17))             pixels = 16'h0000;
        else if ((x == 26) && (y >= 4 && y <= 17))             pixels = 16'h0000;
        else if ((x == 21) && (y >= 7 && y <= 13))             pixels = 16'h0000;
        else if ((x == 23) && (y >= 7 && y <= 13))             pixels = 16'h0000;
        else if ((x >= 18 && x <= 26) && (y == 4))             pixels = 16'h0000;
        else if ((x >= 18 && x <= 26) && (y == 17))            pixels = 16'h0000;
        else if ((x >= 21 && x <= 23) && (y == 7))             pixels = 16'h0000;
        else if ((x >= 21 && x <= 23) && (y == 14))            pixels = 16'h0000;
        
        else if ((x == 28) && (y >= 4 && y <= 7))              pixels = 16'h0000;
        else if ((x == 30) && (y >= 7 && y <= 14))             pixels = 16'h0000;
        else if ((x == 28) && (y >= 14 && y <= 17))            pixels = 16'h0000;
        else if ((x == 36) && (y >= 4 && y <= 7))              pixels = 16'h0000;
        else if ((x == 34) && (y >= 7 && y <= 14))             pixels = 16'h0000;
        else if ((x == 36) && (y >= 14 && y <= 17))            pixels = 16'h0000;
        else if ((x >= 28 && x <= 36) && (y == 4))             pixels = 16'h0000;
        else if ((x >= 28 && x <= 30) && (y == 7))             pixels = 16'h0000;
        else if ((x >= 28 && x <= 30) && (y == 14))            pixels = 16'h0000;
        else if ((x >= 28 && x <= 36) && (y == 17))            pixels = 16'h0000;
        else if ((x >= 34 && x <= 36) && (y == 7))             pixels = 16'h0000;
        else if ((x >= 34 && x <= 36) && (y == 14))            pixels = 16'h0000;
        
        else if ((x == 38) && (y >= 4 && y <= 17))             pixels = 16'h0000;
        else if ((x == 46) && (y >= 4 && y <= 7))              pixels = 16'h0000;
        else if ((x == 41) && (y >= 7 && y <= 14))             pixels = 16'h0000;
        else if ((x == 46) && (y >= 14 && y <= 17))            pixels = 16'h0000;
        else if ((x >= 38 && x <= 46) && (y == 4))             pixels = 16'h0000;
        else if ((x >= 41 && x <= 46) && (y == 7))             pixels = 16'h0000;
        else if ((x >= 41 && x <= 46) && (y == 14))            pixels = 16'h0000;
        else if ((x >= 38 && x <= 46) && (y == 17))            pixels = 16'h0000;
        
        else if ((x == 48) && (y >= 4 && y <= 17))             pixels = 16'h0000;
        else if ((x == 51) && (y >= 7 && y <= 14))             pixels = 16'h0000;
        else if ((x == 56) && (y >= 4 && y <= 7))              pixels = 16'h0000;
        else if ((x == 56) && (y >= 14 && y <= 17))            pixels = 16'h0000;
        else if ((x >= 48 && x <= 56) && (y == 4))             pixels = 16'h0000;
        else if ((x >= 51 && x <= 56) && (y == 7))             pixels = 16'h0000;
        else if ((x >= 51 && x <= 56) && (y == 14))            pixels = 16'h0000;
        else if ((x >= 48 && x <= 56) && (y == 17))            pixels = 16'h0000;
        
        else if ((x == 58) && (y >= 4 && y <= 7))              pixels = 16'h0000;
        else if ((x == 60) && (y >= 7 && y <= 14))             pixels = 16'h0000;
        else if ((x == 58) && (y >= 14 && y <= 17))            pixels = 16'h0000;
        else if ((x == 66) && (y >= 4 && y <= 7))              pixels = 16'h0000;
        else if ((x == 64) && (y >= 7 && y <= 14))             pixels = 16'h0000;
        else if ((x == 66) && (y >= 14 && y <= 17))            pixels = 16'h0000;
        else if ((x >= 58 && x <= 66) && (y == 4))             pixels = 16'h0000;
        else if ((x >= 58 && x <= 60) && (y == 7))             pixels = 16'h0000;
        else if ((x >= 64 && x <= 66) && (y == 7))             pixels = 16'h0000;
        else if ((x >= 58 && x <= 60) && (y == 14))            pixels = 16'h0000;
        else if ((x >= 64 && x <= 66) && (y == 14))            pixels = 16'h0000;
        else if ((x >= 58 && x <= 66) && (y == 17))            pixels = 16'h0000;
        
        else if ((x == 68) && (y >= 4 && y <= 17))             pixels = 16'h0000;
        else if ((x == 71) && (y >= 7 && y <= 17))             pixels = 16'h0000;
        else if ((x == 73) && (y >= 7 && y <= 17))             pixels = 16'h0000;
        else if ((x == 76) && (y >= 4 && y <= 17))             pixels = 16'h0000;
        else if ((x >= 68 && x <= 76) && (y == 4))             pixels = 16'h0000;
        else if ((x >= 71 && x <= 73) && (y == 7))             pixels = 16'h0000;
        else if ((x >= 68 && x <= 71) && (y == 17))            pixels = 16'h0000;
        else if ((x >= 73 && x <= 76) && (y == 17))            pixels = 16'h0000;
        
        else if ((x == 78) && (y >= 4 && y <= 17))             pixels = 16'h0000;
        else if ((x == 81) && (y >= 7 && y <= 9))              pixels = 16'h0000;
        else if ((x == 81) && (y >= 12 && y <= 14))            pixels = 16'h0000;
        else if ((x == 86) && (y >= 4 && y <= 7))              pixels = 16'h0000;
        else if ((x == 85) && (y >= 9 && y <= 12))             pixels = 16'h0000;
        else if ((x == 86) && (y >= 14 && y <= 17 ))           pixels = 16'h0000;
        else if ((x >= 78 && x <= 86) && (y == 4))             pixels = 16'h0000;
        else if ((x >= 81 && x <= 86) && (y == 7))             pixels = 16'h0000;
        else if ((x >= 81 && x <= 85) && (y == 9))             pixels = 16'h0000;
        else if ((x >= 81 && x <= 85) && (y == 12))            pixels = 16'h0000;
        else if ((x >= 81 && x <= 86) && (y == 14))            pixels = 16'h0000;
        else if ((x >= 78 && x <= 86) && (y == 17))            pixels = 16'h0000;
        
        //    VOICCINE Colour
        else if ((x >= 9 && x <= 10) && (y >= 5 && y <= 15))   pixels = 16'hF800;
        else if ((x >= 11 && x <= 13) && (y >= 13 && y <= 16)) pixels = 16'hF800;
        else if ((x >= 14 && x <= 15) && (y >= 5 && y <= 15))  pixels = 16'hF800;
          
        else if ((x >= 19 && x <= 20) && (y >= 5 && y <= 16))  pixels = 16'hF800;
        else if ((x >= 24 && x <= 25) && (y >= 5 && y <= 16))  pixels = 16'hF800;
        else if ((x >= 19 && x <= 25) && (y >= 5 && y <= 6))   pixels = 16'hF800;
        else if ((x >= 19 && x <= 25) && (y >= 15 && y <= 16)) pixels = 16'hF800;
          
        else if ((x >= 29 && x <= 35) && (y >= 5 && y <= 6))   pixels = 16'hF800;
        else if ((x >= 29 && x <= 35) && (y >= 15 && y <= 16)) pixels = 16'hF800;
        else if ((x >= 31 && x <= 33) && (y >= 5 && y <= 16))  pixels = 16'hF800;
          
        else if ((x >= 39 && x <= 40) && (y >= 5 && y <= 16))  pixels = 16'hF800;
        else if ((x >= 39 && x <= 45) && (y >= 5 && y <= 6))   pixels = 16'hF800;
        else if ((x >= 39 && x <= 45) && (y >= 15 && y <= 16)) pixels = 16'hF800;
          
        else if ((x >= 49 && x <= 50) && (y >= 5 && y <= 16))  pixels = 16'h5E7C;
        else if ((x >= 49 && x <= 55) && (y >= 5 && y <= 6))   pixels = 16'h5E7C;
        else if ((x >= 49 && x <= 55) && (y >= 15 && y <= 16)) pixels = 16'h5E7C;
          
        else if ((x >= 59 && x <= 65) && (y >= 5 && y <= 6))   pixels = 16'h5E7C;
        else if ((x >= 61 && x <= 63) && (y >= 5 && y <= 16))  pixels = 16'h5E7C;
        else if ((x >= 59 && x <= 65) && (y >= 15 && y <= 16)) pixels = 16'h5E7C;
          
        else if ((x >= 69 && x <= 70) && (y >= 5 && y <= 16))  pixels = 16'h5E7C;
        else if ((x >= 74 && x <= 75) && (y >= 5 && y <= 16))  pixels = 16'h5E7C;
        else if ((x >= 69 && x <= 75) && (y >= 5 && y <= 6))   pixels = 16'h5E7C;
          
        else if ((x >= 79 && x <= 80) && (y >= 5 && y <= 16))  pixels = 16'hF800;
        else if ((x >= 79 && x <= 85) && (y >= 5 && y <= 6))   pixels = 16'hF800;
        else if ((x >= 79 && x <= 84) && (y >= 10 && y <= 11)) pixels = 16'hF800;
        else if ((x >= 79 && x <= 85) && (y >= 15 && y <= 16)) pixels = 16'hF800;
        

        
    //    Doctor black outline
        else if ((x == 39) && (y >= 54 && y <= 61))            pixels = 16'h0000;
        else if ((x == 57) && (y >= 54 && y <= 61))            pixels = 16'h0000;
        else if ((x == 40) && (y >= 52 && y <= 54))            pixels = 16'h0000;
        else if ((x == 56) && (y >= 52 && y <= 54  ))          pixels = 16'h0000;
        else if ((x >= 43 && x <= 53) && (y == 49))            pixels = 16'h0000;
        else if ((x >= 40 && x <= 56) && (y == 53))            pixels = 16'h0000;
        else if (x == 41 && y == 51)                           pixels = 16'h0000;
        else if (x == 42 && y == 50)                           pixels = 16'h0000;
        else if (x == 54 && y == 50)                           pixels = 16'h0000;
        else if (x == 55 && y == 51)                           pixels = 16'h0000;
        
    //    Doctor brown hair + eyes
        else if ((x >= 41 && x <= 44) && (y == 54))            pixels = 16'h61C6;
        else if ((x >= 52 && x <= 55) && (y == 54))            pixels = 16'h61C6;
        else if ((x >= 40 && x <= 43) && (y == 61))            pixels = 16'h61C6;
        else if ((x >= 53 && x <= 56) && (y == 61))            pixels = 16'h61C6;
        else if ((x >= 40 && x <= 41) && (y == 60))            pixels = 16'h61C6;
        else if ((x >= 55 && x <= 56) && (y == 60))            pixels = 16'h61C6;
        else if ((x == 40) && (y >= 58 && y <= 59))            pixels = 16'h61C6;
        else if ((x == 56) && (y >= 58 && y <= 59))            pixels = 16'h61C6;
        else if (x == 45 && y == 56)                           pixels = 16'h61C6;
        else if (x == 51 && y == 56)                           pixels = 16'h61C6;
        
    //    Doctor mask string grey
        else if (x == 40 && y == 55)                           pixels = 16'h0000;
        else if (x == 41 && y == 56)                           pixels = 16'h0000;
        else if (x == 42 && y == 57)                           pixels = 16'h0000;
        else if (x == 43 && y == 58)                           pixels = 16'h0000;
        else if (x == 44 && y == 59)                           pixels = 16'h0000;
        else if (x == 52 && y == 59)                           pixels = 16'h0000;
        else if (x == 53 && y == 58)                           pixels = 16'h0000;
        else if (x == 54 && y == 57)                           pixels = 16'h0000;
        else if (x == 55 && y == 56)                           pixels = 16'h0000;
        else if (x == 56 && y == 55)                           pixels = 16'h0000;
        
    //    Doctor light blue hat
        else if (x == 41 && y == 52)                           pixels = 16'h5E7C;
        else if (x == 55 && y == 52)                           pixels = 16'h5E7C;
        else if ((x >= 42 && x <= 54) && (y >= 50 && y <= 52)) pixels = 16'h5E7C;
        
        
    //    Syringe1 black outline
        else if ((x == 19) && (y >= 22 && y <= 25))            pixels = 16'h0000;
        else if ((x == 16) && (y >= 28 && y <= 43))            pixels = 16'h0000;
        else if ((x == 22) && (y >= 28 && y <= 43))            pixels = 16'h0000;
        else if ((x == 17) && (y >= 45 && y <= 47))            pixels = 16'h0000;
        else if ((x == 21) && (y >= 45 && y <= 47))            pixels = 16'h0000;
        
        else if ((x >= 18 && x <= 20) && (y == 26))            pixels = 16'h0000;
        else if ((x >= 17 && x <= 21) && (y == 27))            pixels = 16'h0000;
        else if ((x >= 16 && x <= 22) && (y == 28))            pixels = 16'h0000;
        else if ((x >= 16 && x <= 22) && (y == 41))            pixels = 16'h0000;
        else if ((x >= 14 && x <= 24) && (y == 44))            pixels = 16'h0000;
        else if ((x >= 16 && x <= 22) && (y == 48))            pixels = 16'h0000;
        else if ((x >= 20 && x <= 22) && (y == 31))            pixels = 16'h0000;
        else if ((x >= 21 && x <= 22) && (y == 33))            pixels = 16'h0000;
        else if ((x >= 20 && x <= 22) && (y == 35))            pixels = 16'h0000;
        else if ((x >= 21 && x <= 22) && (y == 37))            pixels = 16'h0000;
        else if ((x >= 20 && x <= 22) && (y == 39))            pixels = 16'h0000;
        
        //    Syringe1 blue colour
        else if ((x >= 17 && x <= 21) && (y >= 29 && y <= 40)) pixels = 16'h5E7C;
        
    //    Syringe1 white colour
        else if ((x >= 17 && x <= 21) && (y >= 42 && y <= 43)) pixels = 16'hFFFF;
        else if ((x >= 18 && x <= 20) && (y >= 45 && y <= 47)) pixels = 16'hFFFF;
        
        
    //    Syringe2 black outline
        else if ((x == 76) && (y >= 24 && y <= 26))            pixels = 16'h0000;
        else if ((x == 80) && (y >= 24 && y <= 26))            pixels = 16'h0000;
        else if ((x == 75) && (y >= 28 && y <= 43))            pixels = 16'h0000;
        else if ((x == 81) && (y >= 28 && y <= 43))            pixels = 16'h0000;
        else if ((x == 78) && (y >= 46 && y <= 49))            pixels = 16'h0000;
        
        else if ((x >= 75 && x <= 81) && (y == 23))            pixels = 16'h0000;
        else if ((x >= 73 && x <= 83) && (y == 27))            pixels = 16'h0000;
        else if ((x >= 75 && x <= 81) && (y == 30))            pixels = 16'h0000;
        else if ((x >= 76 && x <= 80) && (y == 43))            pixels = 16'h0000;
        else if ((x >= 76 && x <= 80) && (y == 44))            pixels = 16'h0000;
        else if ((x >= 77 && x <= 79) && (y == 45))            pixels = 16'h0000;
        else if ((x >= 75 && x <= 77) && (y == 32))            pixels = 16'h0000;
        else if ((x >= 75 && x <= 76) && (y == 34))            pixels = 16'h0000;
        else if ((x >= 75 && x <= 77) && (y == 36))            pixels = 16'h0000;
        else if ((x >= 75 && x <= 76) && (y == 38))            pixels = 16'h0000;
        else if ((x >= 75 && x <= 77) && (y == 40))            pixels = 16'h0000;
        
        //    Syringe2 white colour
        else if ((x >= 77 && x <= 79) && (y >= 24 && y <= 26)) pixels = 16'hFFFF;
        else if ((x >= 76 && x <= 80) && (y >= 28 && y <= 29)) pixels = 16'hFFFF;
        
    //    Syringe2 blue colour
        else if ((x >= 76 && x <= 80) && (y >= 31 && y <= 42)) pixels = 16'h5E7C;
                                    
        
    //    Play text
        else if ((x == 35) && (y >= 34 && y <= 40))            pixels = 16'h19DF;
        else if ((x >= 35 && x <= 39) && (y == 34))            pixels = 16'h19DF;
        else if ((x >= 35 && x <= 39) && (y == 37))            pixels = 16'h19DF;
        else if ((x >= 38 && x <= 39) && (y >= 34 && y <= 37)) pixels = 16'h19DF;
                                                              
        else if ((x >= 41 && x <= 45) && (y == 40))            pixels = 16'h19DF;
        else if ((x >= 41 && x <= 42) && (y >= 34 && y <= 40)) pixels = 16'h19DF;
                                                              
        else if ((x == 48) && (y >= 34 && y <= 40))            pixels = 16'h19DF;
        else if ((x >= 48 && x <= 52) && (y == 34))            pixels = 16'h19DF;
        else if ((x >= 51 && x <= 52) && (y >= 34 && y <= 40)) pixels = 16'h19DF;
        else if ((x >= 48 && x <= 50) && (y >= 38 && y <= 39)) pixels = 16'h19DF;
                                                           
        else if ((x == 58) && (y >= 34 && y <= 37))            pixels = 16'h19DF;
        else if ((x >= 54 && x <= 55) && (y >= 34 && y <= 37)) pixels = 16'h19DF;
        else if ((x >= 56 && x <= 57) && (y >= 37 && y <= 40)) pixels = 16'h19DF;
        
        
    //    Toilet paper black outline
        else if ((x == 30) && (y >= 30 && y <= 41))            pixels = 16'h0000;
        else if ((x == 63) && (y >= 30 && y <= 41))            pixels = 16'h0000;
        else if ((x == 67) && (y >= 28 && y <= 40))            pixels = 16'h0000;
        
        else if ((x >= 31 && x <= 32) && (y == 29))            pixels = 16'h0000;
        else if ((x >= 31 && x <= 32) && (y == 31))            pixels = 16'h0000;
        else if ((x >= 31 && x <= 32) && (y == 42))            pixels = 16'h0000;
        else if ((x >= 33 && x <= 38) && (y == 28))            pixels = 16'h0000;
        else if ((x >= 34 && x <= 37) && (y == 30))            pixels = 16'h0000;
        else if ((x >= 33 && x <= 38) && (y == 32))            pixels = 16'h0000;
        else if ((x >= 33 && x <= 38) && (y == 43))            pixels = 16'h0000;
        else if ((x >= 39 && x <= 40) && (y == 29))            pixels = 16'h0000;
        else if ((x >= 39 && x <= 40) && (y == 31))            pixels = 16'h0000;
        else if ((x >= 39 && x <= 40) && (y == 42))            pixels = 16'h0000;
        else if ((x >= 42 && x <= 43) && (y == 29))            pixels = 16'h0000;
        else if ((x >= 42 && x <= 43) && (y == 31))            pixels = 16'h0000;
        else if ((x >= 42 && x <= 43) && (y == 42))            pixels = 16'h0000;
        else if ((x >= 44 && x <= 49) && (y == 28))            pixels = 16'h0000;
        else if ((x >= 45 && x <= 48) && (y == 30))            pixels = 16'h0000;
        else if ((x >= 44 && x <= 49) && (y == 32))            pixels = 16'h0000;
        else if ((x >= 44 && x <= 49) && (y == 43))            pixels = 16'h0000;
        else if ((x >= 50 && x <= 51) && (y == 29))            pixels = 16'h0000;
        else if ((x >= 50 && x <= 51) && (y == 31))            pixels = 16'h0000;
        else if ((x >= 50 && x <= 51) && (y == 42))            pixels = 16'h0000;
        else if ((x >= 53 && x <= 54) && (y == 29))            pixels = 16'h0000;
        else if ((x >= 53 && x <= 54) && (y == 31))            pixels = 16'h0000;
        else if ((x >= 53 && x <= 54) && (y == 42))            pixels = 16'h0000;
        else if ((x >= 55 && x <= 60) && (y == 28))            pixels = 16'h0000;
        else if ((x >= 56 && x <= 59) && (y == 30))            pixels = 16'h0000;
        else if ((x >= 55 && x <= 60) && (y == 32))            pixels = 16'h0000;
        else if ((x >= 55 && x <= 60) && (y == 43))            pixels = 16'h0000;
        else if ((x >= 61 && x <= 62) && (y == 29))            pixels = 16'h0000;
        else if ((x >= 61 && x <= 62) && (y == 31))            pixels = 16'h0000;
        else if ((x >= 61 && x <= 62) && (y == 42))            pixels = 16'h0000;
        else if ((x >= 64 && x <= 65) && (y == 30))            pixels = 16'h0000;
        else if ((x >= 64 && x <= 65) && (y == 42))            pixels = 16'h0000;
        else if ((x >= 66 && x <= 67) && (y == 29))            pixels = 16'h0000;
        
        else if (x == 41 && y == 30)                           pixels = 16'h0000;
        else if (x == 41 && y == 43)                           pixels = 16'h0000;
        else if (x == 52 && y == 30)                           pixels = 16'h0000;
        else if (x == 52 && y == 43)                           pixels = 16'h0000;
        else if (x == 66 && y == 41)                           pixels = 16'h0000;

        
        //    Doctor mask blue
        else if ((x >= 46 && x <= 50) && (y >= 58 && y <= 61)) pixels = 16'h5E7C;
        else if ((x >= 44 && x <= 52) && (y >= 59 && y <= 61)) pixels = 16'h5E7C;
        
        //    Doctor beige skin
        else if ((x >= 40 && x <= 56) && (y >= 54 && y <= 61)) pixels = 16'hFFFF;
        
        // Toilet Paper Color
        else if (x == 41 && y == 29)                           pixels = 16'hEE13;
        else if (x == 52 && y == 29)                           pixels = 16'hEE13;
        
        else if ((x >= 31 && x <= 62) && (y >= 29 && y <= 42)) pixels = 16'hFFFF;
        else if ((x >= 64 && x <= 66) && (y >= 30 && y <= 41)) pixels = 16'hFFFF;
        
        //    Background light orange
        else if ((x == 2) && (y >= 31 && y <= 34))             pixels = 16'hEE13;
        else if ((x == 3) && (y >= 31 && y <= 33))             pixels = 16'hEE13;
        else if ((x == 4) && (y >= 31 && y <= 32))             pixels = 16'hEE13;
        else if ((x == 15) && (y >= 31 && y <= 32))            pixels = 16'hEE13;
        else if ((x == 23) && (y >= 31 && y <= 34))            pixels = 16'hEE13;
        else if ((x == 24) && (y >= 31 && y <= 35))            pixels = 16'hEE13;
        else if ((x == 29) && (y >= 31 && y <= 35))            pixels = 16'hEE13;
       
        else if ((x >= 68 && x <= 74) && (y == 31))            pixels = 16'hEE13;
        else if ((x >= 68 && x <= 70) && (y == 32))            pixels = 16'hEE13;
        else if ((x >= 83 && x <= 93) && (y == 35))            pixels = 16'hEE13;
        else if ((x >= 86 && x <= 93) && (y == 36))            pixels = 16'hEE13;
        else if ((x >= 88 && x <= 91) && (y == 37))            pixels = 16'hEE13;
       
        else if (x == 5 && y == 31)                            pixels = 16'hEE13;
        else if (x == 14 && y == 31)                           pixels = 16'hEE13;
        else if (x == 68 && y == 33)                           pixels = 16'hEE13;
        
        else if ((x >= 25 && x <= 28) && (y >= 31 && y <= 36)) pixels = 16'hEE13;
        else if ((x >= 82 && x <= 93) && (y >= 31 && y <= 34)) pixels = 16'hEE13;
        
        else if ((x >= 2 && x <= 93) && (y >= 31 && y <= 61))   pixels = 16'hFD00;
        
        else pixels = 16'hEE13;
    
    end
    
endmodule
