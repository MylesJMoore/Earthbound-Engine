/// @description Keyboard controls
if ok {
    if keyboard_check_pressed(vk_left) {
        audio_play_sound(sndselect,0,0)

        if cursor_x = _x[2]
        {
        cursor_x = _x[1]
        }
        else if cursor_x = _x[1]
        {
        cursor_x = _x[2]
        }
    } else if keyboard_check_pressed(vk_right) {
        audio_play_sound(sndselect,0,0)
        if cursor_x = _x[1]
        {
        cursor_x = _x[2]
        }
        else if cursor_x = _x[2]
        {
        cursor_x = _x[1]
        }
    } else if keyboard_check_pressed(vk_down){
        audio_play_sound(sndselect2,0,0)
        if cursor_y = _y[1]
        {
        cursor_y = _y[2]
        }
        else if cursor_y = _y[2]
        {
        cursor_y = _y[3]
        }
        else if cursor_y = _y[3]
        {
        cursor_y = _y[4]
        }
        else if cursor_y = _y[4]
        {
        cursor_y = _y[5]
        }
        else if cursor_y = _y[5]
        {
        cursor_y = _y[6]
        }
        else if cursor_y = _y[6]
        {
        cursor_y = _y[7]
        }
        else if cursor_y = _y[7]
        {
        cursor_y = _y[8]
        }
        else if cursor_y = _y[8]
        {
        cursor_y = _y[9]
        }
        else if cursor_y = _y[9]
        {
        cursor_y = _y[10]
        }
        else if cursor_y = _y[10]
        {
        cursor_y = _y[1]
        }
    } else if keyboard_check_pressed(vk_up) {
        audio_play_sound(sndselect2,0,0)
        if cursor_y = _y[1]
        {
        cursor_y = _y[10]
        }
        else if cursor_y = _y[2]
        {
        cursor_y = _y[1]
        }
        else if cursor_y = _y[3]
        {
        cursor_y = _y[2]
        }
        else if cursor_y = _y[4]
        {
        cursor_y = _y[3]
        }
        else if cursor_y = _y[5]
        {
        cursor_y = _y[4]
        }
        else if cursor_y = _y[6]
        {
        cursor_y = _y[5]
        }
        else if cursor_y = _y[7]
        {
        cursor_y = _y[6]
        }
        else if cursor_y = _y[8]
        {
        cursor_y = _y[7]
        }
        else if cursor_y = _y[9]
        {
        cursor_y = _y[8]
        }
        else if cursor_y = _y[10]
        {
        cursor_y = _y[9]
        }
    } else if keyboard_check_pressed(global.kb_q) {
        audio_play_sound(sndselect,0,0)    
    
        switch global.pl_count {
            case 0: 
            case 1:
                if cursor_x2 = x1 { cursor_x2 = x2; global.current_inv = 4 }
                else { cursor_x2 = x1; global.current_inv = 0 }
                break;
            case 2:
                if cursor_x2 = x1 { cursor_x2 = x3; global.current_inv = 4 }
                else if cursor_x2 = x3 { cursor_x2 = x2; global.current_inv = 1 }
                else { cursor_x2 = x1; global.current_inv = 0 }
                break;
            case 3:
                if cursor_x2 = x1 { cursor_x2 = x4; global.current_inv = 4 }
                else if cursor_x2 = x2 { cursor_x2 = x1; global.current_inv = 0 }
                else if cursor_x2 = x3 { cursor_x2 = x2; global.current_inv = 1 }
                else if cursor_x2 = x4 { cursor_x2 = x3; global.current_inv = 2 }
                break;
            case 4:
                if cursor_x2 = x1 { cursor_x2 = x5; global.current_inv = 4 }
                else if cursor_x2 = x2 { cursor_x2 = x1; global.current_inv = 0 }
                else if cursor_x2 = x3 { cursor_x2 = x2; global.current_inv = 1 }
                else if cursor_x2 = x4 { cursor_x2 = x3; global.current_inv = 2 }
                else if cursor_x2 = x5 { cursor_x2 = x4; global.current_inv = 3 }
                break;
        }
        
        event_user(0)
    } else if keyboard_check_pressed(global.kb_w) {
        audio_play_sound(sndselect,0,0)
        
        switch global.pl_count {
            case 0: 
            case 1:
                if cursor_x2 = x1 { cursor_x2 = x2; global.current_inv = 4 }
                else { cursor_x2 = x1; global.current_inv = 0 }
                break;
            case 2:
                if cursor_x2 = x2 { cursor_x2 = x3; global.current_inv = 4 }
                else if cursor_x2 = x1 { cursor_x2 = x2; global.current_inv = 1 }
                else { cursor_x2 = x1; global.current_inv = 0 }
                break;
            case 3:
                if cursor_x2 = x3 { cursor_x2 = x4; global.current_inv = 4 }
                else if cursor_x2 = x4 { cursor_x2 = x1; global.current_inv = 0 }
                else if cursor_x2 = x1 { cursor_x2 = x2; global.current_inv = 1 }
                else if cursor_x2 = x2 { cursor_x2 = x3; global.current_inv = 2 }
                break;
            case 4:
                if cursor_x2 = x4 { cursor_x2 = x5; global.current_inv = 4 }
                else if cursor_x2 = x5 { cursor_x2 = x1; global.current_inv = 0 }
                else if cursor_x2 = x1 { cursor_x2 = x2; global.current_inv = 1 }
                else if cursor_x2 = x2 { cursor_x2 = x3; global.current_inv = 2 }
                else if cursor_x2 = x3 { cursor_x2 = x4; global.current_inv = 3 }
                break;
        }
        
        event_user(0)
    } else if keyboard_check_pressed(global.kb_choose) {
        if global.current_inv < 4 {
            if !is_undefined(num) and ok and global.pl_count != 0 { //and !global.dead[global.current_inv+1] {
                ok = 0
                audio_play_sound(sndchoose,0,0)
                if !storage_mode and !shop_mode {
                    var a = instance_create(x+125,y+80,objInvUseMenu);
                    a.num = num
                    a.num_val = num_val
                } else if shop_mode {
                    object.item = num
                    object.item2 = num_val
                    object.price = ceil(global.item[num,19]/2)
                    instance_destroy()
                } else if storage_mode {
                    object.item = num
                    add_item_storage(num)
                    del_item_inv(num_val,global.current_inv)
                    //Dealing with equipment
                    if !item_exists(global.current_inv,global.weap_equip[global.current_inv+1]) {
                        global.weap_equip[global.current_inv+1] = 0
                        eqp_boosts(global.current_inv+1)
                    }
                    if !item_exists(global.current_inv,global.body_equip[global.current_inv+1]) {
                        global.body_equip[global.current_inv+1] = 0
                        eqp_boosts(global.current_inv+1)
                    }
                    if !item_exists(global.current_inv,global.arm_equip[global.current_inv+1]) {
                        global.arm_equip[global.current_inv+1] = 0
                        eqp_boosts(global.current_inv+1)
                    }
                    if !item_exists(global.current_inv,global.other_equip[global.current_inv+1]) {
                        global.other_equip[global.current_inv+1] = 0
                        eqp_boosts(global.current_inv+1)
                    }
                    global.current_inv = 0
                    instance_destroy()
                }
            }
        }
    } else if keyboard_check_pressed(global.kb_back) {
        if instance_exists(objInGameMenu) {
            objHealthBar.visible = 1
            objAilmentsBubble.visible = 1
            with objInGameMenu {alarm[0] = 1}
        }
        if storage_mode or shop_mode {
            object.item = 0;
        }
        global.current_inv = 0
        audio_play_sound(sndback,0,0)
        instance_destroy()
    }
}

