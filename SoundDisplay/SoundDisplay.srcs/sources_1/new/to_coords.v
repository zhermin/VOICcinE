`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2020 16:24:55
// Design Name: 
// Module Name: to_coords
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


module to_coords( input [12:0] pixel_index, output [6:0] x, output [5:0] y );

    assign x = pixel_index % 96;
    assign y = pixel_index / 96;

endmodule
