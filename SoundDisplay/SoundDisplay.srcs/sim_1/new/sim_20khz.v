`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2020 15:07:03
// Design Name: 
// Module Name: sim_20khz
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


module sim_20khz();

    reg sim_clk;
    wire sim_20khz_clk;
    
    initial begin
        sim_clk = 0;
    end
    
    always begin
        #5 sim_clk = ~sim_clk;
    end
    
    div_20khz test_div_20khz (sim_clk, sim_20khz_clk);

endmodule
