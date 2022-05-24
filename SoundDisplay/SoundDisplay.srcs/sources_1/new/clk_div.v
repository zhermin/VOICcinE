`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2020 00:39:50
// Design Name: 
// Module Name: clk_div
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


module clk_div( input basys_clk, input [31:0] m, output reg slowed_clk = 0 );

    reg [31:0] count = 0;
    always @ (posedge basys_clk) begin
        count <= (count == m) ? 0 : count + 1 ;
        slowed_clk <= (count == 0) ? ~slowed_clk : slowed_clk ;
    end

endmodule
