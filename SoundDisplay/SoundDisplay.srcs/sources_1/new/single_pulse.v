`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2020 00:30:46
// Design Name: 
// Module Name: single_pulse
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


module single_pulse( input pushbutton, input_clock, output sp_out );

    wire master_out, slave_out;
    d_ff master_dff ( pushbutton, input_clock, master_out );
    d_ff slave_dff ( master_out, input_clock, slave_out );

    assign sp_out = ~slave_out & master_out;

endmodule
