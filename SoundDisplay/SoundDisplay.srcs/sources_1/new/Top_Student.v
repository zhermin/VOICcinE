`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
//  FILL IN THE FOLLOWING INFORMATION:
//
//  LAB SESSION DAY (Delete where applicable): WEDNESDAY P.M
//
//  STUDENT A NAME: ANGELINA GRACE
//  STUDENT A MATRICULATION NUMBER: A0201165W
//
//  STUDENT B NAME: TAM ZHER MIN
//  STUDENT B MATRICULATION NUMBER: A0206262N 
//
//////////////////////////////////////////////////////////////////////////////////


module Top_Student (
    input  basys_clk,
    input  [4:0] btn,
    input  [15:0] sw,
    input  J_MIC3_Pin3,   // Connect from this signal to Audio_Capture.v
    output J_MIC3_Pin1,   // Connect to this signal from Audio_Capture.v
    output J_MIC3_Pin4,   // Connect to this signal from Audio_Capture.v
    output pmodoledrgb_cs, 
    output pmodoledrgb_sdin, 
    output pmodoledrgb_sclk, 
    output pmodoledrgb_d_cn, 
    output pmodoledrgb_resn, 
    output pmodoledrgb_vccen, 
    output pmodoledrgb_pmoden,
    output [15:0] led,
    output [3:0] an,
    output [7:0] seg
);

    // clock divisions
    wire clk_20khz, clk_6p25mhz, clk_btn, clk_string, clk_oled, clk_atk, clk_animation;
    clk_div fncall_20khz (basys_clk, 2499, clk_20khz);
    clk_div fncall_6p25mhz (basys_clk, 7, clk_6p25mhz);
    clk_div fncall_btn (basys_clk, 2_000_000, clk_btn);
    clk_div fncall_string (basys_clk, 131_233, clk_string);
    clk_div fncall_oled (basys_clk, 3, clk_oled);
    clk_div fncall_rng (basys_clk, 50_000_000, clk_animation);
    
    // single pulses for each button
    wire [4:0] press_btn;
    single_pulse sp_center (btn[0], clk_btn, press_btn[0]); // center
    single_pulse sp_up (btn[1], clk_btn, press_btn[1]); // up
    single_pulse sp_down (btn[2], clk_btn, press_btn[2]); // down
    single_pulse sp_left (btn[3], clk_btn, press_btn[3]); // left
    single_pulse sp_right (btn[4], clk_btn, press_btn[4]); // right
    
    // io ports for audio, anode, segment and led signals
    wire [11:0] mic_in;
    wire [15:0] max, audio_out, combat_led;
    wire [3:0] an_out;
    wire [7:0] seg_out;
    wire [4:0] audio_decimal;
    
    // wire connections for data transfer of game data
    wire [3:0] rand_num;
    wire [5:0] monster_hp;
    wire monster_dead;
    wire [5:0] player_hp;
    wire player_dead;
    wire atk, def;
    wire [1:0] chest1_open, chest2_open, chest3_open, chest4_open;
    wire trap1_dmg, trap2_dmg, treasure1_heal, treasure2_heal;
    
    // crucial information for current state
    wire [5:0] current_state;
    
    Audio_Capture fncall_AC (.CLK(basys_clk), .cs(clk_20khz), .MISO(J_MIC3_Pin3), .clk_samp(J_MIC3_Pin1), .sclk(J_MIC3_Pin4), .sample(mic_in));
    chk_audio fncall_chkaudio (
        clk_20khz,
        clk_string,
        basys_clk,
        current_state,
        mic_in,
        sw,
        press_btn,
        rand_num,
        max,
        audio_out,
        combat_led,
        an_out,
        seg_out,
        audio_decimal,
        monster_hp,
        monster_dead,
        player_hp,
        player_dead,
        atk, def,
        chest1_open, chest2_open, chest3_open, chest4_open,
        trap1_dmg, trap2_dmg, treasure1_heal, treasure2_heal
    );

    // conversion to cartesian coordinates (x,y)
    wire [12:0] pixel_index;
    wire [6:0] x;
    wire [5:0] y;
    to_coords fncall_getcoords (pixel_index, x, y);
    
    // volume bar color selection
    wire [15:0] volbar_pixels;
    draw_screen fncall_drawscreen (x,y, clk_oled, sw, audio_out, volbar_pixels);
    
    // voiccine game wrapper
    wire [15:0] mainmenu_pixels;
    main_menu fncall_mainmenu (
        x,y,
        clk_oled,
        clk_animation,
        press_btn,
        sw[4],
        audio_decimal,
        rand_num,
        monster_hp,
        monster_dead,
        player_hp,
        player_dead,
        atk, def,
        chest1_open, chest2_open, chest3_open, chest4_open,
        trap1_dmg, trap2_dmg, treasure1_heal, treasure2_heal,
        mainmenu_pixels,
        current_state
    );
    
    // switch multiplexers
    wire oled_reset = (sw[4]) ? 0 : press_btn[0];
    wire [15:0] oled_data = (!sw[0]) ? 0 : (sw[4]) ? mainmenu_pixels : volbar_pixels;
    
    assign led = (!sw[0]) ? 0 : (sw[4]) ? combat_led : (sw[15]) ? audio_out : {4'd0000, mic_in};
    assign an = (!sw[0]) ? 4'b1111 : an_out;
    assign seg = (!sw[0]) ? 8'b1111_1111 : seg_out;
    
    wire frame_bgn, sending_pxls, sample_pxl, test_state;
    Oled_Display fncall_OLED (
        .clk(clk_6p25mhz), // 6.25mhz clk as input (no need new mod) 
        .reset(oled_reset), // from single pulse module using 6.25mhz, as a wire 
        .frame_begin(frame_bgn), 
        .sending_pixels(sending_pxls), 
        .sample_pixel(sample_pxl), 
        .pixel_index(pixel_index), // 13-bit pixel_index OUTPUT | for screen coordinate
        .pixel_data(oled_data),
        .cs(pmodoledrgb_cs), 
        .sdin(pmodoledrgb_sdin), 
        .sclk(pmodoledrgb_sclk), 
        .d_cn(pmodoledrgb_d_cn), 
        .resn(pmodoledrgb_resn), 
        .vccen(pmodoledrgb_vccen), 
        .pmoden(pmodoledrgb_pmoden), 
        .teststate(test_state)
    );

endmodule