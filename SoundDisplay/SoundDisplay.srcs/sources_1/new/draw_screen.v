`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2020 17:47:25
// Design Name: 
// Module Name: draw_screen
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


module draw_screen(
    input [6:0] x,
    input [5:0] y,
    input clk_oled,
    input [15:0] sw,
    input [15:0] audio_out,
//    input [1:0] border_thickness,
//    input [15:0] low, mid, high, border, bg,
    output reg [15:0] oled_data
    );
    
    parameter scrn_width = 96, scrn_height = 64;
    parameter x_center = scrn_width/2, y_center = scrn_height/2;
    parameter volbar_width = 10, volbar_length = 3;
    
    wire [1:0] border_thickness;
    wire [15:0] low, mid, high, border, bg;
    volbar_colors fncall_colorvolbar (sw, border_thickness, low, mid, high, border, bg);
    
    // RED : F800 | GREEN : 07E0 | BLUE : 001F
    always @ (posedge clk_oled) begin
        if (x < border_thickness || y < border_thickness || x >= scrn_width - border_thickness || y >= scrn_height - border_thickness) oled_data <= border;
        else if ( y >= (3 + 6 + volbar_length* 0) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1- 0)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[15]) ? high : bg;
        else if ( y >= (3 + 6 + volbar_length* 1) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1- 1)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[14]) ? high : bg;
        else if ( y >= (3 + 6 + volbar_length* 2) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1- 2)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[13]) ? high : bg;
        else if ( y >= (3 + 6 + volbar_length* 3) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1- 3)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[12]) ? high : bg;
        else if ( y >= (3 + 6 + volbar_length* 4) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1- 4)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[11]) ? high : bg;
        else if ( y >= (3 + 6 + volbar_length* 5) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1- 5)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[10]) ?  mid : bg;
        else if ( y >= (3 + 6 + volbar_length* 6) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1- 6)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[9])  ?  mid : bg;
        else if ( y >= (3 + 6 + volbar_length* 7) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1- 7)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[8])  ?  mid : bg;
        else if ( y >= (3 + 6 + volbar_length* 8) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1- 8)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[7])  ?  mid : bg;
        else if ( y >= (3 + 6 + volbar_length* 9) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1- 9)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[6])  ?  mid : bg;
        else if ( y >= (3 + 6 + volbar_length*10) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1-10)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[5])  ?  low : bg;
        else if ( y >= (3 + 6 + volbar_length*11) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1-11)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[4])  ?  low : bg;
        else if ( y >= (3 + 6 + volbar_length*12) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1-12)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[3])  ?  low : bg;
        else if ( y >= (3 + 6 + volbar_length*13) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1-13)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[2])  ?  low : bg;
        else if ( y >= (3 + 6 + volbar_length*14) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1-14)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[1])  ?  low : bg;
        else if ( y >= (3 + 6 + volbar_length*15) && y <= (scrn_height - 1 - 3 - 5 - volbar_length*(16-1-15)) && x > (x_center - volbar_width / 2) && x <= (x_center + volbar_width / 2) ) oled_data <= (audio_out[0])  ?  low : bg;
        else oled_data <= bg;
    end
    
endmodule
