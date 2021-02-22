/// @description Keyboard controls
if ok {
    if (keyboard_check_pressed(vk_left)) {
        audio_play_sound(sndselect,0,0)
        if !mode {
            if cursor_x = _x[1] { cursor_x = _x[3] } 
            else if cursor_x = _x[3] { cursor_x = _x[1] }
        } else {
            if cursor_x = _x[2]-3 { cursor_x = _x[1]-3 }
            else if cursor_x = _x[1]-3 { cursor_x = _x[2]-3 }
        }
    } else if (keyboard_check_pressed(vk_right)){
        audio_play_sound(sndselect,0,0)
        if !mode {
            if cursor_x = _x[1] { cursor_x = _x[3] } 
            else if cursor_x = _x[3] { cursor_x = _x[1] }
        } else {
            if cursor_x = _x[1]-3 { cursor_x = _x[2]-3 } 
            else if cursor_x = _x[2]-3 { cursor_x = _x[1]-3 }
        }
    } else if (keyboard_check_pressed(vk_down)){
        audio_play_sound(sndselect2,0,0)
        if mode = 1 {
            if cursor_y = _y[1]+8
            {
            cursor_y = _y[2]+8
            }
            else if cursor_y = _y[2]+8
            {
            cursor_y = _y[3]+8
            }
            else if cursor_y = _y[3]+8
            {
            cursor_y = _y[4]+8
            }
            else if cursor_y = _y[4]+8
            {
            cursor_y = _y[5]+8
            }
            else if cursor_y = _y[5]+8
            {
            cursor_y = _y[6]+8
            }
            else if cursor_y = _y[6]+8
            {
            cursor_y = _y[7]+8
            }
            else if cursor_y = _y[7]+8
            {
            cursor_y = _y[8]+8
            }
            else if cursor_y = _y[8]+8
            {
            cursor_y = _y[9]+8
            }
            else if cursor_y = _y[9]+8
            {
            cursor_y = _y[10]+8
            }
            else if cursor_y = _y[10]+8
            {
            cursor_y = _y[1]+8
            }
        } else {
            if cursor_y = _y[1]+6
            {
            cursor_y = _y[2]+7
            emode = 1
            }
            else if cursor_y = _y[2]+7
            {
            cursor_y = _y[3]+8
            emode = 2
            }
            else if cursor_y = _y[3]+8
            {
            cursor_y = _y[4]+9
            emode = 3
            }
            else if cursor_y = _y[4]+9
            {
            cursor_y = _y[1]+6
            emode = 0
            }
        }
    } else if (keyboard_check_pressed(vk_up)){
        audio_play_sound(sndselect2,0,0)
        if mode = 1 {
            if cursor_y = _y[1]+8
            {
            cursor_y = _y[10]+8
            }
            else if cursor_y = _y[2]+8
            {
            cursor_y = _y[1]+8
            }
            else if cursor_y = _y[3]+8
            {
            cursor_y = _y[2]+8
            }
            else if cursor_y = _y[4]+8
            {
            cursor_y = _y[3]+8
            }
            else if cursor_y = _y[5]+8
            {
            cursor_y = _y[4]+8
            }
            else if cursor_y = _y[6]+8
            {
            cursor_y = _y[5]+8
            }
            else if cursor_y = _y[7]+8
            {
            cursor_y = _y[6]+8
            }
            else if cursor_y = _y[8]+8
            {
            cursor_y = _y[7]+8
            }
            else if cursor_y = _y[9]+8
            {
            cursor_y = _y[8]+8
            }
            else if cursor_y = _y[10]+8
            {
            cursor_y = _y[9]+8
            }
        } else {
            if cursor_y = _y[1]+6
            {
            cursor_y = _y[4]+9
            emode = 3
            }
            else if cursor_y = _y[2]+7
            {
            cursor_y = _y[1]+6
            emode = 0
            }
            else if cursor_y = _y[3]+8
            {
            cursor_y = _y[2]+7
            emode = 1
            }
            else if cursor_y = _y[4]+9
            {
            cursor_y = _y[3]+8
            emode = 2
            }
        }
    } else if (keyboard_check_pressed(global.kb_q)){
        if mode = 0 {
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
        }
    } else if (keyboard_check_pressed(global.kb_w)){
        if mode = 0{
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
        }
    } else if (keyboard_check_pressed(global.kb_choose)){
        if mode = 0 {
            audio_play_sound(sndchoose,0,0)
            if cursor_x != _x[3] {
                ok = 0
                alarm[0] = 1
                mode = 1
                cursor_x  = _x[1]-3
                cursor_y  = _y[1]+8
            } else {
                switch emode {
                    case 0: global.weap_equip[global.current_inv+1] = 0; eqp_boosts(global.current_inv+1); equipment_symbol_check(); break;
                    case 1: global.body_equip[global.current_inv+1] = 0; eqp_boosts(global.current_inv+1); equipment_symbol_check(); break;
                    case 2: global.arm_equip[global.current_inv+1] = 0; eqp_boosts(global.current_inv+1); equipment_symbol_check(); break;
                    case 3: global.other_equip[global.current_inv+1] = 0; eqp_boosts(global.current_inv+1); equipment_symbol_check(); break;
                }
            }
        } else {
            if !is_undefined(num) and global.pl_count != 0 {
                switch emode {
                    case 0:
                        if global.item[num,4] = 1 and (global.item[num,5] = -1 or global.item[num,5] = global.current_inv+1) {
                            global.weap_equip[global.current_inv+1] = global.item[num,0]
                            audio_play_sound(sndequip,0,0)
                            cursor_y = _y[1]+6;
                            event_user(1);
                        }
                        break;
                    case 1:
                        if global.item[num,4] = 2 and (global.item[num,5] = -1 or global.item[num,5] = global.current_inv+1) {
                            global.body_equip[global.current_inv+1] = global.item[num,0]
                            audio_play_sound(sndequip,0,0)
                            cursor_y = _y[2]+7;
                            event_user(1);
                        }
                        break;
                    case 2:
                        if global.item[num,4] = 3 and (global.item[num,5] = -1 or global.item[num,5] = global.current_inv+1) {
                            global.arm_equip[global.current_inv+1] = global.item[num,0]
                            audio_play_sound(sndequip,0,0)
                            cursor_y = _y[3]+8;
                            event_user(1);
                        }
                        break;
                    case 3:
                        if global.item[num,4] = 4 and (global.item[num,5] = -1 or global.item[num,5] = global.current_inv+1) {
                            global.other_equip[global.current_inv+1] = global.item[num,0]
                            audio_play_sound(sndequip,0,0)
                            cursor_y = _y[4]+9;
                            event_user(1);
                        }
                        break;
                }
            }
        }
    } else if (keyboard_check_pressed(global.kb_back)){
        audio_play_sound(sndback,0,0)
        if mode = 0 {
            objHealthBar.visible = 1
            objAilmentsBubble.visible = 1
            global.current_inv = 0
            with objInGameMenu {alarm[0] = 1}
            instance_destroy()
        } else {
            ok = 0
            alarm[0] = 1
            mode = 0
            //emode = 0
            switch emode {
                case 0: cursor_y = _y[1]+6; break;
                case 1: cursor_y = _y[2]+7; break;
                case 2: cursor_y = _y[3]+8; break;
                case 3: cursor_y = _y[4]+9; break;
            }
            cursor_x  = _x[1]
        }
    }
}



