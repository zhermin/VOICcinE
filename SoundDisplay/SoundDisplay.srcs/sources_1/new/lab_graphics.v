`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 03:57:56
// Design Name: 
// Module Name: lab_graphics
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


module lab_graphics(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
        //        Lab graphic
        
        //         Doctor black outline:
        //         Blocks:
             if ((x >= 29 && x <= 30) && (y >= 46 && y <= 63))     pixels = 16'h0000;
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
        
                //    Lab building black outline:
        else if ((x >= 32 && x <= 33) && (y >= 0 && y <= 19))       pixels = 16'h0000;
        else if ((x >= 32 && x <= 63) && (y >= 18 && y <= 19))      pixels = 16'h0000;
        else if ((x >= 62 && x <= 63) && (y >= 0 && y <= 19))       pixels = 16'h0000;
        
        //    Lab building letters:
        //    [38,1 to 39,10][38,9 to 43,10][45,1 to 46,10][45,1 to 50,2][49,1 to 50,10][45,5 to 50,6][52,1 to 53,10][52,1 to 55,2][52,5 to 55,6][52,9 to 55,10][56,3 to 57,4][56,7 to 57,8]
        else if ((x >= 38 && x <= 39) && (y >= 1 && y <= 10))       pixels = 16'h0000;
        else if ((x >= 38 && x <= 43) && (y >= 9 && y <= 10))       pixels = 16'h0000;
        else if ((x >= 45 && x <= 46) && (y >= 1 && y <= 10))       pixels = 16'h0000;
        else if ((x >= 45 && x <= 50) && (y >= 1 && y <= 2))        pixels = 16'h0000;
        else if ((x >= 49 && x <= 50) && (y >= 1 && y <= 10))       pixels = 16'h0000;
        else if ((x >= 45 && x <= 50) && (y >= 5 && y <= 6))        pixels = 16'h0000;
        else if ((x >= 52 && x <= 53) && (y >= 1 && y <= 10))       pixels = 16'h0000;
        else if ((x >= 52 && x <= 55) && (y >= 1 && y <= 2))        pixels = 16'h0000;
        else if ((x >= 52 && x <= 55) && (y >= 5 && y <= 6))        pixels = 16'h0000;
        else if ((x >= 52 && x <= 55) && (y >= 9 && y <= 10))       pixels = 16'h0000;
        else if ((x >= 56 && x <= 57) && (y >= 3 && y <= 4))        pixels = 16'h0000;
        else if ((x >= 56 && x <= 57) && (y >= 7 && y <= 8))        pixels = 16'h0000;
        
        //    Lab door:
        //    [45,13 to 46,17][45,13 to 50,14][49,13 to 50,17]
        else if ((x >= 45 && x <= 46) && (y >= 13 && y <= 17))      pixels = 16'h0000;
        else if ((x >= 45 && x <= 50) && (y >= 13 && y <= 14))      pixels = 16'h0000;
        else if ((x >= 49 && x <= 50) && (y >= 13 && y <= 17))      pixels = 16'h0000;
        
        //    Lab shaded green:
        //    [34,0 to 61,17]
        else if ((x >= 34 && x <= 61) && (y >= 0 && y <= 17))       pixels = 16'h5E7C;
        
        //    Road white
        //    V line:
        //    [47,26 to 47,33]
        else if ((x == 47) && (y >= 26 && y <= 33))                 pixels = 16'hFFFF;
        
        //    Pavement outline brown:
        else if ((x >= 21 && x <= 22) && (y >= 60 && y <= 63))      pixels = 16'h0000;
        else if ((x >= 22 && x <= 23) && (y >= 56 && y <= 60))      pixels = 16'h0000;
        else if ((x >= 23 && x <= 24) && (y >= 52 && y <= 56))      pixels = 16'h0000;
        else if ((x >= 24 && x <= 25) && (y >= 48 && y <= 52))      pixels = 16'h0000;
        else if ((x >= 25 && x <= 26) && (y >= 44 && y <= 48))      pixels = 16'h0000;
        else if ((x >= 26 && x <= 27) && (y >= 40 && y <= 44))      pixels = 16'h0000;
        else if ((x >= 27 && x <= 28) && (y >= 36 && y <= 40))      pixels = 16'h0000;
        else if ((x >= 28 && x <= 29) && (y >= 32 && y <= 34))      pixels = 16'h0000;
        else if ((x >= 29 && x <= 30) && (y >= 28 && y <= 32))      pixels = 16'h0000;
        else if ((x >= 30 && x <= 31) && (y >= 24 && y <= 28))      pixels = 16'h0000;
        else if ((x >= 31 && x <= 32) && (y >= 20 && y <= 24))      pixels = 16'h0000;
        else if ((x >= 73 && x <= 74) && (y >= 60 && y <= 63))      pixels = 16'h0000;
        else if ((x >= 72 && x <= 73) && (y >= 56 && y <= 60))      pixels = 16'h0000;
        else if ((x >= 71 && x <= 72) && (y >= 52 && y <= 56))      pixels = 16'h0000;
        else if ((x >= 70 && x <= 71) && (y >= 48 && y <= 52))      pixels = 16'h0000;
        else if ((x >= 69 && x <= 70) && (y >= 44 && y <= 48))      pixels = 16'h0000;
        else if ((x >= 68 && x <= 69) && (y >= 40 && y <= 44))      pixels = 16'h0000;
        else if ((x >= 67 && x <= 68) && (y >= 36 && y <= 40))      pixels = 16'h0000;
        else if ((x >= 66 && x <= 67) && (y >= 32 && y <= 36))      pixels = 16'h0000;
        else if ((x >= 65 && x <= 66) && (y >= 28 && y <= 32))      pixels = 16'h0000;
        else if ((x >= 64 && x <= 65) && (y >= 24 && y <= 28))      pixels = 16'h0000;
        else if ((x >= 63 && x <= 64) && (y >= 20 && y <= 24))      pixels = 16'h0000;
        else if ((x >= 0 && x <= 10) && (y >= 20 && y <= 21))       pixels = 16'h0000;
        else if ((x >= 10 && x <= 24) && (y >= 19 && y <= 20))      pixels = 16'h0000;
        else if ((x >= 24 && x <= 31) && (y >= 18 && y <= 19))      pixels = 16'h0000;
        else if ((x >= 85 && x <= 95) && (y >= 20 && y <= 21))      pixels = 16'h0000;
        else if ((x >= 71 && x <= 85) && (y >= 19 && y <= 20))      pixels = 16'h0000;
        else if ((x >= 64 && x <= 71) && (y >= 18 && y <= 19))      pixels = 16'h0000;
        
        //    Dark orange background:
        else if ((x >= 0 && x <= 9) && (y >= 0 && y <= 19))       pixels = 16'hCAA0;
        else if ((x >= 10 && x <= 23) && (y >= 0 && y <= 18))     pixels = 16'hCAA0;
        else if ((x >= 24 && x <= 31) && (y >= 0 && y <= 17))     pixels = 16'hCAA0;
        else if ((x >= 64 && x <= 71) && (y >= 0 && y <= 17))     pixels = 16'hCAA0;
        else if ((x >= 72 && x <= 85) && (y >= 0 && y <= 18))     pixels = 16'hCAA0;
        else if ((x >= 86 && x <= 95) && (y >= 0 && y <= 19))     pixels = 16'hCAA0;
        
        //    Pavement beige:
        //    Blocks:
        else if ((x >= 0 && x <= 20) && (y >= 14 && y <= 63))     pixels = 16'hEE13;
        else if ((x >= 21 && x <= 23) && (y >= 14 && y <= 59))    pixels = 16'hEE13;
        else if ((x >= 24 && x <= 26) && (y >= 14 && y <= 47))    pixels = 16'hEE13;
        else if ((x >= 27 && x <= 28) && (y >= 14 && y <= 35))    pixels = 16'hEE13;
        else if ((x >= 29 && x <= 31) && (y >= 14 && y <= 27))    pixels = 16'hEE13;
        else if ((x >= 75 && x <= 95) && (y >= 14 && y <= 63))    pixels = 16'hEE13;
        else if ((x >= 72 && x <= 74) && (y >= 14 && y <= 59))    pixels = 16'hEE13;
        else if ((x >= 69 && x <= 71) && (y >= 14 && y <= 47))    pixels = 16'hEE13;
        else if ((x >= 66 && x <= 68) && (y >= 14 && y <= 35))    pixels = 16'hEE13;
        else if ((x >= 63 && x <= 65) && (y >= 14 && y <= 23))    pixels = 16'hEE13;

        else pixels = 16'h4208;
    end

endmodule
