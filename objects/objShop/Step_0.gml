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
        object.happy = bought;
        global.current_inv = 0
        audio_play_sound(sndback,0,0)
        instance_destroy()
    } else if keyboard_check_pressed(global.kb_choose) {
        if num !=0 and global.pl_count != 0 {
            keyboard_clear(global.kb_choose)
            if (item_exists_at_slot(global.current_inv,19)) or (global.money < global.item[num,19]) {
                audio_play_sound(snderror,0,0)
            } else {
                if add_item(num,global.current_inv) != -1 {
                    global.money -= global.item[num,19];
                    audio_play_sound(sndBuy,0,0)
                    bought = 1
                }
            }
        }
    } else if keyboard_check_pressed(vk_up) {
        audio_play_sound(sndselect2,0,0)
        if cursor_y = _y[1] {
            cursor_y = _y[10]
            if (shop_items > 9) { num = global.shop[shop_index,9] } else { num = 0 }
        } else if cursor_y = _y[2] {
            cursor_y = _y[1]
            num = global.shop[shop_index,0]
        }
        else if cursor_y = _y[3]{
            cursor_y = _y[2]
            if (shop_items > 1) { num = global.shop[shop_index,1] } else { num = 0 }
        }else if cursor_y = _y[4]{
            cursor_y = _y[3]
            if (shop_items > 2) { num = global.shop[shop_index,2] } else { num = 0 }
        }else if cursor_y = _y[5]{
            cursor_y = _y[4]
            if (shop_items > 3) { num = global.shop[shop_index,3] } else { num = 0 }
        }else if cursor_y = _y[6]{
            cursor_y = _y[5]
            if (shop_items > 4) { num = global.shop[shop_index,4] } else { num = 0 }
        }else if cursor_y = _y[7]{
            cursor_y = _y[6]
            if (shop_items > 5) { num = global.shop[shop_index,5] } else { num = 0 }
        }else if cursor_y = _y[8]{
            cursor_y = _y[7]
            if (shop_items > 6) { num = global.shop[shop_index,6] } else { num = 0 }
        }else if cursor_y = _y[9]{
            cursor_y = _y[8]
            if (shop_items > 7) { num = global.shop[shop_index,7] } else { num = 0 }
        }else if cursor_y = _y[10]{
            cursor_y = _y[9]
            if (shop_items > 8) { num = global.shop[shop_index,8] } else { num = 0 }
        }
        event_user(0)
    } else if keyboard_check_pressed(vk_down) {
        audio_play_sound(sndselect2,0,0)
        if cursor_y = _y[1]{
            cursor_y = _y[2]
            if (shop_items > 1) { num = global.shop[shop_index,1] } else { num = 0 }
        }else if cursor_y = _y[2]{
            cursor_y = _y[3]
            if (shop_items > 2) { num = global.shop[shop_index,2] } else { num = 0 }
        }else if cursor_y = _y[3]{
            cursor_y = _y[4]
            if (shop_items > 3) { num = global.shop[shop_index,3] } else { num = 0 }
        }else if cursor_y = _y[4]{
            cursor_y = _y[5]
            if (shop_items > 4) { num = global.shop[shop_index,4] } else { num = 0 }
        }else if cursor_y = _y[5]{
            cursor_y = _y[6]
            if (shop_items > 5) { num = global.shop[shop_index,5] } else { num = 0 }
        }else if cursor_y = _y[6]{
            cursor_y = _y[7]
            if (shop_items > 6) { num = global.shop[shop_index,6] } else { num = 0 }
        }else if cursor_y = _y[7]{
            cursor_y = _y[8]
            if (shop_items > 7) { num = global.shop[shop_index,7] } else { num = 0 }
        }else if cursor_y = _y[8]{
            cursor_y = _y[9]
            if (shop_items > 8) { num = global.shop[shop_index,8] } else { num = 0 }
        }else if cursor_y = _y[9] {
            cursor_y = _y[10]
            if (shop_items > 9) { num = global.shop[shop_index,9] } else { num = 0 }
        } else if cursor_y = _y[10] {
            cursor_y = _y[1]
            num = global.shop[shop_index,0]
        }
        event_user(0)
    }
}

cursor_timer +=0.25

if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}