cursor_timer +=0.25

if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}

///Does all the work
    if cursor_x = _x[1]-3 and cursor_y = _y[1]+8 { num = inv[1]; num_val = 0; }
    if cursor_x = _x[2]-3 and cursor_y = _y[1]+8 { num = inv[2]; num_val = 1; }
    if cursor_x = _x[1]-3 and cursor_y = _y[2]+8 { num = inv[3]; num_val = 2; }
    if cursor_x = _x[2]-3 and cursor_y = _y[2]+8 { num = inv[4]; num_val = 3; }
    if cursor_x = _x[1]-3 and cursor_y = _y[3]+8 { num = inv[5]; num_val = 4; }
    if cursor_x = _x[2]-3 and cursor_y = _y[3]+8 { num = inv[6]; num_val = 5; }
    if cursor_x = _x[1]-3 and cursor_y = _y[4]+8 { num = inv[7]; num_val = 6; }
    if cursor_x = _x[2]-3 and cursor_y = _y[4]+8 { num = inv[8]; num_val = 7; }
    if cursor_x = _x[1]-3 and cursor_y = _y[5]+8 { num = inv[9]; num_val = 8; }
    if cursor_x = _x[2]-3 and cursor_y = _y[5]+8 { num = inv[10]; num_val = 9; }
    if cursor_x = _x[1]-3 and cursor_y = _y[6]+8 { num = inv[11]; num_val = 10; }
    if cursor_x = _x[2]-3 and cursor_y = _y[6]+8 { num = inv[12]; num_val = 11; }
    if cursor_x = _x[1]-3 and cursor_y = _y[7]+8 { num = inv[13]; num_val = 12; }
    if cursor_x = _x[2]-3 and cursor_y = _y[7]+8 { num = inv[14]; num_val = 13; }
    if cursor_x = _x[1]-3 and cursor_y = _y[8]+8 { num = inv[15]; num_val = 14; }
    if cursor_x = _x[2]-3 and cursor_y = _y[8]+8 { num = inv[16]; num_val = 15; }
    if cursor_x = _x[1]-3 and cursor_y = _y[9]+8 { num = inv[17]; num_val = 16; }
    if cursor_x = _x[2]-3 and cursor_y = _y[9]+8 { num = inv[18]; num_val = 17; }
    if cursor_x = _x[1]-3 and cursor_y = _y[10]+8 { num = inv[19]; num_val = 18; }
    if cursor_x = _x[2]-3 and cursor_y = _y[10]+8 { num = inv[20]; num_val = 19; }
    current_inv1 = global.current_inv+1

