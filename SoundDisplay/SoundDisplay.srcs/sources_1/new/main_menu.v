`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2020 16:49:01
// Design Name: 
// Module Name: main_menu
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


module main_menu(
    input [6:0] x,
    input [5:0] y,
    input clk_oled,
    input clk_animation,
    input [4:0] press_btn, // center, up, down, left, right
    input en,
    input [4:0] audio_decimal,
    input [3:0] rand_num,
    input [5:0] monster_hp,
    input monster_dead,
    input [5:0] player_hp,
    input player_dead,
    input atk, def,
    input [1:0] chest1_open, chest2_open, chest3_open, chest4_open,
    input trap1_dmg, trap2_dmg, treasure1_heal, treasure2_heal,
    output reg [15:0] mainmenu_pixels,
    output reg [5:0] current_state
    );
    
    reg [5:0] next_state;
    
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
    
    localparam credits           = 6'b110_100;
    
    // screen file instantiations
    wire [15:0] startscrn_pixels, intro1_pixels, intro2_pixels, intro3_pixels, intro4_pixels, intro5_pixels, intro6_pixels, intro7_pixels, intro8_pixels;
    
    wire [15:0] m1_pretext_pixels, m2_pretext_pixels, m3_pretext_pixels, m4_pretext_pixels;
    wire [15:0] m1_combat_pixels, m2_combat_pixels, m3_combat_pixels, m4_combat_pixels;
    wire [15:0] m1_death_pixels, m2_death_pixels, m3_death_pixels, m4_death_pixels;
    wire [15:0] gameover_pixels, victory_pixels;
    
    wire [15:0] choice_pixels;
    wire [15:0] chest_pretext_pixels, chest_pixels, chest_posttext_pixels; 
    wire [15:0] trap_pt_pixels, trap_pixels;
    wire [15:0] treasure_pt_pixels, treasure_pixels;
    
    wire [15:0] lab_graphics_pixels, vaccine_graphics_pixels;
    wire [15:0] end1_pixels, end2_pixels, credits_pixels;
    
    start_screen        scrn_0                (x,y, startscrn_pixels);
    intro1              scrn_1                (x,y, intro1_pixels);
    intro2              scrn_2                (x,y, intro2_pixels);
    intro3              scrn_3                (x,y, intro3_pixels);
    intro4              scrn_4                (x,y, intro4_pixels);
    intro5              scrn_5                (x,y, intro5_pixels);
    intro6              scrn_6                (x,y, intro6_pixels);
    intro7              scrn_7                (x,y, intro7_pixels);
    intro8              scrn_8                (x,y, intro8_pixels);
    
    m1_pretext_scrn     scrn_pretext_m1       (x,y, m1_pretext_pixels);
    m2_pretext_scrn     scrn_pretext_m2       (x,y, m2_pretext_pixels);
    m3_pretext_scrn     scrn_pretext_m3       (x,y, m3_pretext_pixels);
    m4_pretext_scrn     scrn_pretext_m4       (x,y, m4_pretext_pixels);
    
    m1_combat_scrn      scrn_combat_m1        (x,y, clk_animation, rand_num, monster_hp, player_hp, atk, def, m1_combat_pixels);
    m2_combat_scrn      scrn_combat_m2        (x,y, clk_animation, rand_num, monster_hp, player_hp, atk, def, m2_combat_pixels);
    m3_combat_scrn      scrn_combat_m3        (x,y, clk_animation, rand_num, monster_hp, player_hp, atk, def, m3_combat_pixels);
    m4_combat_scrn      scrn_combat_m4        (x,y, clk_animation, rand_num, monster_hp, player_hp, atk, def, m4_combat_pixels);
    
    m1_death_scrn       scrn_death_m1         (x,y, m1_death_pixels);
    m2_death_scrn       scrn_death_m2         (x,y, m2_death_pixels);
    m3_death_scrn       scrn_death_m3         (x,y, m3_death_pixels);
    m4_death_scrn       scrn_death_m4         (x,y, m4_death_pixels);
    
    victory             scrn_victory          (x,y, victory_pixels);
    choice              scrn_choices          (x,y, clk_animation, choice_pixels);
    
    chest_pretext       scrn_chest_pretext    (x,y, chest_pretext_pixels);
    chest               scrn_chest            (x,y, rand_num, chest_pixels);
    chest_posttext_scrn scrn_chest_posttext   (x,y, chest_posttext_pixels);
  
    trap_pretext        scrn_trap_pt          (x,y, player_hp, trap_pt_pixels);
    trap                scrn_trap             (x,y, player_hp, trap_pixels);
  
    treasure_pretext    scrn_treasure_pt      (x,y, player_hp, treasure_pt_pixels);
    treasure            scrn_treasure         (x,y, player_hp, treasure_pixels);
    
    lab_graphics        scrn_lab_graphics     (x,y, lab_graphics_pixels);
    vaccine_graphics    scrn_vaccine_graphics (x,y, clk_oled, vaccine_graphics_pixels);
    
    gameover            scrn_gameover         (x,y, gameover_pixels);
    end1                scrn_end1             (x,y, end1_pixels);
    end2                scrn_end2             (x,y, end2_pixels);
    credits_scrn        scrn_credits          (x,y, credits_pixels);
    
    // fixing button press detections by checking only after button is released
    reg center_pressed, center_prev;
    reg left_pressed, left_prev;
    reg right_pressed, right_prev;
    always @ (posedge clk_oled) begin center_prev <= press_btn[0]; left_prev <= press_btn[3]; right_prev <= press_btn[4]; end
    always @ (*) begin
        if (press_btn[0] && !center_prev) center_pressed = 1; else center_pressed = 0;
        if (press_btn[3] && !left_prev)   left_pressed   = 1; else left_pressed = 0;
        if (press_btn[4] && !right_prev)  right_pressed  = 1; else right_pressed = 0;
    end
    
    always @ (current_state, center_pressed, left_pressed, right_pressed, en, player_hp) begin // next state fsm logic
        case (current_state)
            main   : if (center_pressed && en) next_state = intro_1;      else next_state = main;
            intro_1: if (center_pressed && en) next_state = intro_2;      else next_state = intro_1;
            intro_2: if (center_pressed && en) next_state = intro_3;      else next_state = intro_2;
            intro_3: if (center_pressed && en) next_state = intro_4;      else next_state = intro_3;
            intro_4: if (center_pressed && en) next_state = intro_5;      else next_state = intro_5;
            intro_5: if (center_pressed && en) next_state = intro_6;      else next_state = intro_5;
            intro_6: if (center_pressed && en) next_state = intro_7;      else next_state = intro_6;
            intro_7: if (center_pressed && en) next_state = intro_8;      else next_state = intro_7;
            intro_8: if (center_pressed && en) next_state = m1_pretext;   else next_state = intro_8;
            
            m1_pretext: if (center_pressed && en) next_state = m1_combat; else next_state = m1_pretext;
            m2_pretext: if (center_pressed && en) next_state = m2_combat; else next_state = m2_pretext;
            m3_pretext: if (center_pressed && en) next_state = m3_combat; else next_state = m3_pretext;
            m4_pretext: if (center_pressed && en) next_state = m4_combat; else next_state = m4_pretext;
            
            m1_combat:
            begin
                     if (monster_dead  && en) next_state = m1_victory;
                else if (player_dead   && en) next_state = m1_death;
                else                          next_state = m1_combat;
            end
            
            m2_combat:
            begin
                     if (monster_dead  && en) next_state = m2_victory;
                else if (player_dead   && en) next_state = m2_death;
                else                          next_state = m2_combat;
            end
            
            m3_combat:
            begin
                     if (monster_dead  && en) next_state = m3_victory;
                else if (player_dead   && en) next_state = m3_death;
                else                          next_state = m3_combat;
            end
            
            m4_combat:
            begin
                     if (monster_dead  && en) next_state = m4_victory;
                else if (player_dead   && en) next_state = m4_death;
                else                          next_state = m4_combat;
            end
            
            m1_victory: if (center_pressed && en) next_state = choice1; else next_state = m1_victory;
            m2_victory: if (center_pressed && en) next_state = choice2; else next_state = m2_victory;
            m3_victory: if (center_pressed && en) next_state = choice3; else next_state = m3_victory;
            m4_victory: if (center_pressed && en) next_state = end1;    else next_state = m4_victory; // aft final boss (vaccine)
            
            m1_death:   if (center_pressed && en) next_state = gameover; else next_state = m1_death;
            m2_death:   if (center_pressed && en) next_state = gameover; else next_state = m2_death;
            m3_death:   if (center_pressed && en) next_state = gameover; else next_state = m3_death;
            m4_death:   if (center_pressed && en) next_state = gameover; else next_state = m4_death;
            
            choice1:
            begin
                     if (left_pressed  && en) next_state = m2_pretext;
                else if (right_pressed && en) next_state = chest1_pretext;
                else next_state = choice1;
            end
            
            choice2:
            begin
                     if (left_pressed  && en) next_state = chest2_pretext;
                else if (right_pressed && en) next_state = chest2_pretext;
                else next_state = choice2;
            end
            
            choice3:
            begin
                     if (left_pressed  && en) next_state = chest3_pretext;
                else if (right_pressed && en) next_state = chest4_pretext;
                else next_state = choice3;
            end
            
            chest1_pretext: if (center_pressed && en) next_state = chest1; else next_state = chest1_pretext;
            chest2_pretext: if (center_pressed && en) next_state = chest2; else next_state = chest2_pretext;
            chest3_pretext: if (center_pressed && en) next_state = chest3; else next_state = chest3_pretext;
            chest4_pretext: if (center_pressed && en) next_state = chest4; else next_state = chest4_pretext;
            
            chest1:
            begin
                     if (chest1_open == 1 && en) next_state = trap1_pretext; // opened
                else if (chest1_open == 2 && en) next_state = chest1_posttext; // did not open
                else next_state = chest1;
            end
            
            chest2:
            begin
                     if (chest2_open == 1 && en) next_state = treasure1_pretext; // opened
                else if (chest2_open == 2 && en) next_state = chest2_posttext; // did not open
                else next_state = chest2;
            end
            
            chest3:
            begin
                     if (chest3_open == 1 && en) next_state = trap2_pretext; // opened
                else if (chest3_open == 2 && en) next_state = chest3_posttext; // did not open
                else next_state = chest3;
            end
            
            chest4:
            begin
                     if (chest4_open == 1 && en) next_state = treasure2_pretext; // opened
                else if (chest4_open == 2 && en) next_state = chest4_posttext; // did not open
                else next_state = chest4;
            end
            
            chest1_posttext: if (center_pressed && en) next_state = choice2; else next_state = chest1_posttext;
            chest2_posttext: if (center_pressed && en) next_state = m3_pretext; else next_state = chest2_posttext;
            chest3_posttext: if (center_pressed && en) next_state = lab_graphics; else next_state = chest3_posttext;
            chest4_posttext: if (center_pressed && en) next_state = lab_graphics; else next_state = chest4_posttext;
            
            trap1_pretext: if (trap1_dmg == 1 && en) next_state = trap1; else next_state = trap1_pretext;
            trap1: 
            begin
                     if (player_dead  && center_pressed && en) next_state = gameover;
                else if (!player_dead && center_pressed && en) next_state = choice2;
                else next_state = trap1;
            end
            
            trap2_pretext: if (trap2_dmg == 1 && en) next_state = trap2; else next_state = trap2_pretext;
            trap2: 
            begin
                     if (player_dead  && center_pressed && en) next_state = gameover;
                else if (!player_dead && center_pressed && en) next_state = lab_graphics;
                else next_state = trap2;
            end
            
            treasure1_pretext: if (treasure1_heal == 1 && en) next_state = treasure1; else next_state = treasure1_pretext;
            treasure1: if (center_pressed && en) next_state = m3_pretext; else next_state = treasure1;
            
            treasure2_pretext: if (treasure2_heal == 1 && en) next_state = treasure2; else next_state = treasure2_pretext;
            treasure2: if (center_pressed && en) next_state = lab_graphics; else next_state = treasure2;
            
            lab_graphics: if (center_pressed && en) next_state = m4_pretext; else next_state = lab_graphics;
            
            gameover: if (center_pressed && en) next_state = main; else next_state = gameover;
            end1: if (center_pressed && en) next_state = end2; else next_state = end1;
            end2: if (center_pressed && en) next_state = credits; else next_state = end2;
            credits: if (center_pressed && en) next_state = main; else next_state = credits;
            
            default: next_state = 6'bxxx_xxx;
        endcase
    end
    
    always @ (current_state) begin // match states with correct screens
             if (current_state == main)             mainmenu_pixels = startscrn_pixels;
        else if (current_state == intro_1)          mainmenu_pixels = intro1_pixels;
        else if (current_state == intro_2)          mainmenu_pixels = intro2_pixels;
        else if (current_state == intro_3)          mainmenu_pixels = intro3_pixels;
        else if (current_state == intro_4)          mainmenu_pixels = intro4_pixels;
        else if (current_state == intro_5)          mainmenu_pixels = intro5_pixels;
        else if (current_state == intro_6)          mainmenu_pixels = intro6_pixels;
        else if (current_state == intro_7)          mainmenu_pixels = intro7_pixels;
        else if (current_state == intro_8)          mainmenu_pixels = intro8_pixels;
        
        else if (current_state == m1_pretext)       mainmenu_pixels = m1_pretext_pixels;
        else if (current_state == m2_pretext)       mainmenu_pixels = m2_pretext_pixels;
        else if (current_state == m3_pretext)       mainmenu_pixels = m3_pretext_pixels;
        else if (current_state == m4_pretext)       mainmenu_pixels = m4_pretext_pixels;
        
        else if (current_state == m1_combat)        mainmenu_pixels = m1_combat_pixels;
        else if (current_state == m2_combat)        mainmenu_pixels = m2_combat_pixels;
        else if (current_state == m3_combat)        mainmenu_pixels = m3_combat_pixels;
        else if (current_state == m4_combat)        mainmenu_pixels = m4_combat_pixels;

        else if (current_state == m1_victory
        || current_state == m2_victory
        || current_state == m3_victory
        )                                           mainmenu_pixels = victory_pixels;
        else if (current_state == m4_victory)       mainmenu_pixels = vaccine_graphics_pixels;
     
        else if (current_state == m1_death)         mainmenu_pixels = m1_death_pixels;
        else if (current_state == m2_death)         mainmenu_pixels = m2_death_pixels;
        else if (current_state == m3_death)         mainmenu_pixels = m3_death_pixels;
        else if (current_state == m4_death)         mainmenu_pixels = m4_death_pixels;
        
        else if (current_state == choice1
        || current_state == choice2
        || current_state == choice3
        )                                           mainmenu_pixels = choice_pixels;
        
        else if (current_state == chest1_pretext
        || current_state == chest2_pretext
        || current_state == chest3_pretext
        || current_state == chest4_pretext
        )                                           mainmenu_pixels = chest_pretext_pixels;
        
        else if (current_state == chest1
        || current_state == chest2
        || current_state == chest3
        || current_state == chest4
        )                                           mainmenu_pixels = chest_pixels;
        
        else if (current_state == chest1_posttext
        || current_state == chest2_posttext
        || current_state == chest3_posttext
        || current_state == chest4_posttext
        )                                           mainmenu_pixels = chest_posttext_pixels;
        
        else if (current_state == trap1_pretext || current_state == trap2_pretext)         mainmenu_pixels = trap_pt_pixels;
        else if (current_state == trap1 || current_state == trap2)                         mainmenu_pixels = trap_pixels;
        
        else if (current_state == treasure1_pretext || current_state == treasure2_pretext) mainmenu_pixels = treasure_pt_pixels;
        else if (current_state == treasure1 || current_state == treasure2)                 mainmenu_pixels = treasure_pixels;
        
        else if (current_state == lab_graphics)     mainmenu_pixels = lab_graphics_pixels;
        
        else if (current_state == gameover)         mainmenu_pixels = gameover_pixels;
        else if (current_state == end1)             mainmenu_pixels = end1_pixels;
        else if (current_state == end2)             mainmenu_pixels = end2_pixels;
        else if (current_state == credits)          mainmenu_pixels = credits_pixels;
    end
    
    always @ (posedge clk_oled or posedge press_btn[2]) begin // state transition logic
        if (press_btn[2]) current_state = main; // reset game
        else begin
            if ((monster_dead        || player_dead)
            ||  (chest1_open    == 1 || chest1_open    == 2)
            ||  (chest2_open    == 1 || chest2_open    == 2)
            ||  (chest3_open    == 1 || chest3_open    == 2)
            ||  (chest4_open    == 1 || chest4_open    == 2)
            ||  (trap1_dmg      == 1 || trap2_dmg      == 1)
            ||  (treasure1_heal == 1 || treasure2_heal == 1)
            ||  (left_pressed        || right_pressed)
            ||  center_pressed
            ) current_state = next_state;
        end
    end
    
endmodule
