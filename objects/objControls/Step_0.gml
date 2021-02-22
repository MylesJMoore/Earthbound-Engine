/// @description Keyboard controls
if !wait and ok != 2 {
    if keyboard_check_pressed(vk_down) {
        menuSelected[menuPage]++;
        if (menuSelected[menuPage] > menuText[menuPage,0]) { menuSelected[menuPage] = 1; }
        menuSelected[!menuPage] = menuSelected[menuPage];
        audio_play_sound(sndselect2,0,0)
    } else if keyboard_check_pressed(vk_up) {
        menuSelected[menuPage] -=1;
        if (menuSelected[menuPage] < 1) { menuSelected[menuPage] = menuText[menuPage,0]; }
        menuSelected[!menuPage] = menuSelected[menuPage];
        audio_play_sound(sndselect2,0,0)
    } else if keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right) {
        menuPage = !menuPage;
        audio_play_sound(sndselect,0,0)
    } else if keyboard_check_pressed(global.kb_choose) {
        audio_play_sound(sndchoose,0,0)
        if (menuSelected[menuPage] == 1) { 
            waiting[menuPage,1] = 1
            alarm[1] = 15
        } if (menuSelected[menuPage] == 2) { 
            waiting[menuPage,2] = 1
            alarm[1] = 15
        } if (menuSelected[menuPage] == 3) { 
            waiting[menuPage,3] = 1
            alarm[1] = 15
        } if (menuSelected[menuPage] == 4) { 
            waiting[menuPage,4] = 1
            alarm[1] = 15
        } if (menuSelected[menuPage] == 5) { 
            waiting[menuPage,5] = 1
            alarm[1] = 15
        } if (menuSelected[menuPage] == 6) { 
            waiting[menuPage,6] = 1
            alarm[1] = 15
        } else if (menuSelected[menuPage] == 7) { 
            init_input()
            ini_save_config(0)
        } else if (menuSelected[menuPage] == 8) { 
            ok = 2;
            global.theroom = rmMenu
            instance_create(0,0,objFadeOut)
        }
    } else if keyboard_check_pressed(global.kb_back) {
        audio_play_sound(sndback,0,0)
        ok = 2;
        global.theroom = rmMenu
        instance_create(0,0,objFadeOut)
    }
}

/// Change controls
menuText[0,1] = iff(!waiting[0,1], "Choose: "+key_name(global.kb_choose), "Choose: Waiting...")
menuText[0,2] = iff(!waiting[0,2], "Cancel: "+key_name(global.kb_back), "Cancel: Waiting...")
menuText[0,3] = iff(!waiting[0,3], "Menu: "+key_name(global.kb_enter), "Menu: Waiting...")
menuText[0,4] = iff(!waiting[0,4], "Map: "+key_name(global.kb_map), "Map: Waiting...")
menuText[0,5] = iff(!waiting[0,5], "Select player (left): "+key_name(global.kb_q), "Select player (left): Waiting...")
menuText[0,6] = iff(!waiting[0,6], "Select player (right): "+key_name(global.kb_w), "Select player (right): Waiting...")

menuText[1,1] = iff(!waiting[1,1], "Choose: Button "+string(global.gamepad_choose+1), "Choose: Waiting...")
menuText[1,2] = iff(!waiting[1,2], "Cancel: Button "+string(global.gamepad_back+1), "Cancel: Waiting...")
menuText[1,3] = iff(!waiting[1,3], "Menu: Button "+string(global.gamepad_enter+1), "Menu: Waiting...")
menuText[1,4] = iff(!waiting[1,4], "Map: Button "+string(global.gamepad_map+1), "Map: Waiting...")
menuText[1,5] = iff(!waiting[1,5], "Select player (left): Button "+string(global.gamepad_q+1), "Select player (left): Waiting...")
menuText[1,6] = iff(!waiting[1,6], "Select player (right): Button "+string(global.gamepad_w+1), "Select player (right): Waiting...")

