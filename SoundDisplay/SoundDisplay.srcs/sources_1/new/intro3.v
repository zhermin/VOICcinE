`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2020 17:17:14
// Design Name: 
// Module Name: intro3
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


// ...50% OF THE WORLD'S POPULATION!
module intro3(
    input [6:0] x,
    input [5:0] y,
    output reg [15:0] pixels
    );
    
    always @ (*) begin
             if (x < 1 || y < 1 || x >= 95 || y >= 63)                 pixels = 16'hFFFF;

//        Intro 3
        else if ((x >= 8   && x < 8+1) && (y >= 15   && y < 15+1))      pixels = 16'hF800;
        else if ((x >= 11   && x < 11+1) && (y >= 15   && y < 15+1))    pixels = 16'hF800;
        else if ((x >= 14   && x < 14+1) && (y >= 15   && y < 15+1))    pixels = 16'hF800;
        else if ((x >= 18   && x < 18+2)   && (y >= 7   && y < 7+6))    pixels = 16'hF800;
        else if ((x >= 18+4 && x < 18+6)   && (y >= 7+4 && y < 7+10))   pixels = 16'hF800;
        else if ((x >= 18   && x < 18+6)   && (y >= 7   && y < 7+2))    pixels = 16'hF800;
        else if ((x >= 18   && x < 18+6)   && (y >= 7+4 && y < 7+6))    pixels = 16'hF800;
        else if ((x >= 18   && x < 18+6)   && (y >= 7+8 && y < 7+10))   pixels = 16'hF800;
        else if ((x >= 26   && x < 26+2)   && (y >= 7   && y < 7+10))   pixels = 16'hF800;
        else if ((x >= 26+4 && x < 26+6)   && (y >= 7   && y < 7+10))   pixels = 16'hF800;
        else if ((x >= 26   && x < 26+6)   && (y >= 7   && y < 7+2))    pixels = 16'hF800;
        else if ((x >= 26   && x < 26+6)   && (y >= 7+8 && y < 7+10))   pixels = 16'hF800;
        else if ((x >= 34   && x < 34+2) && (y >= 7   && y < 7+2))      pixels = 16'hF800;
        else if ((x >= 34+4 && x < 34+6) && (y >= 7   && y < 7+2))      pixels = 16'hF800;
        else if ((x >= 34+3 && x < 34+5) && (y >= 7+2 && y < 7+4))      pixels = 16'hF800;
        else if ((x >= 34+2 && x < 34+4) && (y >= 7+4 && y < 7+6))      pixels = 16'hF800;
        else if ((x >= 34+1 && x < 34+3) && (y >= 7+6 && y < 7+8))      pixels = 16'hF800;
        else if ((x >= 34   && x < 34+2) && (y >= 7+8 && y < 7+10))     pixels = 16'hF800;
        else if ((x >= 34+4 && x < 34+6) && (y >= 7+8 && y < 7+10))     pixels = 16'hF800;
        else if ((x >= 46 && x < 46+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 46+4 && x < 46+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 46 && x < 46+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 46 && x < 46+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 54 && x < 54+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 54 && x < 54+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 54 && x < 54+4)   && (y >= 7+4 && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 66+2 && x < 66+4) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 66 && x < 66+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 74 && x < 74+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 74+4 && x < 74+6) && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 74 && x < 74+6)   && (y >= 7+4 && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 82 && x < 82+2)   && (y >= 7 && y < 7+10))       pixels = 16'hFFFF;
        else if ((x >= 82 && x < 82+6)   && (y >= 7 && y < 7+2))        pixels = 16'hFFFF;
        else if ((x >= 82 && x < 82+4)   && (y >= 7+4 && y < 7+6))      pixels = 16'hFFFF;
        else if ((x >= 82 && x < 82+6)   && (y >= 7+8 && y < 7+10))     pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 21+2 && x < 21+3) && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 21+3 && x < 21+4) && (y >= 27+6 && y < 27+8))    pixels = 16'hFFE0;
        else if ((x >= 21+4 && x < 21+5) && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 21+5 && x < 21+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 29 && x < 29+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 29+4 && x < 29+6) && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 29 && x < 29+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 29 && x < 29+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 37 && x < 37+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 37+4 && x < 37+6) && (y >= 27 && y < 27+6))      pixels = 16'hFFE0;
        else if ((x >= 37+4 && x < 37+6) && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 37 && x < 37+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 37 && x < 37+4)   && (y >= 27+6 && y < 27+8))    pixels = 16'hFFE0;
        else if ((x >= 45 && x < 45+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 45 && x < 45+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 53 && x < 53+2)   && (y >= 27 && y < 27+10))     pixels = 16'hFFE0;
        else if ((x >= 53+4 && x < 53+6) && (y >= 27+2 && y < 27+8))    pixels = 16'hFFE0;
        else if ((x >= 53 && x < 53+4)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 53 && x < 53+4)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 61   && x < 61+2) && (y >= 27   && y < 27+2))    pixels = 16'hFFE0;
        else if ((x >= 61+1 && x < 61+3) && (y >= 27-2 && y < 27))      pixels = 16'hFFE0;
        else if ((x >= 69 && x < 69+2)   && (y >= 27 && y < 27+6))      pixels = 16'hFFE0;
        else if ((x >= 69+4 && x < 69+6) && (y >= 27+4 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 69 && x < 69+6)   && (y >= 27 && y < 27+2))      pixels = 16'hFFE0;
        else if ((x >= 69 && x < 69+6)   && (y >= 27+4 && y < 27+6))    pixels = 16'hFFE0;
        else if ((x >= 69 && x < 69+6)   && (y >= 27+8 && y < 27+10))   pixels = 16'hFFE0;
        else if ((x >= 5 && x < 5+2)   && (y >= 47 && y < 47+10))       pixels = 16'hFFFF;
        else if ((x >= 5+4 && x < 5+6) && (y >= 47 && y < 47+6))        pixels = 16'hFFFF;
        else if ((x >= 5 && x < 5+6)   && (y >= 47 && y < 47+2))        pixels = 16'hFFFF;
        else if ((x >= 5 && x < 5+6)   && (y >= 47+4 && y < 47+6))      pixels = 16'hFFFF;
        else if ((x >= 13 && x < 13+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 13+4 && x < 13+6) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 13 && x < 13+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 13 && x < 13+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 21+4 && x < 21+6) && (y >= 47 && y < 47+6))      pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 21 && x < 21+6)   && (y >= 47+4 && y < 47+6))    pixels = 16'hFFFF;
        else if ((x >= 29 && x < 29+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 29+4 && x < 29+6) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 29 && x < 29+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 37 && x < 37+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 37 && x < 37+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 45+4 && x < 45+6) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 45 && x < 45+6)   && (y >= 47+6 && y < 47+8))    pixels = 16'hFFFF;
        else if ((x >= 53+2 && x < 53+4) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 53 && x < 53+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 61+2 && x < 61+4) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 61 && x < 61+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 61 && x < 61+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 69 && x < 69+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 69+4 && x < 69+6) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 69 && x < 69+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 69 && x < 69+6)   && (y >= 47+8 && y < 47+10))   pixels = 16'hFFFF;
        else if ((x >= 77 && x < 77+2)   && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 77+4 && x < 77+6) && (y >= 47 && y < 47+10))     pixels = 16'hFFFF;
        else if ((x >= 77 && x < 77+6)   && (y >= 47 && y < 47+2))      pixels = 16'hFFFF;
        else if ((x >= 87 && x < 87+2) && (y >= 47   && y < 47+6))      pixels = 16'hFFFF;
        else if ((x >= 87 && x < 87+2) && (y >= 47+8 && y < 47+10))     pixels = 16'hFFFF;
        else pixels = 16'h0000;
    end

endmodule
