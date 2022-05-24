`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2020 00:40:23
// Design Name: 
// Module Name: volbar_colors
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


module volbar_colors(
    input [15:0] sw,
    output reg [1:0] border_thickness,
    output reg [16:0] low, mid, high, border, bg
    );
    
    always @ (*) begin
        border_thickness <= (sw[1]) ? 2'd0 : (sw[13]) ? 2'd3 : 2'd1;
        bg <= (sw[3]) ? 16'h0000 : (sw[12]) ? 16'hFF50 : (sw[11]) ? 16'hFCDE : 16'h0000;
        border <= (sw[12]) ? 16'hFFE0 : (sw[11]) ? 16'hF800 : 16'hFFFF;
        low <= (sw[2]) ? bg : (sw[12]) ? 16'h001F : (sw[11]) ? 16'hF800 : 16'h07E0;
        mid <= (sw[2]) ? bg : (sw[12]) ? 16'h07FF : (sw[11]) ? 16'hFFE0 : 16'hFFE0;
        high <= (sw[2]) ? bg : (sw[12]) ? 16'h07E0 : (sw[11]) ? 16'hF999 : 16'hF800;
    end

endmodule
