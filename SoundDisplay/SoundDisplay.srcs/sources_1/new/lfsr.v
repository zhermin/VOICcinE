`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2020 22:26:00
// Design Name: 
// Module Name: lfsr
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


module lfsr(
    input clk,
    input en,
    input [3:0] r_in,
    output reg [3:0] r_out
    );
    
    always @ (posedge clk) if (en) r_out <= {r_in[2:0], r_in[3] ^ r_in[2] ^ r_in[0]};

endmodule
