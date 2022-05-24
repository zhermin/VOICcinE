`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2020 17:17:14
// Design Name: 
// Module Name: intro2
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


// THE COVID-19 PANDEMIC HAS WIPED OUT...
module intro2(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                 pixels = 16'hFFFF;
             
//        Intro 2
        else if ((x >= 3+2 && x < 3+4) && (y >= 7 && y < 7+10))         pixels = 16'hFFFF; 
        else if ((x >= 3 && x < 3+6)   && (y >= 7 && y < 7+2))          pixels = 16'hFFFF; 
        else if ((x >= 11 && x < 11+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF; 
        else if ((x >= 11+4 && x < 11+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF; 
        else if ((x >= 11 && x < 11+6)   && (y >= 7+4 && y < 7+6))      pixels = 16'hFFFF; 
        else if ((x >= 19 && x < 19+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF; 
        else if ((x >= 19 && x < 19+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF; 
        else if ((x >= 19 && x < 19+4)   && (y >= 7+4 && y < 7+6))      pixels = 16'hFFFF; 
        else if ((x >= 19 && x < 19+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF; 
        else if ((x >= 31 && x < 31+2)   && (y >= 7 && y < 7+10))       pixels = 16'hF800; 
        else if ((x >= 31 && x < 31+6)   && (y >= 7 && y < 7+2))        pixels = 16'hF800; 
        else if ((x >= 31 && x < 31+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hF800; 
        else if ((x >= 39 && x < 39+2)   && (y >= 7 && y < 7+10))       pixels = 16'hF800; 
        else if ((x >= 39+4 && x < 39+6) && (y >= 7 && y < 7+10))       pixels = 16'hF800; 
        else if ((x >= 39 && x < 39+6)   && (y >= 7 && y < 7+2))        pixels = 16'hF800; 
        else if ((x >= 39 && x < 39+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hF800; 
        else if ((x >= 47 && x < 47+2)   && (y >= 7 && y < 7+8))        pixels = 16'hF800; 
        else if ((x >= 47+2 && x < 47+4) && (y >= 7+8 && y < 7+10))     pixels = 16'hF800; 
        else if ((x >= 47+4 && x < 47+6) && (y >= 7 && y < 7+8))        pixels = 16'hF800; 
        else if ((x >= 55+2 && x < 55+4) && (y >= 7 && y < 7+10))       pixels = 16'hF800; 
        else if ((x >= 55 && x < 55+6)   && (y >= 7 && y < 7+2))        pixels = 16'hF800; 
        else if ((x >= 55 && x < 55+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hF800; 
        else if ((x >= 63 && x < 63+2)   && (y >= 7 && y < 7+10))       pixels = 16'hF800; 
        else if ((x >= 63+4 && x < 63+6) && (y >= 7+2 && y < 7+8))      pixels = 16'hF800; 
        else if ((x >= 63 && x < 63+4)   && (y >= 7 && y < 7+2))        pixels = 16'hF800; 
        else if ((x >= 63 && x < 63+4)   && (y >= 7+8 && y < 7+10))     pixels = 16'hF800; 
        else if ((x >= 72 && x < 72+5) && (y >= 11 && y < 11+2))        pixels = 16'hF800; 
        else if ((x >= 79+2 && x < 79+4) && (y >= 7   && y < 7+10))     pixels = 16'hF800; 
        else if ((x >= 79   && x < 79+4) && (y >= 7   && y < 7+2))      pixels = 16'hF800; 
        else if ((x >= 79   && x < 79+6) && (y >= 7+8 && y < 7+10))     pixels = 16'hF800; 
        else if ((x >= 87   && x < 87+2) && (y >= 7   && y < 7+6))      pixels = 16'hF800; 
        else if ((x >= 87+4 && x < 87+6) && (y >= 7   && y < 7+10))     pixels = 16'hF800; 
        else if ((x >= 87   && x < 87+6) && (y >= 7   && y < 7+2))      pixels = 16'hF800; 
        else if ((x >= 87   && x < 87+6) && (y >= 7+4 && y < 7+6))      pixels = 16'hF800; 
        else if ((x >= 87   && x < 87+6) && (y >= 7+8 && y < 7+10))     pixels = 16'hF800; 
        else if ((x >= 3 && x < 3+2)   && (y >= 27 && y < 27+10))       pixels = 16'hFFFF; 
        else if ((x >= 3+4 && x < 3+6) && (y >= 27 && y < 27+6))        pixels = 16'hFFFF; 
        else if ((x >= 3 && x < 3+6)   && (y >= 27 && y < 27+2))        pixels = 16'hFFFF; 
        else if ((x >= 3 && x < 3+6)   && (y >= 27+4 && y < 27+6))      pixels = 16'hFFFF; 
        else if ((x >= 11 && x < 11+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF; 
        else if ((x >= 11+4 && x < 11+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF; 
        else if ((x >= 11 && x < 11+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF; 
        else if ((x >= 11 && x < 11+6)   && (y >= 27+6 && y < 27+8))    pixels = 16'hFFFF; 
        else if ((x >= 19 && x < 19+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF; 
        else if ((x >= 19+4 && x < 19+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF; 
        else if ((x >= 19 && x < 19+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF; 
        else if ((x >= 27 && x < 27+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF; 
        else if ((x >= 27+4 && x < 27+6) && (y >= 27+2 && y < 27+8))    pixels = 16'hFFFF;
        else if ((x >= 27 && x < 27+4)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF; 
        else if ((x >= 27 && x < 27+4)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF; 
        else if ((x >= 35 && x < 35+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF; 
        else if ((x >= 35 && x < 35+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF; 
        else if ((x >= 35 && x < 35+4)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFFF; 
        else if ((x >= 35 && x < 35+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF; 
        else if ((x >= 43 && x < 43+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF; 
        else if ((x >= 43+3 && x < 43+4) && (y >= 27 && y < 27+6))      pixels = 16'hFFFF; 
        else if ((x >= 43+5 && x < 43+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF; 
        else if ((x >= 43 && x < 43+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF; 
        else if ((x >= 51+2 && x < 51+4) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF; 
        else if ((x >= 51 && x < 51+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF; 
        else if ((x >= 51 && x < 51+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF; 
        else if ((x >= 59 && x < 59+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF; 
        else if ((x >= 59 && x < 59+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF; 
        else if ((x >= 59 && x < 59+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF; 
        else if ((x >= 71 && x < 71+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF; 
        else if ((x >= 71+4 && x < 71+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF; 
        else if ((x >= 71 && x < 71+6)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFFF; 
        else if ((x >= 79 && x < 79+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFFF; 
        else if ((x >= 79+4 && x < 79+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFFF; 
        else if ((x >= 79 && x < 79+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF; 
        else if ((x >= 79 && x < 79+6)   && (y >= 27+6 && y < 27+8))    pixels = 16'hFFFF; 
        else if ((x >= 87 && x < 87+2)   && (y >= 27 && y < 27+6))      pixels = 16'hFFFF; 
        else if ((x >= 87+4 && x < 87+6) && (y >= 27+4 && y < 27+10))   pixels = 16'hFFFF; 
        else if ((x >= 87 && x < 87+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFFF; 
        else if ((x >= 87 && x < 87+6)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFFF; 
        else if ((x >= 87 && x < 87+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFFF; 
        else if ((x >= 11 && x < 11+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFE0; 
        else if ((x >= 11+2 && x < 11+3) && (y >= 47+8 && y < 47+10))   pixels = 16'hFFE0; 
        else if ((x >= 11+3 && x < 11+4) && (y >= 47+6 && y < 47+8))    pixels = 16'hFFE0; 
        else if ((x >= 11+4 && x < 11+5) && (y >= 47+8 && y < 47+10))   pixels = 16'hFFE0; 
        else if ((x >= 11+5 && x < 11+6) && (y >= 47 && y < 47+10))     pixels = 16'hFFE0; 
        else if ((x >= 19+2 && x < 19+4) && (y >= 47 && y < 47+10))     pixels = 16'hFFE0; 
        else if ((x >= 19 && x < 19+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFE0; 
        else if ((x >= 19 && x < 19+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFE0; 
        else if ((x >= 27 && x < 27+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFE0; 
        else if ((x >= 27+4 && x < 27+6) && (y >= 47 && y < 47+6))      pixels = 16'hFFE0; 
        else if ((x >= 27 && x < 27+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFE0; 
        else if ((x >= 27 && x < 27+6)   && (y >= 47+4 && y < 47+6))    pixels = 16'hFFE0; 
        else if ((x >= 35 && x < 35+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFE0; 
        else if ((x >= 35 && x < 35+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFE0; 
        else if ((x >= 35 && x < 35+4)   && (y >= 47+4 && y < 47+6))    pixels = 16'hFFE0; 
        else if ((x >= 35 && x < 35+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFE0; 
        else if ((x >= 43 && x < 43+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFE0; 
        else if ((x >= 43+4 && x < 43+6) && (y >= 47+2 && y < 47+8))    pixels = 16'hFFE0; 
        else if ((x >= 43 && x < 43+4)   && (y >= 47 && y < 47+2))      pixels = 16'hFFE0; 
        else if ((x >= 43 && x < 43+4)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFE0;
        else if ((x >= 55 && x < 55+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFE0; 
        else if ((x >= 55+4 && x < 55+6) && (y >= 47 && y < 47+10))     pixels = 16'hFFE0; 
        else if ((x >= 55 && x < 55+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFE0; 
        else if ((x >= 55 && x < 55+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFE0; 
        else if ((x >= 63 && x < 63+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFE0; 
        else if ((x >= 63+4 && x < 63+6) && (y >= 47 && y < 47+10))     pixels = 16'hFFE0; 
        else if ((x >= 63 && x < 63+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFE0; 
        else if ((x >= 71+2 && x < 71+4) && (y >= 47 && y < 47+10))     pixels = 16'hFFE0; 
        else if ((x >= 71 && x < 71+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFE0; 
        else if ((x >= 80   && x < 80+1) && (y >= 55   && y < 55+1))    pixels = 16'hFFE0; 
        else if ((x >= 83   && x < 83+1) && (y >= 55   && y < 55+1))    pixels = 16'hFFE0; 
        else if ((x >= 86   && x < 86+1) && (y >= 55   && y < 55+1))    pixels = 16'hFFE0;
        else pixels = 16'h0000;
    end
    
endmodule
    