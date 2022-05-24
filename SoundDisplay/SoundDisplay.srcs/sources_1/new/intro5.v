`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2020 17:17:14
// Design Name: 
// Module Name: intro5
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


// A VACCINE WAS CREATED!
module intro5(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                pixels = 16'hFFFF;

//        Intro 5
        else if ((x >= 15 && x < 15+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 15+4 && x < 15+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 15 && x < 15+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 15 && x < 15+6)   && (y >= 7+6 && y < 7+8))      pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+2)   && (y >= 7 && y < 7+8))        pixels = 16'hFFE0;
        else if ((x >= 27+2 && x < 27+4) && (y >= 7+8 && y < 7+10))     pixels = 16'hFFE0;
        else if ((x >= 27+4 && x < 27+6) && (y >= 7 && y < 7+8))        pixels = 16'hFFE0;
        else if ((x >= 35 && x < 35+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 35+4 && x < 35+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 35 && x < 35+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFE0;
        else if ((x >= 35 && x < 35+6)   && (y >= 7+6 && y < 7+8))      pixels = 16'hFFE0;
        else if ((x >= 43 && x < 43+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 43 && x < 43+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFE0;
        else if ((x >= 43 && x < 43+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFE0;
        else if ((x >= 51 && x < 51+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 51 && x < 51+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFE0;
        else if ((x >= 51 && x < 51+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFE0;
        else if ((x >= 59+2 && x < 59+4) && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 59 && x < 59+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFE0;
        else if ((x >= 59 && x < 59+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFE0;
        else if ((x >= 67 && x < 67+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 67+4 && x < 67+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 67 && x < 67+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFE0;
        else if ((x >= 75 && x < 75+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFE0;
        else if ((x >= 75 && x < 75+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFE0;
        else if ((x >= 75 && x < 75+4)   && (y >= 7+4 && y < 7+6))      pixels = 16'hFFE0;
        else if ((x >= 75 && x < 75+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFE0;
        else if ((x >= 7 && x < 7+2)   && (y >= 27 && y < 27+10))       pixels = 16'hFFFF;
        else if ((x >= 7+2 && x < 7+3) && (y >= 27+8 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 7+3 && x < 7+4) && (y >= 27+6 && y < 27+8))      pixels = 16'hFFFF;
        else if ((x >= 7+4 && x < 7+5) && (y >= 27+8 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 7+5 && x < 7+6) && (y >= 27 && y < 27+10))       pixels = 16'hFFFF;
        else if ((x >= 15 && x < 15+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 15+4 && x < 15+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 15 && x < 15+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 15 && x < 15+6)   && (y >= 27+6 && y < 27+8))    pixels = 16'hFFFF;
        else if ((x >= 23 && x < 23+2)   && (y >= 27 && y < 27+6))      pixels = 16'hFFFF;
        else if ((x >= 23+4 && x < 23+6) && (y >= 27+4 && y < 27+10))   pixels = 16'hFFFF;
        else if ((x >= 23 && x < 23+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 23 && x < 23+6)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFFF;
        else if ((x >= 23 && x < 23+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF;
        else if ((x >= 35 && x < 35+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 35 && x < 35+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 35 && x < 35+4)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFFF;
        else if ((x >= 43+2 && x < 43+4) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 43 && x < 43+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 43 && x < 43+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF;
        else if ((x >= 51 && x < 51+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 51+4 && x < 51+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 51 && x < 51+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 59 && x < 59+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 59+4 && x < 59+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 59 && x < 59+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF;
        else if ((x >= 59 && x < 59+6)   && (y >= 27+6 && y < 27+8))    pixels = 16'hFFFF;
        else if ((x >= 67 && x < 67+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 67 && x < 67+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF;
        else if ((x >= 75 && x < 75+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF;
        else if ((x >= 75 && x < 75+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF;
        else if ((x >= 83   && x < 83+2) && (y >= 27   && y < 27+6))    pixels = 16'hFFFF;
        else if ((x >= 83+2 && x < 83+4) && (y >= 27+4 && y < 27+10))   pixels = 16'hFFFF;
        else if ((x >= 83+4 && x < 83+6) && (y >= 27   && y < 27+6))    pixels = 16'hFFFF;
        else if ((x >= 18 && x < 18+2)   && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 18 && x < 18+6)   && (y >= 47 && y < 47+2))      pixels = 16'h07E0;
        else if ((x >= 18 && x < 18+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'h07E0;
        else if ((x >= 26 && x < 26+2)   && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 26+4 && x < 26+6) && (y >= 47 && y < 47+6))      pixels = 16'h07E0;
        else if ((x >= 26+4 && x < 26+6) && (y >= 47+8 && y < 47+10))   pixels = 16'h07E0;
        else if ((x >= 26 && x < 26+6)   && (y >= 47 && y < 47+2))      pixels = 16'h07E0;
        else if ((x >= 26 && x < 26+4)   && (y >= 47+6 && y < 47+8))    pixels = 16'h07E0;
        else if ((x >= 34 && x < 34+2)   && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 34 && x < 34+6)   && (y >= 47 && y < 47+2))      pixels = 16'h07E0;
        else if ((x >= 34 && x < 34+4)   && (y >= 47+4 && y < 47+6))    pixels = 16'h07E0;
        else if ((x >= 34 && x < 34+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'h07E0;
        else if ((x >= 42 && x < 42+2)   && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 42+4 && x < 42+6) && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 42 && x < 42+6)   && (y >= 47 && y < 47+2))      pixels = 16'h07E0;
        else if ((x >= 42 && x < 42+6)   && (y >= 47+6 && y < 47+8))    pixels = 16'h07E0;
        else if ((x >= 50+2 && x < 50+4) && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 50 && x < 50+6)   && (y >= 47 && y < 47+2))      pixels = 16'h07E0;
        else if ((x >= 58 && x < 58+2)   && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 58 && x < 58+6)   && (y >= 47 && y < 47+2))      pixels = 16'h07E0;
        else if ((x >= 58 && x < 58+4)   && (y >= 47+4 && y < 47+6))    pixels = 16'h07E0;
        else if ((x >= 58 && x < 58+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'h07E0;
        else if ((x >= 66 && x < 66+2)   && (y >= 47 && y < 47+10))     pixels = 16'h07E0;
        else if ((x >= 66+4 && x < 66+6) && (y >= 47+2 && y < 47+8))    pixels = 16'h07E0;
        else if ((x >= 66 && x < 66+4)   && (y >= 47 && y < 47+2))      pixels = 16'h07E0;
        else if ((x >= 66 && x < 66+4)   && (y >= 47+8 && y < 47+10))   pixels = 16'h07E0;
        else if ((x >= 76 && x < 76+2) && (y >= 47   && y < 47+6))      pixels = 16'h07E0;
        else if ((x >= 76 && x < 76+2) && (y >= 47+8 && y < 47+10))     pixels = 16'h07E0;
        else pixels = 16'h0000;
    end
    

endmodule
