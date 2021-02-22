/// @description Keyboard controls
if ok {
    if keyboard_check_pressed(global.kb_q) {
        audio_play_sound(sndselect,0,0)    
        switch global.pl_count {
            case 0: 
            case 1:
                cursor_x2 = x1
                global.current_inv = 0
                break;
            case 2:
                if cursor_x2 = x1 { cursor_x2 = x2; global.current_inv = 1 }
                else { cursor_x2 = x1; global.current_inv = 0 }
                break;
            case 3:
                if cursor_x2 = x1 { cursor_x2 = x3; global.current_inv = 2 }
                else if cursor_x2 = x3 { cursor_x2 = x2; global.current_inv = 1 }
                else { cursor_x2 = x1; global.current_inv = 0 }
                break;
            case 4:
                if cursor_x2 = x1 { cursor_x2 = x4; global.current_inv = 3 }
                else if cursor_x2 = x2 { cursor_x2 = x1; global.current_inv = 0 }
                else if cursor_x2 = x3 { cursor_x2 = x2; global.current_inv = 1 }
                else if cursor_x2 = x4 { cursor_x2 = x3; global.current_inv = 2 }
                break;
        }
        event_user(0)
    } else if keyboard_check_pressed(global.kb_w) {
        audio_play_sound(sndselect,0,0)
        switch global.pl_count {
            case 0: 
            case 1:
                cursor_x2 = x1
                global.current_inv = 0
                break;
            case 2:
                if cursor_x2 = x1 { cursor_x2 = x2; global.current_inv = 1 }
                else { cursor_x2 = x1; global.current_inv = 0 }
                break;
            case 3:
                if cursor_x2 = x2 { cursor_x2 = x3; global.current_inv = 2 }
                else if cursor_x2 = x1 { cursor_x2 = x2; global.current_inv = 1 }
                else { cursor_x2 = x1; global.current_inv = 0 }
                break;
            case 4:
                if cursor_x2 = x3 { cursor_x2 = x4; global.current_inv = 3 }
                else if cursor_x2 = x4 { cursor_x2 = x1; global.current_inv = 0 }
                else if cursor_x2 = x1 { cursor_x2 = x2; global.current_inv = 1 }
                else if cursor_x2 = x2 { cursor_x2 = x3; global.current_inv = 2 }
                break;
        }
        event_user(0)
    } else if keyboard_check_pressed(global.kb_back) {
        audio_play_sound(sndback,0,0)
        with objInGameMenu {alarm[0] = 1}
        global.current_inv = 0
        audio_play_sound(sndback,0,0)
        instance_destroy()
    }
}