if wait and ok {
    if keyboard_check_pressed(vk_escape) {
        audio_play_sound(sndback,0,0)
        for (var i = 1; i < 7; i++) {
            waiting[0,i] = 0
            waiting[1,i] = 0
        }
        ok = 2
        alarm[1] = 15;
    } else {
        if menuPage == 0 {
            var kb = keyboard_key;
            if keyboard_key != 0 and keyboard_key != vk_left and keyboard_key != vk_right and keyboard_key != vk_down and keyboard_key != vk_up {
                if waiting[0,1] 
                and global.kb_back != kb 
                and global.kb_enter != kb 
                and global.kb_map != kb 
                and global.kb_q != kb 
                and global.kb_w != kb { 
                    global.kb_choose = kb; 
                    waiting[0,1] = 0; 
                    ok = 2
                    alarm[1] = 15;
                    audio_play_sound(sndequip,0,0)
                    ini_save_config(0)
                } else if waiting[0,2] 
                and global.kb_choose != kb 
                and global.kb_enter != kb 
                and global.kb_map != kb 
                and global.kb_q != kb 
                and global.kb_w != kb { 
                    global.kb_back = kb; 
                    waiting[0,2] = 0; 
                    ok = 2
                    alarm[1] = 15;
                    audio_play_sound(sndequip,0,0)
                    ini_save_config(0)
                } else if waiting[0,3] 
                and global.kb_back != kb 
                and global.kb_enter != kb 
                and global.kb_map != kb 
                and global.kb_q != kb 
                and global.kb_w != kb { 
                    global.kb_enter = kb; 
                    waiting[0,3] = 0; 
                    ok = 2
                    alarm[1] = 15;
                    audio_play_sound(sndequip,0,0)
                    ini_save_config(0)
                } else if waiting[0,4] 
                and global.kb_back != kb 
                and global.kb_enter != kb 
                and global.kb_choose != kb 
                and global.kb_q != kb 
                and global.kb_w != kb { 
                    global.kb_map = kb; 
                    waiting[0,4] = 0; 
                    ok = 2
                    alarm[1] = 15;
                    audio_play_sound(sndequip,0,0)
                    ini_save_config(0)
                } else if waiting[0,5] 
                and global.kb_back != kb 
                and global.kb_enter != kb 
                and global.kb_choose != kb 
                and global.kb_map != kb 
                and global.kb_w != kb { 
                    global.kb_q = kb; 
                    waiting[0,5] = 0; 
                    ok = 2
                    alarm[1] = 15;
                    audio_play_sound(sndequip,0,0)
                    ini_save_config(0)
                } else if waiting[0,6] 
                and global.kb_back != kb 
                and global.kb_enter != kb 
                and global.kb_choose != kb 
                and global.kb_q != kb 
                and global.kb_map != kb { 
                    global.kb_w = kb; 
                    waiting[0,6] = 0; 
                    ok = 2
                    alarm[1] = 15;
                    audio_play_sound(sndequip,0,0)
                    ini_save_config(0)
                }
            }
        } else {
            for (var i=0; i<objPersistent.buttons; i++) {
                if joy_button(objPersistent.device,i) {
                    if waiting[1,1] 
                    and global.gamepad_back != i 
                    and global.gamepad_enter != i 
                    and global.gamepad_map != i 
                    and global.gamepad_q != i 
                    and global.gamepad_w != i { 
                        global.gamepad_choose = i; 
                        waiting[1,1] = 0; 
                        ok = 2
                        alarm[1] = 15;
                        audio_play_sound(sndequip,0,0)
                        ini_save_config(0)
                        break;
                    } else if waiting[1,2] 
                    and global.gamepad_choose != i 
                    and global.gamepad_enter != i 
                    and global.gamepad_map != i 
                    and global.gamepad_q != i 
                    and global.gamepad_w != i { 
                        global.gamepad_back = i; 
                        waiting[1,2] = 0; 
                        ok = 2
                        alarm[1] = 15;
                        audio_play_sound(sndequip,0,0)
                        ini_save_config(0)
                        break;
                    } else if waiting[1,3] 
                    and global.gamepad_back != i 
                    and global.gamepad_enter != i 
                    and global.gamepad_map != i 
                    and global.gamepad_q != i 
                    and global.gamepad_w != i { 
                        global.gamepad_enter = i; 
                        waiting[1,3] = 0; 
                        ok = 2
                        alarm[1] = 15;
                        audio_play_sound(sndequip,0,0)
                        ini_save_config(0)
                        break;
                    } else if waiting[1,4] 
                    and global.gamepad_back != i 
                    and global.gamepad_enter != i 
                    and global.gamepad_choose != i 
                    and global.gamepad_q != i 
                    and global.gamepad_w != i { 
                        global.gamepad_map = i; 
                        waiting[1,4] = 0; 
                        ok = 2
                        alarm[1] = 15;
                        audio_play_sound(sndequip,0,0)
                        ini_save_config(0)
                        break;
                    } else if waiting[1,5] 
                    and global.gamepad_back != i 
                    and global.gamepad_enter != i 
                    and global.gamepad_choose != i 
                    and global.gamepad_map != i 
                    and global.gamepad_w != i { 
                        global.gamepad_q = i; 
                        waiting[1,5] = 0; 
                        ok = 2
                        alarm[1] = 15;
                        audio_play_sound(sndequip,0,0)
                        ini_save_config(0)
                        break;
                    } else if waiting[1,6] 
                    and global.gamepad_back != i 
                    and global.gamepad_enter != i 
                    and global.gamepad_choose != i 
                    and global.gamepad_q != i 
                    and global.gamepad_map != i { 
                        global.gamepad_w = i; 
                        waiting[1,6] = 0; 
                        ok = 2
                        alarm[1] = 15;
                        audio_play_sound(sndequip,0,0)
                        ini_save_config(0)
                        break;
                    }
                }
            }
        }
    }
}