///Does all the work

if cursor_x = _x[1] and cursor_y = _y[1] { num = inv[1]; num_val = 0; }
if cursor_x = _x[2] and cursor_y = _y[1] { num = inv[2]; num_val = 1; }
if cursor_x = _x[1] and cursor_y = _y[2] { num = inv[3]; num_val = 2; }
if cursor_x = _x[2] and cursor_y = _y[2] { num = inv[4]; num_val = 3; }
if cursor_x = _x[1] and cursor_y = _y[3] { num = inv[5]; num_val = 4; }
if cursor_x = _x[2] and cursor_y = _y[3] { num = inv[6]; num_val = 5; }
if cursor_x = _x[1] and cursor_y = _y[4] { num = inv[7]; num_val = 6; }
if cursor_x = _x[2] and cursor_y = _y[4] { num = inv[8]; num_val = 7; }
if cursor_x = _x[1] and cursor_y = _y[5] { num = inv[9]; num_val = 8; }
if cursor_x = _x[2] and cursor_y = _y[5] { num = inv[10]; num_val = 9; }
if cursor_x = _x[1] and cursor_y = _y[6] { num = inv[11]; num_val = 10; }
if cursor_x = _x[2] and cursor_y = _y[6] { num = inv[12]; num_val = 11; }
if cursor_x = _x[1] and cursor_y = _y[7] { num = inv[13]; num_val = 12; }
if cursor_x = _x[2] and cursor_y = _y[7] { num = inv[14]; num_val = 13; }
if cursor_x = _x[1] and cursor_y = _y[8] { num = inv[15]; num_val = 14; }
if cursor_x = _x[2] and cursor_y = _y[8] { num = inv[16]; num_val = 15; }
if cursor_x = _x[1] and cursor_y = _y[9] { num = inv[17]; num_val = 16; }
if cursor_x = _x[2] and cursor_y = _y[9] { num = inv[18]; num_val = 17; }
if cursor_x = _x[1] and cursor_y = _y[10] { num = inv[19]; num_val = 18; }
if cursor_x = _x[2] and cursor_y = _y[10] { num = inv[20]; num_val = 19; }

x = __view_get( e__VW.XView, 0 )
y = __view_get( e__VW.YView, 0 )

cursor_timer +=0.25

if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}

