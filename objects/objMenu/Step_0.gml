/// @description Keyboard controls
if ok != 2 {
    if keyboard_check_pressed(vk_down) {
        menuSelected +=1;
        if (menuSelected > menuText[menuPage,0]) { menuSelected = 1; }
        audio_play_sound(sndselect2,0,0)
    } else if keyboard_check_pressed(vk_up) {
        menuSelected -=1;
        if (menuSelected < 1) { menuSelected = menuText[menuPage,0]; }
        audio_play_sound(sndselect2,0,0)
    } else if keyboard_check_pressed(global.kb_choose) {
        audio_play_sound(sndchoose,0,0)
        if (menuSelected = 1) {  
            global.theroom = rmNewGame
            with instance_create(0,0,objFadeOut) {
                effect_leave = tr_pixel;       
                effect_enter = tr_pixel;
                fadespd = 1/25
            }
            ok = 2
        } else if (menuSelected = 2) {   
            global.theroom = rmControls
            instance_create(0,0,objFadeOut)
            ok = 2
        } else if (menuSelected = 3) {  
            game_end() 
        }
    } 
}

