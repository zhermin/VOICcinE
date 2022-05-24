`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2020 23:01:11
// Design Name: 
// Module Name: chk_audio
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


module chk_audio(
    input clk_20khz,
    input clk_string,
    input clk_rng,
    input [5:0] current_state,
    input [11:0] mic_in,
    input [15:0] sw,
    input [4:0] press_btn,
    output [3:0] rand_num,
    output reg [15:0] max = 0, 
    output reg [15:0] audio_out,
    output reg [15:0] combat_led,
    output reg [3:0] an,
    output reg [7:0] seg,
    output reg [4:0] audio_decimal,
    output reg [5:0] monster_hp = 6'b111_111,
    output reg monster_dead,
    output reg [5:0] player_hp = 6'b111_111,
    output reg player_dead,
    output reg atk = 1, def = 0,
    output reg [1:0] chest1_open, chest2_open, chest3_open, chest4_open,
    output reg trap1_dmg, trap2_dmg, treasure1_heal, treasure2_heal
    );
    
    localparam main              = 6'b000_000;
    localparam intro_1           = 6'b000_001;
    localparam intro_2           = 6'b000_010;
    localparam intro_3           = 6'b000_011;
    localparam intro_4           = 6'b000_100;
    localparam intro_5           = 6'b000_101;
    localparam intro_6           = 6'b000_110;
    localparam intro_7           = 6'b000_111;
    localparam intro_8           = 6'b001_000;
    
    localparam m1_pretext        = 6'b001_001;
    localparam m2_pretext        = 6'b001_010;
    localparam m3_pretext        = 6'b001_011;
    localparam m4_pretext        = 6'b001_100;
    
    localparam m1_combat         = 6'b001_101;
    localparam m2_combat         = 6'b001_110;
    localparam m3_combat         = 6'b001_111;
    localparam m4_combat         = 6'b010_000;
    
    localparam m1_victory        = 6'b010_001;
    localparam m2_victory        = 6'b010_010;
    localparam m3_victory        = 6'b010_011;
    localparam m4_victory        = 6'b010_100; // vaccine
    
    localparam m1_death          = 6'b010_101;
    localparam m2_death          = 6'b010_110;
    localparam m3_death          = 6'b010_111;
    localparam m4_death          = 6'b011_000;
    
    localparam choice1           = 6'b011_001;
    localparam choice2           = 6'b011_010;
    localparam choice3           = 6'b011_011;
    
    localparam chest1_pretext    = 6'b011_100;
    localparam chest2_pretext    = 6'b011_101;
    localparam chest3_pretext    = 6'b011_110;
    localparam chest4_pretext    = 6'b011_111;
    
    localparam chest1            = 6'b100_000;
    localparam chest2            = 6'b100_001;
    localparam chest3            = 6'b100_010;
    localparam chest4            = 6'b100_011;
    
    localparam trap1_pretext     = 6'b100_100;
    localparam trap2_pretext     = 6'b100_101;
    
    localparam trap1             = 6'b100_110;
    localparam trap2             = 6'b100_111;
    
    localparam treasure1_pretext = 6'b101_000;
    localparam treasure2_pretext = 6'b101_001;
    
    localparam treasure1         = 6'b101_010;
    localparam treasure2         = 6'b101_011;
    
    localparam end1              = 6'b101_100;
    localparam end2              = 6'b101_101;
    localparam gameover          = 6'b101_110;
    
    localparam lab_graphics      = 6'b101_111;
    
    localparam chest1_posttext   = 6'b110_000;
    localparam chest2_posttext   = 6'b110_001;
    localparam chest3_posttext   = 6'b110_010;
    localparam chest4_posttext   = 6'b110_011;
    
    reg [10:0] count;
    reg [15:0] voice_cd;
    reg [15:0] amplitude;
    reg [1:0] an_counter;
    reg [7:0] first_digit, second_digit, third_digit, fourth_digit;
    
    reg [1:0] voice_range;
    reg [3:0] sampled_rand;
    
    // TRUE RNG using mic_in LSB as noise and LFSR (wow this took a LONG time to make the link)
    reg rng_en;
    lfsr fncall_lfsr (clk_rng, rng_en, mic_in[3:0], rand_num);
    
    // logic for combat / chest mode
    always @ (posedge clk_rng) begin
        if (voice_cd > 0 && voice_cd <= 60000) rng_en <= 0; else rng_en <= 1;
        case (rand_num)
            0:  begin third_digit <= 8'b0100_0000; fourth_digit <= 8'b1100_0000; end
            1:  begin third_digit <= 8'b0111_1001; fourth_digit <= 8'b1100_0000; end
            2:  begin third_digit <= 8'b0010_0100; fourth_digit <= 8'b1100_0000; end
            3:  begin third_digit <= 8'b0011_0000; fourth_digit <= 8'b1100_0000; end
            4:  begin third_digit <= 8'b0001_1001; fourth_digit <= 8'b1100_0000; end
            5:  begin third_digit <= 8'b0001_0010; fourth_digit <= 8'b1100_0000; end
            6:  begin third_digit <= 8'b0000_0010; fourth_digit <= 8'b1100_0000; end
            7:  begin third_digit <= 8'b0111_1000; fourth_digit <= 8'b1100_0000; end
            8:  begin third_digit <= 8'b0000_0000; fourth_digit <= 8'b1100_0000; end
            9:  begin third_digit <= 8'b0001_0000; fourth_digit <= 8'b1100_0000; end
            10: begin third_digit <= 8'b0100_0000; fourth_digit <= 8'b1111_1001; end
            11: begin third_digit <= 8'b0111_1001; fourth_digit <= 8'b1111_1001; end
            12: begin third_digit <= 8'b0010_0100; fourth_digit <= 8'b1111_1001; end
            13: begin third_digit <= 8'b0011_0000; fourth_digit <= 8'b1111_1001; end
            14: begin third_digit <= 8'b0001_1001; fourth_digit <= 8'b1111_1001; end
            15: begin third_digit <= 8'b0001_0010; fourth_digit <= 8'b1111_1001; end
        endcase
    end
    
    always @ (posedge clk_20khz or posedge press_btn[2]) begin
        if (press_btn[2]) begin // force reset (reset reference)
//            voice_cd <= 0;
//            atk <= 1;
//            def <= 0;
//            monster_hp <= 6'b111_111;
//            player_hp <= 6'b111_111;
        end else begin // ref to combat screens / chest screens
        
            // replay
            if (current_state == main) begin 
                monster_hp <= 6'b111_111;
                player_hp <= 6'b111_111;
                monster_dead <= 0;
                player_dead <= 0;
                atk <= 1;
                def <= 0;
                chest1_open <= 0;
                chest2_open <= 0;
                chest3_open <= 0;
                chest4_open <= 0;
                trap1_dmg <= 0;
                trap2_dmg <= 0;
                treasure1_heal <= 0;
                treasure2_heal <= 0;
            end
            
            // reset elsewhere
            if (monster_hp == 6'b111_111 && monster_dead) monster_dead <= 0; // monster reset since not game over lol
            if (player_hp == 6'b111_111 && player_dead) player_dead <= 0; // player reset

            if (!monster_hp) begin // soft reset of variables
                monster_dead <= 1;
                monster_hp <= 6'b111_111;
                atk <= 1;
                def <= 0;
            end
            
            if (!player_hp) begin player_dead <= 1; end // game over bro, get to the end screen
            
            // states where countdown is required
            if (current_state == m1_combat
            ||  current_state == m2_combat
            ||  current_state == m3_combat
            ||  current_state == m4_combat
            ||  current_state == chest1
            ||  current_state == chest2
            ||  current_state == chest3
            ||  current_state == chest4
            ||  current_state == trap1_pretext
            ||  current_state == trap2_pretext
            ||  current_state == treasure1_pretext
            ||  current_state == treasure2_pretext
            )   voice_cd <= voice_cd + 1; // counts up to 2^16 = 65536
            else voice_cd <= 0;
            
            // led countdown
                 if (voice_cd ==     0) combat_led <= 0;
            else if (voice_cd <=  3750) combat_led <= 16'b1111_1111_1111_1111;
            else if (voice_cd <=  7500) combat_led <= 16'b0111_1111_1111_1111;
            else if (voice_cd <= 11250) combat_led <= 16'b0011_1111_1111_1111;
            else if (voice_cd <= 15000) combat_led <= 16'b0001_1111_1111_1111;
            else if (voice_cd <= 18750) combat_led <= 16'b0000_1111_1111_1111;
            else if (voice_cd <= 22500) combat_led <= 16'b0000_0111_1111_1111;
            else if (voice_cd <= 26250) combat_led <= 16'b0000_0011_1111_1111;
            else if (voice_cd <= 30000) combat_led <= 16'b0000_0001_1111_1111;
            else if (voice_cd <= 33750) combat_led <= 16'b0000_0000_1111_1111;
            else if (voice_cd <= 37500) combat_led <= 16'b0000_0000_0111_1111;
            else if (voice_cd <= 41250) combat_led <= 16'b0000_0000_0011_1111;
            else if (voice_cd <= 45000) combat_led <= 16'b0000_0000_0001_1111;
            else if (voice_cd <= 48750) combat_led <= 16'b0000_0000_0000_1111;
            else if (voice_cd <= 52500) combat_led <= 16'b0000_0000_0000_0111;
            else if (voice_cd <= 56250) combat_led <= 16'b0000_0000_0000_0011;
            else if (voice_cd <= 60000) combat_led <= 16'b0000_0000_0000_0001;
            else combat_led <= 0;
            
            // at end of 3s countdown
            if (voice_cd == 60000) begin // each cycle = 60000*50us = 3s
            
                if (current_state == chest1) begin
                    if (audio_decimal >= rand_num && audio_decimal <= (rand_num + 1)) chest1_open <= 1;
                    else chest1_open <= 2;
                end else if (current_state == chest2) begin
                    if (audio_decimal >= rand_num && audio_decimal <= (rand_num + 1)) chest2_open <= 1;
                    else chest2_open <= 2;
                end else if (current_state == chest3) begin
                    if (audio_decimal >= rand_num && audio_decimal <= (rand_num + 1)) chest3_open <= 1;
                    else chest3_open <= 2;
                end else if (current_state == chest4) begin
                    if (audio_decimal >= rand_num && audio_decimal <= (rand_num + 1)) chest4_open <= 1;
                    else chest4_open <= 2;
                
                end else if (current_state == treasure1_pretext && !treasure1_heal) begin
                    case (player_hp)
                        6'b011_111: player_hp <= 6'b111_111;
                        6'b001_111: player_hp <= 6'b011_111;
                        6'b000_111: player_hp <= 6'b001_111;
                        6'b000_011: player_hp <= 6'b000_111;
                        6'b000_001: player_hp <= 6'b000_011;
                    endcase
                    treasure1_heal <= 1;
                end else if (current_state == treasure2_pretext && !treasure2_heal) begin
                    case (player_hp)
                        6'b011_111: player_hp <= 6'b111_111;
                        6'b001_111: player_hp <= 6'b011_111;
                        6'b000_111: player_hp <= 6'b001_111;
                        6'b000_011: player_hp <= 6'b000_111;
                        6'b000_001: player_hp <= 6'b000_011;
                    endcase
                    treasure2_heal <= 1;
                    
                end else if (current_state == trap1_pretext && !trap1_dmg) begin
                    player_hp <= player_hp >> 2;
                    trap1_dmg <= 1;
                end else if (current_state == trap2_pretext && !trap2_dmg) begin
                    player_hp <= player_hp >> 2;
                    trap2_dmg <= 1;
                    
                end else if (current_state == m1_combat) begin
                    if (atk && (audio_decimal >= rand_num && audio_decimal <= (rand_num + 3))) monster_hp <= monster_hp >> 3;
                    else if (def && (audio_decimal < rand_num || audio_decimal > (rand_num + 3))) player_hp <= player_hp >> 1;
                end else if (current_state == m2_combat) begin
                    if (atk && audio_decimal >= rand_num && audio_decimal <= (rand_num + 2)) monster_hp <= monster_hp >> 2;
                    else if (def && audio_decimal < rand_num || audio_decimal > rand_num + 2) player_hp <= player_hp >> 1;
                end else if (current_state == m3_combat) begin
                    if (atk && (audio_decimal >= rand_num && audio_decimal <= (rand_num + 2))) monster_hp <= monster_hp >> 2;
                    else if (def && (audio_decimal < rand_num || audio_decimal > (rand_num + 2))) player_hp <= player_hp >> 1;
                end else if (current_state == m4_combat) begin
                    if (atk && audio_decimal >= rand_num && audio_decimal <= (rand_num + 1)) monster_hp <= monster_hp >> 1;
                    else if (def && audio_decimal < rand_num || audio_decimal > rand_num + 1) player_hp <= player_hp >> 1;
                    
                end
                
                // switch turns
                if (current_state == m1_combat
                ||  current_state == m2_combat
                ||  current_state == m3_combat
                ||  current_state == m4_combat) begin
                atk <= ~atk;
                def <= ~def;
                end
                
            end
        end
    end
    
    // logic for audio sampling, shouldnt need to touch
    always @ (posedge clk_20khz) begin
        if (sw[14]) count <= count; else count <= count + 1;
        if (!count) begin
            amplitude <= max;
            max <= 0; // reset max
        end else begin
            if (max < mic_in) max <= mic_in;
        end
    end   
        
    always @ (posedge clk_20khz) begin
             if (amplitude<16'd2176)                       begin audio_out <= 16'b0000_0000_0000_0000; first_digit <= 8'b1100_0000; second_digit <= 8'b1100_0000; audio_decimal <= 5'd0 ; end
        else if (amplitude>16'd2176 && amplitude<16'd2296) begin audio_out <= 16'b0000_0000_0000_0001; first_digit <= 8'b1111_1001; second_digit <= 8'b1100_0000; audio_decimal <= 5'd1 ; end
        else if (amplitude>16'd2296 && amplitude<16'd2416) begin audio_out <= 16'b0000_0000_0000_0011; first_digit <= 8'b1010_0100; second_digit <= 8'b1100_0000; audio_decimal <= 5'd2 ; end
        else if (amplitude>16'd2416 && amplitude<16'd2536) begin audio_out <= 16'b0000_0000_0000_0111; first_digit <= 8'b1011_0000; second_digit <= 8'b1100_0000; audio_decimal <= 5'd3 ; end
        else if (amplitude>16'd2536 && amplitude<16'd2656) begin audio_out <= 16'b0000_0000_0000_1111; first_digit <= 8'b1001_1001; second_digit <= 8'b1100_0000; audio_decimal <= 5'd4 ; end
        else if (amplitude>16'd2656 && amplitude<16'd2776) begin audio_out <= 16'b0000_0000_0001_1111; first_digit <= 8'b1001_0010; second_digit <= 8'b1100_0000; audio_decimal <= 5'd5 ; end
        else if (amplitude>16'd2776 && amplitude<16'd2896) begin audio_out <= 16'b0000_0000_0011_1111; first_digit <= 8'b1000_0010; second_digit <= 8'b1100_0000; audio_decimal <= 5'd6 ; end
        else if (amplitude>16'd2896 && amplitude<16'd3016) begin audio_out <= 16'b0000_0000_0111_1111; first_digit <= 8'b1111_1000; second_digit <= 8'b1100_0000; audio_decimal <= 5'd7 ; end
        else if (amplitude>16'd3016 && amplitude<16'd3136) begin audio_out <= 16'b0000_0000_1111_1111; first_digit <= 8'b1000_0000; second_digit <= 8'b1100_0000; audio_decimal <= 5'd8 ; end
        else if (amplitude>16'd3136 && amplitude<16'd3256) begin audio_out <= 16'b0000_0001_1111_1111; first_digit <= 8'b1001_0000; second_digit <= 8'b1100_0000; audio_decimal <= 5'd9 ; end
        else if (amplitude>16'd3256 && amplitude<16'd3376) begin audio_out <= 16'b0000_0011_1111_1111; first_digit <= 8'b1100_0000; second_digit <= 8'b1111_1001; audio_decimal <= 5'd10; end
        else if (amplitude>16'd3376 && amplitude<16'd3496) begin audio_out <= 16'b0000_0111_1111_1111; first_digit <= 8'b1111_1001; second_digit <= 8'b1111_1001; audio_decimal <= 5'd11; end
        else if (amplitude>16'd3496 && amplitude<16'd3616) begin audio_out <= 16'b0000_1111_1111_1111; first_digit <= 8'b1010_0100; second_digit <= 8'b1111_1001; audio_decimal <= 5'd12; end
        else if (amplitude>16'd3616 && amplitude<16'd3736) begin audio_out <= 16'b0001_1111_1111_1111; first_digit <= 8'b1011_0000; second_digit <= 8'b1111_1001; audio_decimal <= 5'd13; end
        else if (amplitude>16'd3736 && amplitude<16'd3856) begin audio_out <= 16'b0011_1111_1111_1111; first_digit <= 8'b1001_1001; second_digit <= 8'b1111_1001; audio_decimal <= 5'd14; end 
        else if (amplitude>16'd3856 && amplitude<16'd3976) begin audio_out <= 16'b0111_1111_1111_1111; first_digit <= 8'b1001_0010; second_digit <= 8'b1111_1001; audio_decimal <= 5'd15; end 
        else if (amplitude>16'd3976 && amplitude<16'd4096) begin audio_out <= 16'b1111_1111_1111_1111; first_digit <= 8'b1000_0010; second_digit <= 8'b1111_1001; audio_decimal <= 5'd16; end
    end
    
    always @ (posedge clk_string) begin
        an_counter <= an_counter + 1;
        case (an_counter)
            2'd0: begin an <= 4'b1110; if (atk) seg <= first_digit;  else seg <= 8'b1111_1111; end
            2'd1: begin an <= 4'b1101; if (atk) seg <= second_digit; else seg <= 8'b1111_1111; end
            2'd2: begin an <= 4'b1011; if (def) seg <= first_digit;  else seg <= 8'b1111_1111; end
            2'd3: begin an <= 4'b0111; if (def) seg <= second_digit; else seg <= 8'b1111_1111; end
        endcase
    end

endmodule
