/// @description Keyboard controls
if ok {
    if keyboard_check_pressed(global.kb_back) {
        audio_play_sound(sndback,0,0)
        if mode = 0{
            ok = 0
            global.theroom = rmMenu
            instance_create(0,0,objFadeOut)
        } else if mode = 1 {
            switch global.saveslot {
                case "slot1":
                    cursor_y = _y[1]
                    break;
                case "slot2":
                    cursor_y = _y[2]
                    break;
                case "slot3":
                    cursor_y = _y[3]
                    break;
            }
            cursor_x = _x[1]
            ok = 0
            mode--
            alarm[0] = 1
        } else if mode = 2 {
            cursor_x = _x[1]
            cursor_y = _y[5]
            ok = 0
            mode--
            alarm[0] = 1
        }
    } else if keyboard_check_pressed(global.kb_choose) {
        audio_play_sound(sndchoose,0,0)
        if mode = 0 {
            if cursor_y = _y[1] {
                if game[1] {
                    cursor_y = _y[4]
                    mode = 1
                    ok = 0
                    alarm[0] = 1 
                } else {
                    ok = 0
                    instance_create(0,0,objFlavorSelectorOld)
                }
            } else if cursor_y = _y[2] {
                if game[2] {
                    cursor_y = _y[4]
                    mode = 1
                    ok = 0
                    alarm[0] = 1 
                } else {
                    ok = 0
                    instance_create(0,0,objFlavorSelectorOld)
                }
            } else if cursor_y = _y[3] {
                if game[3] {
                    cursor_y = _y[4]
                    mode = 1
                    ok = 0
                    alarm[0] = 1 
                } else {
                    ok = 0
                    instance_create(0,0,objFlavorSelectorOld)
                }
            }
        } else if mode = 1 {
            if cursor_y = _y[4] {
                ini_load_data(0)
                init_items()                        // Init all the items used in the game.
                init_skill_definitions()                      // Init the skills themselves.
                instance_create(0,0,objFadeOut)
                ok = 0
            } else {
                cursor_x = _x[3]
                cursor_y = _y[5]
                mode = 2
                ok = 0
                alarm[0] = 1 
            }
        } else if mode = 2 {
            if cursor_x = _x[4] {
                file_delete(global.saveslot+".lsd")
                ini_open(global.config_fname)
                ini_section_delete(global.saveslot)
                ini_close()
                switch global.saveslot {
                    case "slot1":
                        cursor_y = _y[1]
                        break;
                    case "slot2":
                        cursor_y = _y[2]
                        break;
                    case "slot3":
                        cursor_y = _y[3]
                        break;
                }
                cursor_x = _x[1]
                ok = 0
                mode = 0
                event_user(0)
                alarm[0] = 1
            } else {
                cursor_x = _x[1]
                cursor_y = _y[5]
                ok = 0
                mode--
                alarm[0] = 1
            }
        }
    } else if keyboard_check_pressed(vk_left) {
        if mode = 2 {
            audio_play_sound(sndselect,0,0)
            if cursor_x = _x[3] {
                cursor_x = _x[4]
            } else {
                cursor_x = _x[3]
            }
        }
    } else if keyboard_check_pressed(vk_up) {
        audio_play_sound(sndselect2,0,0)
        if mode = 0 {
            if cursor_y = _y[1] {
                cursor_y = _y[3]
                global.saveslot = "slot3"
            } else if cursor_y = _y[2] {
                cursor_y = _y[1]
                global.saveslot = "slot1"
            } else if cursor_y = _y[3] {
                cursor_y = _y[2]
                global.saveslot = "slot2"
            }
        } else if mode = 1 {
            if cursor_y = _y[4] {
                cursor_y = _y[5]
            } else {
                cursor_y = _y[4]
            }
        }
    } else if keyboard_check_pressed(vk_right) {
        if mode = 2 {
            audio_play_sound(sndselect,0,0)
            if cursor_x = _x[3] {
                cursor_x = _x[4]
            } else {
                cursor_x = _x[3]
            }
        }
    } else if keyboard_check_pressed(vk_down) {
        audio_play_sound(sndselect2,0,0)
        if mode = 0 {
            if cursor_y = _y[1] {
                cursor_y = _y[2]
                global.saveslot = "slot2"
            } else if cursor_y = _y[2] {
                cursor_y = _y[3]
                global.saveslot = "slot3"
            } else if cursor_y = _y[3] {
                cursor_y = _y[1]
                global.saveslot = "slot1"
            }
        } else if mode = 1 {
            if cursor_y = _y[4] {
                cursor_y = _y[5]
            } else {
                cursor_y = _y[4]
            }
        }
    }
}

cursor_timer +=0.25

if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}

